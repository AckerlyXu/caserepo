using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Response.Write("your last visited address:" + Request.UrlReferrer);
                Session["url"] = Request.UrlReferrer.ToString();
            }
          
        }

        protected void Bola(object sender, EventArgs e)
        {
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // ensure that the user's last visited page is in your application
            if (Session["url"].ToString().StartsWith("https://localhost:44328/"))
            {
                Response.Redirect(Session["url"].ToString());
            }
           
        }
    }
}