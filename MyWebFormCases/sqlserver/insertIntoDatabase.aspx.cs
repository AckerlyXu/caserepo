using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace MyWebFormCases.sqlserver
{
    public partial class insertIntoDatabase : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["supplyModel"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            

            try
            {
                using (SqlConnection conn = new
SqlConnection(constr))
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = conn;
                    cmd.CommandText = "insert into test (name) values(@stickTwistBefore)";
                    cmd.Parameters.Add("@stickTwistBefore",
                    SqlDbType.NVarChar).Value = TextBox1.Text;
                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                Response.Write("SQL Error: " + ex.Message.ToString() + "Var: "  + "StrVal: " );
            }
        }
    }
}