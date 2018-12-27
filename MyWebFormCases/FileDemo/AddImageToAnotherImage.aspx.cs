using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.FileDemo
{
    public partial class AddImageToAnotherImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public class HovercWarter

        {

            public static System.Drawing.Image AddTextToImg(System.Drawing.Image image, System.Drawing.Image innerImage)

            {

                Bitmap bitmap = new Bitmap(image, image.Width, image.Height);

                Graphics g = Graphics.FromImage(bitmap);
                
                g.DrawImage(innerImage, new Point(0, 0));

                MemoryStream ms = new MemoryStream();

                //保存为Jpg类型

                bitmap.Save(ms, ImageFormat.Jpeg);

                System.Drawing.Image h_hovercImg = System.Drawing.Image.FromStream(ms);

                g.Dispose();

                bitmap.Dispose();

                return h_hovercImg;

            }
        }
    }
}