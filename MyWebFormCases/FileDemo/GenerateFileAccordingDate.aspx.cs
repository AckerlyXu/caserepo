using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.FileDemo
{
    public partial class GenerateFileAccordingDate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            InsertLog(DateTime.Now.ToString());
        }


        public static void InsertLog(string row)
        {
            if (!Directory.Exists(HttpContext.Current.Request.MapPath("/LogFileDir2"))){
                Directory.CreateDirectory(HttpContext.Current.Request.MapPath("/LogFileDir2"));
            }
            if (!Directory.Exists(HttpContext.Current.Request.MapPath("/LogFileDir2/" + DateTime.Now.Month)))
            {
                Directory.CreateDirectory(HttpContext.Current.Request.MapPath("/LogFileDir2/" + DateTime.Now.Month));
            }
            string fullPath = HttpContext.Current.Request.MapPath("/LogFileDir2/") + DateTime.Now.Month + "/" + DateTime.Now.Day + ".txt";
            
            using (FileStream stream = File.Create(fullPath))
            {
                Byte[] bys = Encoding.UTF8.GetBytes(row);
                stream.Write(bys, 0, bys.Length);
                
            }
        }
    }
}