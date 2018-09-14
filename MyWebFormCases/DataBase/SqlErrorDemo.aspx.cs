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
    public partial class SqlErrorDemo : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
             string sql= "Select * from [Products]  ";

            using (SqlConnection sqlConn = new SqlConnection(constr))
            {
                using (SqlCommand sqlCmd = new SqlCommand(sql, sqlConn))
                {
                    sqlConn.Open();
                    sqlCmd.CommandType = CommandType.Text;

                   // sqlCmd.Parameters.AddWithValue("@raiser", System.Web.HttpContext.Current.Session["user_id"]);
                    SqlDataAdapter sqlAd = new SqlDataAdapter(sqlCmd);
                    DataTable sqlDt = new DataTable();

                    sqlAd.Fill(sqlDt);
                    sqlConn.Close();
                List<DataRow> list=    sqlDt.AsEnumerable().ToList();
                  Object obj=  list[0][0];
                    
                }
            }
        }
    }
}