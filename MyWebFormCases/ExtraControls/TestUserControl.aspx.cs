using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ExtraControls
{
    public partial class TestUserControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
                WebUserControl1 con = Page.LoadControl("~/ExtraControls/WebUserControl1.ascx") as WebUserControl1;
         
           
                Page.Form.Controls.Add(con);
            
           
        }
    }
}