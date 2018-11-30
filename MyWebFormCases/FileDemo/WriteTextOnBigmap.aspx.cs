using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.FileDemo
{
    public partial class WriteTextOnBigmap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Bitmap map = new Bitmap(80, 50); //generate an image in memory
            
            using (Graphics g = Graphics.FromImage(map)) 
            {
                g.Clear(Color.White);      //draw background
                g.DrawImage(map, 0, 0, 80, 50);
                using (Font f = new Font("Times New Roman", 20))
                {
                    using (Brush b = new SolidBrush(Color.DarkBlue)) //generate a brush
                    {
                        string addText = "detail";
                        g.DrawString(addText, f, b, 0, 0);  //draw string on the image
                    }
                }
            }
            string fontpath = Server.MapPath(@"/FileDemo/FontMark.bmp");
            map.Save(fontpath, System.Drawing.Imaging.ImageFormat.Bmp); // save the image
            //this.image_Font.ImageUrl = @"~/image/FontMark.bmp";
        }
    }
}