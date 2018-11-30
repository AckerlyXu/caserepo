using MyWebFormCases.Utils;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.FileDemo
{
    public partial class CombineImages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
     
          Bitmap map=  ImageUtil.MergerImg(200,160,new Bitmap(System.Drawing.Image.FromFile(Server.MapPath(@"\images\WingtipToys\boatsail.png"))), new Bitmap(System.Drawing.Image.FromFile(Server.MapPath(@"\images\WingtipToys\boatbig.png"))));
            map.Save(Server.MapPath("/images/combine.png"));
           

        }
    }
}