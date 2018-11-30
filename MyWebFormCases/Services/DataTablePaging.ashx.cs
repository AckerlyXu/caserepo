using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace MyWebFormCases.Services
{
    /// <summary>
    /// Summary description for DataTablePaging
    /// </summary>
   
    public class DataTablePaging : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "application/json";

            int start = Convert.ToInt32(context.Request["iDisplayStart"]); //get the start index
            int pageSize = Convert.ToInt32(context.Request["iDisplayLength"]);//get pagesize
            int pageIndex = start / pageSize + 1;  //compute the pageIndex
            int sEcho = Convert.ToInt32(context.Request["sEcho"]);
            SqlConnection con = new SqlConnection(constr);
            using (SqlCommand com = new SqlCommand("simple_paging", con))
            {
                com.CommandType = CommandType.StoredProcedure;
                    con.Open();

                    com.Parameters.AddWithValue("PageIndex", pageIndex);
                    com.Parameters.AddWithValue("PageSize", pageSize);
                    SqlParameter totalCount = new SqlParameter("RecordCount", SqlDbType.Int) { Direction = ParameterDirection.Output};

                    com.Parameters.Add(totalCount);

                SqlDataReader  reader=   com.ExecuteReader();
                    ArrayList list = new ArrayList();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            string id = reader.GetString(0);
                            string companyName = reader.GetString(1);
                            string contactName = reader.GetString(2);
                            string address = reader.GetString(3);
                            string city = reader.GetString(4);
                            list.Add(new  {customerId= id, companyName, contactName, address, city });
                        }
                    }
                    System.Web.Script.Serialization.JavaScriptSerializer js = new System.Web.Script.Serialization.JavaScriptSerializer();
                    con.Close();
                    con.Dispose();
                // the result should be in the format  {
                //                      iTotalDisplayRecords: your total record count 
                //                     sEcho : sEcho
                //                        iTotalRecords: your total record count
                //                     aaData: the list of your data       it shoud be corresponding to the  column definition of your datetable
                //                                                        // every element of the list should be {customerId= id, companyName, contactName, address, city}
                //}                                                     because the column definition is "aoColumns": [  { "mData": 'customerId'}, /
                //                                                                                                     { "mData": 'companyName'},
                //                                                                                                           { "mData": 'contactName'},              
                //                                                                                                       { "mData": 'address'},
                //                                                                                                         { "mData": 'city'}]

                string json =  js.Serialize(new {iTotalDisplayRecords= int.Parse(totalCount.Value.ToString()), sEcho = sEcho, iTotalRecords = int.Parse(totalCount.Value.ToString()), aaData = list });
                    context.Response.Write(json);
                
               

            }


          
        }
        private static string constr = ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString;
      

       
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}