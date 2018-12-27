using MyWebFormCases.Utils;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Web;

namespace MyWebFormCases.Services
{
    /// <summary>
    /// Summary description for WriteImage
    /// </summary>
    public class WriteImage : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            //context.Request.Files
            if (context.Request.QueryString["Id"] != null)
            {
         
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand("SELECT image,categoryName FROM [Categories]  WHERE CategoryId = @Id", con);
                    cmd.Parameters.AddWithValue("@Id", Convert.ToInt32(context.Request.QueryString["Id"]));
                    con.Open();
                    SqlDataReader sdr = cmd.ExecuteReader();
                    if (sdr.Read())
                    {
                        //byte[] imageBytes;
                       byte[] bys= ImageUtil.MakeThumbnail((byte[])sdr["image"], 1500, 1500, "Cut");
                        //using (MemoryStream stream = new MemoryStream((byte[])sdr["image"], 0, ((byte[])sdr["image"]).Length))
                        //{
                            
                        //    //using (Image imgage = Image.FromStream(stream))
                        //    //{
                        //    //    int height = 100;
                        //    //    int width = 100;
                        //    //    using (Bitmap bitmap = new Bitmap(imgage, width, height))
                        //    //    {
                        //    //        using (MemoryStream memoryStream = new MemoryStream())
                        //    //        {
                        //    //            bitmap.Save(memoryStream, ImageFormat.Jpeg);
                        //    //            imageBytes = memoryStream.ToArray();
                        //    //        }
                        //    //    }
                        //    //}
                        //}
                        context.Response.Buffer = true;
                        context.Response.Charset = "";
                        context.Response.Cache.SetCacheability(HttpCacheability.NoCache);
                        context.Response.ContentType ="img/jpeg";
                        context.Response.AddHeader("content-disposition", "attachment;filename=" + sdr["categoryName"].ToString());
                        context.Response.BinaryWrite(bys);
                        context.Response.Flush();
                        context.Response.End();
                    }
                    con.Close();
                }
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}