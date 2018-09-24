using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.sqlserver
{
    public partial class sqlparameterAlreadyContainedByAnotherSqlparameterCollection : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["supplyModel"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            string sql = "update Suppliers set city=@city where Sid=@id";
            SqlParameter[] sqlParameters = new SqlParameter[]
            {
                new  SqlParameter("city",SqlDbType.NVarChar,50){Value="Heui"},
                new SqlParameter("id",SqlDbType.Int){Value=6}
            };
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand com = new SqlCommand(sql, con))
                {
                  
                    // here the first SqlParamterCollection owns sqlParameters
                    com.Parameters.AddRange(sqlParameters);
                   
                    con.Open();
                    com.ExecuteNonQuery();
                 //   com.Parameters.Clear();

                }
            }
           
            sqlParameters = new SqlParameter[]
             {
                new  SqlParameter("city",SqlDbType.NVarChar,50){Value="Heui"},
                new SqlParameter("id",SqlDbType.Int){Value=6}
             };
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand com = new SqlCommand(sql, con))
                {
                   // here the second SqlParameterCollection
                    com.Parameters.AddRange(sqlParameters);
                    con.Open();
                    com.ExecuteNonQuery();
                    //com.Parameters.Clear();

                }
            }

        }
    }
}