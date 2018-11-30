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
    public partial class AddMarkOnImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string text = "|-1m   |-3m   |-5m   |-6m   |-10m   |-15m";
                                                                             //write your initial image path
            System.Drawing.Image image = System.Drawing.Image.FromFile(Server.MapPath("/images/WingtipToys/boatsail.png"));
            Bitmap bitmap = new Bitmap(image, image.Width, image.Height);
            System.Drawing.Graphics g = System.Drawing.Graphics.FromImage(bitmap);
            int fontSize = 8;


            //Declare a rectangular field
            RectangleF textArea = new RectangleF();
           
            textArea.Location = new Point(image.Width-fontSize*5, 0);
            textArea.Width = fontSize*5;
            textArea.Height = text.Length * fontSize;

            //Define font
            System.Drawing.Font font = new Font("Microsoft Yahei",fontSize,FontStyle.Regular);
            //font.Bold = true;
            //White brush, drawing text
            Brush whiteBrush = new SolidBrush(System.Drawing.Color.DodgerBlue);
         
            g.DrawString(text, font, whiteBrush, textArea);
            //save the image to the path 
            string path =Server.MapPath("/images/size.png") ;
            bitmap.Save(path, System.Drawing.Imaging.ImageFormat.Png);
            g.Dispose();
            bitmap.Dispose();
            image.Dispose();

        }
    }
}