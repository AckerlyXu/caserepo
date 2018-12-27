using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.FileDemo
{
    public partial class UploadImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          

           
        }

        protected string ImgToBase64String(string Imagefilename)
        {
           
            
                Bitmap bmp = new Bitmap(Imagefilename);

                MemoryStream ms = new MemoryStream();
            bmp.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg);

            byte[] arr = new byte[ms.Length];
                ms.Position = 0;
                ms.Read(arr, 0, (int)ms.Length);
                ms.Close();
                return Convert.ToBase64String(arr);
            
           
        }

        private static string constr = ConfigurationManager.ConnectionStrings["WingtipToysConnectionString2"].ConnectionString;

           
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.PostedFile.SaveAs(Server.MapPath("/images/WingtipToys/"+FileUpload1.PostedFile.FileName));

            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand com = new SqlCommand("insert into Products (ProductName,ImagePath) values(@pro,@path)", con))
                {
                    com.Parameters.AddWithValue("pro", TextBox2.Text);
                    com.Parameters.AddWithValue("path", FileUpload1.PostedFile.FileName);
                    con.Open();
                    com.ExecuteNonQuery();
                }
            }
        }
    }
}