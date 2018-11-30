using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.crossPages
{
    public partial class PageFirst : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["data"] = new string[] { TextBox1.Text, TextBox2.Text, TextBox3.Text };
            Response.Redirect("/crossPages/Page2.aspx?box1=" + TextBox1.Text + "&box2=" + TextBox2.Text + "&box3=" + TextBox3.Text);
          
        }
    }
}