using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ExtraControls
{
    public partial class CalendarTextIntoDatabase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
          
         

        }

        private static string constr = ConfigurationManager.ConnectionStrings["EntityExeConnectionString"].ConnectionString;
        protected void Button2_Click(object sender, EventArgs e)
        {
            string sdt =  tbFromDate.Text;
            string sdt1 = string.Format("{0:MM/dd/yyyy}", sdt);
            DateTime time = DateTime.ParseExact(sdt, "MM/dd/yyyy hh:mm:ss",
                  System.Globalization.CultureInfo.InvariantCulture);
                        sdt1=  string.Format("{0:MM/dd/yyyy}", time);                ;
            string sql = "insert into mytime values(@t1,@t2)";
            using (SqlConnection conn = new SqlConnection(constr))
            {
                // instantiate the command object to fire            
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    conn.Open();
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@t1", time);
                    cmd.Parameters.AddWithValue("@t2", time);
                    cmd.ExecuteNonQuery();             
                   
                }
            }

        }
    }
}