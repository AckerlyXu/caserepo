using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyWebFormCases
{
    public class BasePage : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            if (Session["Session"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
        }
    }
}