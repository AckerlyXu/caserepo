using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        // define a variable to know whether to check the session
        public bool Flag { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {


            //if (!Flag && Session["Session"] == null)
            //{
            //    Response.Redirect("~/Login.aspx");
            //}


        }
    }
}