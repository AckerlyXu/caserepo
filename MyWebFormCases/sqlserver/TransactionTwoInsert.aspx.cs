using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.sqlserver
{
    public partial class TransactionTwoInsert : System.Web.UI.Page
    { 
            private static string constr = ConfigurationManager.ConnectionStrings["EntityDb"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
     

       
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand com = new SqlCommand("insert into [testData] values (@data)", con))
                {
                   
                    string test = "";
                    for (int i = 0; i < 100; i++)
                    {
                        test += "test";
                    }
                    com.Parameters.AddWithValue("data", test);
                    con.Open();
                    com.ExecuteNonQuery();
                }
            }
        



    }
    }
}