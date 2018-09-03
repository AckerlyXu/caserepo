using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.FileDemo
{
    public partial class CutPictures : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {

             //save the image
                string file = Guid.NewGuid().ToString() + ".jpg";
                string path = Request.MapPath("~/FileDemo/") + file;
                FileUpload1.SaveAs(path);
                int x = int.Parse(TextBox1.Text);
                    int y = int.Parse(TextBox2.Text);
                    int w = int.Parse(TextBox3.Text);
                    int h = int.Parse(TextBox4.Text);

                
                    using (Bitmap map = new Bitmap(w, h))
                    {
                        using (Graphics g = Graphics.FromImage(map))
                        {
                            using (System.Drawing.Image img = System.Drawing.Image.FromFile(path))
                            {
                                                     
                                g.DrawImage(img, new Rectangle(0, 0, w, h),  //specify the position and size of the new image
                                    new Rectangle(x, y, w, h),  //specify where to cut and how much to cut the original image
                                    GraphicsUnit.Pixel);

                            //save the image which has been cut
                                string fileName = Guid.NewGuid().ToString() + ".jpg";
                                map.Save(Request.MapPath("~/FileDemo/") + fileName, System.Drawing.Imaging.ImageFormat.Jpeg);

                            //show the image which has been cut
                                Image1.ImageUrl = "~/FileDemo/" + fileName;

                            }

                        }


                    }
                
    }
        }
    }

}