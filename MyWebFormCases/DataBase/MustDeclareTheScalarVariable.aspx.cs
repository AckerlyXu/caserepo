using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.DataBase
{
    public partial class MustDeclareTheScalarVariable : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("CategoryID", typeof(Int32));
            dt.Columns.Add("SupplierID", typeof(Int32));
            DataRow row = dt.NewRow();
            row["CategoryID"] = 1;
            row["SupplierID"] = 1;
            dt.Rows.Add(row);

            row = dt.NewRow();
            row["CategoryID"] = 1;
            dt.Rows.Add(row);
            row = dt.NewRow();
            row["SupplierID"] = 1;
            dt.Rows.Add(row);

            row = dt.NewRow();
            dt.Rows.Add(row);

            string strQuery;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                SqlConnection con = new SqlConnection(constr);

                SqlCommand cmd = new SqlCommand();
                strQuery = "Select * from [Products] where ";
                if (dt.Rows[i]["CategoryID"] != DBNull.Value)
                {
                    strQuery = strQuery + "CategoryID = @CategoryID and ";
                    cmd.Parameters.AddWithValue("CategoryID", Convert.ToInt32(dt.Rows[i]["CategoryID"]));
                }
                if (dt.Rows[i]["SupplierID"] != DBNull.Value)
                {
                    strQuery = strQuery + "SupplierID = @SupplierID and ";
                    cmd.Parameters.AddWithValue("SupplierID", dt.Rows[i]["SupplierID"]);
                }
                if(strQuery.LastIndexOf(" and ") != -1)
                {
                    strQuery = strQuery.Remove(strQuery.LastIndexOf(" and "));
                }
                else
                {
                    strQuery = strQuery.Remove(strQuery.LastIndexOf("where"));
                }
                
            
                cmd.CommandType = CommandType.Text;
               // cmd = new SqlCommand(strQuery, con)
                using (cmd)
                {
                    
                    cmd.CommandText = strQuery;
                    cmd.Connection = con;
                    SqlDataAdapter ad = new SqlDataAdapter(cmd);
                    DataTable dt1 = new DataTable();
                    ad.Fill(dt1);

                }




            }
        }
    }
}