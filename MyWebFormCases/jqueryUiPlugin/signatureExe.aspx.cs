using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.jqueryUiPlugin
{
    public partial class signatureExe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private static string constr = ConfigurationManager.ConnectionStrings["WingtipToysConnectionString2"].ConnectionString;




        protected void Button1_Click(object sender, EventArgs e)
        {
            string base64 = this.HiddenField1.Value.Substring(22);//get the base64 string,it countains the string representing the image
            byte[] bytes = Convert.FromBase64String(base64);//convert it into byte
            string fileName = DateTime.Now.ToString("dd-MM-yy-hh-mm-ss") + ".jpg"; // give the image a name
            File.WriteAllBytes(Server.MapPath("/images/WingtipToys/" + fileName), bytes);//save the image
           

            using (SqlConnection con = new SqlConnection(constr))
            {                                                               //save the path of the image
                using (SqlCommand com = new SqlCommand("insert into Products (ProductName,ImagePath) values(@pro,@path)", con))
                {
                    com.Parameters.AddWithValue("pro", TextBox1.Text);
                    com.Parameters.AddWithValue("path", fileName);
                    con.Open();
                    com.ExecuteNonQuery();
                }
            }
        }
      
    }
}