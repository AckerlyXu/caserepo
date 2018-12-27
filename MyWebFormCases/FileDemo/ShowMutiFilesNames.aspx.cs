using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.FileDemo
{
    public partial class ShowMutiFilesNames : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
         
            foreach (HttpPostedFile item in Fileupload1.PostedFiles)
            {
                Response.Write(item.FileName);
            }
        }
    }
}