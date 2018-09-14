using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ajaxUpdatePanel
{
    public partial class UpdatePanelWithSession : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            if (Session["mySession"] == null)
            {
                MyAction.SetSession("mySession", "sessionValue");
            }
            else
            {
                Label1.Text = Session["mySession"] as string;
            }
        }
    }


    public class MyAction
    {
        public static void SetSession(string key,Object value)
        {
            HttpContext.Current.Session[key] = value;
        }
    }
}