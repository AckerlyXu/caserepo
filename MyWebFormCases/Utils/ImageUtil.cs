using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;

namespace MyWebFormCases.Utils
{
    public class ImageUtil
    {
        public static Bitmap MergerImg(int width, int height,params Bitmap[] maps)
        {
            int i = maps.Length;


            //Create a picture object to display, set the width according to the number of parameters
            Bitmap backgroudImg = new Bitmap(i * width, height);
            Graphics g = Graphics.FromImage(backgroudImg);

            //Clear the canvas, the background is set to white
            g.Clear(System.Drawing.Color.White);

            for (int j = 0; j < i; j++)
            {
                g.DrawImage(maps[j], j * width, 0, maps[j].Width, maps[j].Height);
            }
            g.Dispose();
            return backgroudImg;
        }

    }
}