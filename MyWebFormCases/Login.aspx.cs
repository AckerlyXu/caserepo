using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            // convert the master page to the real type of your master page to set the 
            // customized property
           Site1 mas = Master as Site1;
            mas.Flag = true;
           
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Session"] = "content";
        }
    }
}