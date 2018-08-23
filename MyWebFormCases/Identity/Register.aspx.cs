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
    public partial class Register : System.Web.UI.Page
    {
        public string constr = ConfigurationManager.ConnectionStrings["WebFormCases.Models.supplyModelConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public  string GetMd5(string source)
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
      

        public Object ExcuteScalar(string sql, params SqlParameter[] sqlParameters)
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand com = new SqlCommand(sql, con))
                {
                    com.Parameters.AddRange(sqlParameters);
                    con.Open();
                    return com.ExecuteScalar();
                }

            }
        }

        public  int ExcuteNunQuery(string sql, params SqlParameter[] sqlParameters)
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand com = new SqlCommand(sql, con))
                {
                    com.Parameters.AddRange(sqlParameters);
                    con.Open();
                    return com.ExecuteNonQuery();
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //  confirm whether the username has been registered
            string sql = "select count(*) from users where username=@username";
        
          int count= (int)  ExcuteScalar(sql, new SqlParameter("username", System.Data.SqlDbType.NVarChar, 50) { Value = userName.Text });
            if (count == 1)
            {
                // the username has been registered ,show error message

                errorMsg.Visible = true;
                errorMsg.Text = "the username has been registered";
            }
            else
            {
                // the username hasn't been registered , save the username and password into database
                errorMsg.Visible = false;
                //encrypt the password to save it in database, you could use your own way( I use MD5) 
                string dbPass = GetMd5(password.Text);
                string regist = "insert into users (username,password) values(@username,@password)";
                SqlParameter[] sqlParameters = new SqlParameter[] {
                    new SqlParameter("username",System.Data.SqlDbType.NVarChar,50){Value=userName.Text},
                    new SqlParameter("password",System.Data.SqlDbType.NVarChar,200){Value=dbPass}
                };

                try
                {
                    // after registering the new user , redirect to login page.
                    ExcuteNunQuery(regist, sqlParameters);
                    Response.Redirect("~/Identity/Login.aspx");
                }
                catch (Exception)
                {

                    throw;
                }

            }
        }
    }
}