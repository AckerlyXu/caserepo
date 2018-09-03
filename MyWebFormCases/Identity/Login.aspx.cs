using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.Identity
{
    public partial class Login : System.Web.UI.Page
    {
        public  string constr = ConfigurationManager.ConnectionStrings["WebFormCases.Models.supplyModelConnectionString"].ConnectionString;

        public  SqlDataReader GetSqlDataReader(string sql, params SqlParameter[] sqlParameters)
        {


            SqlConnection con = new SqlConnection(constr);
            using (SqlCommand com = new SqlCommand(sql, con))
            {
                try
                {
                    con.Open();

                    com.Parameters.AddRange(sqlParameters);

                    return com.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
                }
                catch (Exception)
                {
                    con.Close();
                    con.Dispose();

                    throw;
                }

            }

        }

        public string GetMd5(string source)
        {
            MD5 md5 = MD5.Create();
            Byte[] bys = md5.ComputeHash(Encoding.Default.GetBytes(source));
            StringBuilder builder = new StringBuilder();
            foreach (var item in bys)
            {
                builder.Append(item.ToString("x2"));
            }
            md5.Clear();
            return builder.ToString();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
          // Response.Write("your last visted page is :"+HttpUtility.UrlDecode(Request["returnUrl"])); 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("your last visted page is :" + HttpUtility.UrlDecode(Request["returnUrl"]));
            // string username = userName.Text;
            //string password=GetMd5( passWord.Text);
            // //confirm whether the username or the password is wrong
            // string sql = "select * from users where username=@username and password=@password";
            // SqlParameter[] sqlParameters = new SqlParameter[] {
            //     new SqlParameter("username",System.Data.SqlDbType.NVarChar,50){Value=username},
            //     new SqlParameter("password",System.Data.SqlDbType.NVarChar,200){Value=password}
            // };

            //                                 //the fourth common method
            // using (SqlDataReader reader= GetSqlDataReader(sql, sqlParameters))
            // {

            //     if (reader.HasRows)
            //     {
            //         // the user has been found , save it into session to keep the user state and redirect the user to index.aspx
            //         Models.User user = new Models.User();
            //         reader.Read();
            //        user.Username= reader.GetString(1);
            //        user.Password= reader.GetString(2);
            //         Session["user"] = user;
            //         Response.Redirect("~/Identity/Index.aspx");
            //     }
            //     else
            //     {
            //         // if you don't find the user ,show error message.
            //         errorMsg.Visible = true;
            //     }

            //} 

        }
    }
}