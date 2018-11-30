using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.crossPages
{
    public partial class Page2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("data from query string:" + Request["box1"] + "|" + Request["box2"] + "|" + Request["box3"] + "<br/>");
            string[] s = Session["data"] as string[];
            Response.Write("data from session:" + s[0] + "|" + s[1] + "|" + s[2]);
        }
    }
}