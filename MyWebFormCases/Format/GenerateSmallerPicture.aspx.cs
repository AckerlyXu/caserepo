using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.Format
{
    public partial class GenerateSmallerPicture : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // get the absolute path of the original folder
            string path = Server.MapPath("~/Format/imageTest");
            // get all the absolute pathes  of files in the original folder
           string[] images= Directory.GetFiles(path);
            //get the absolute path of the targeted folder
           string target= Server.MapPath("~/Format/imageTarget");
            //initialize the util class
            ResizePicture resizePicture = new ResizePicture();
            //loop through the  pathes
            foreach (var item in images)
            {
              
            
                // the first argument is the path of original image , 
                // the second argument is the new name of the image (I take the original name)
                //the third argument is the width of the new image
                // the fourth argument is the height of the new image
                //the fifth argument is the mode of generating the new image
                //there are four modes
                // HW    resize the image according the width and height specified ,which may cause distortion
                // H    resize the image according the height
                // W resize the image according the width
                //Cut  resize the image according the width and height specified (not cause distrotion)
                resizePicture.MakeThumbnail(item, target+"/"+item.Substring(item.LastIndexOf("\\")), 300, 300, "Cut");
                // delete the original images
                File.Delete(item);
            }
        }
    }
}