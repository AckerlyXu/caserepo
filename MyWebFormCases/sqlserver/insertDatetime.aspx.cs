using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.sqlserver
{
    public partial class insertDatetime : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["EntityDb"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                //DateTime time ;


                //    using (SqlCommand com = new SqlCommand("select tDate from myTime", con))
                //    {
                      
                //        con.Open();
                //   time=(DateTime)  com.ExecuteScalar();
                //   time=  time.AddMonths(1);
                 
                //}
                //using (SqlCommand comInsert = new SqlCommand("insert into myTime (tDate) values(@tDate)", con))
                //{
                //    comInsert.Parameters.AddWithValue("tDate", time);
                 
                //    comInsert.ExecuteNonQuery();
                //}

                using (SqlCommand com = new SqlCommand("INSERT INTO [Period] (Date1, Date2) VALUES(@StartDate, @ClosingDate)", con))
                {
                    SqlParameter[] ParamArr = new SqlParameter[2];
                    ParamArr[0] = new SqlParameter("@StartDate", Convert.ToDateTime("2015-09-12"));
                    ParamArr[1] = new SqlParameter("@ClosingDate", Convert.ToDateTime("2016-02-13"));

                    com.Parameters.AddRange(ParamArr);
                   con.Open();
                    com.ExecuteNonQuery();
                    //com.Parameters[0]= new SqlParameter("@StartDate", Convert.ToDateTime("2000-09-12"));
                    com.ExecuteNonQuery();
                }
            }
        }
    }
}