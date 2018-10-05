using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.sqlserver
{
    public partial class sqlServerInsertedValue : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["supplyModel"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand com = new SqlCommand("insert into suppliers  (name,city) output inserted.SID values(@name, @city)", con))
                {
                    com.Parameters.AddWithValue("name", "name");
                    com.Parameters.AddWithValue("city", "city");
                    con.Open();
                    int id=(int) com.ExecuteScalar();
                    Response.Write(id);
                }

            }
        }
    }
}