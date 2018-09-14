using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases
{
    public partial class RedirectTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Clear();
                                       //add filename
            Response.AddHeader("content-disposition", "attachment;filename=GridViewImage.txt")
                ;
            //write your own content
            Response.Write("hellow");
            Response.Charset = "";
           
            Response.End();
        }
    }
}