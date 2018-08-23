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
    public partial class LabelIWithStored : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                // name of your procedure
                string sql = "count_customer_by";
                using (SqlCommand com = new SqlCommand(sql, con))
                {
                    com.CommandType = CommandType.StoredProcedure;
                    SqlParameter[] sqlParameters = new SqlParameter[]
                    {
                        // the first parameter is the variable name of your procedure , 
                        // the second parameter is  type of your variable ,
                        // value is the value of your stored precedure's parameter
                        new SqlParameter("customerId",SqlDbType.NVarChar,5){Value="a"}
                    };
                    com.Parameters.AddRange(sqlParameters);
                    con.Open();
                   int count=(int) com.ExecuteScalar();
                    Label1.Text ="the count of customers whose name start with a is: " + count;
                }

            }
           

        }
      
    }
}