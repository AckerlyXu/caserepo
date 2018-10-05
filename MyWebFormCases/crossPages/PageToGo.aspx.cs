using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.crossPages
{
    public partial class PageToGo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          ContentPlaceHolder holder=  this.PreviousPage.Form.FindControl("ContentPlaceHolder1") as ContentPlaceHolder;
         TextBox box=   holder.FindControl("TextBox1") as TextBox;
        }
    }
}