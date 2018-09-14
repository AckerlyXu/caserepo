using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ExtraControls
{
    public partial class Width : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            WebUserControlOverview userControlOverview;
            for (int i = 0; i < 10; i++)
            {
                userControlOverview = (WebUserControlOverview)LoadControl("~/ExtraControls/WebUserControlOverview.ascx");
                userControlOverview.ID = i.ToString();
            
                panelAnlagen.Controls.Add(userControlOverview);
                //Button btn = new Button();
                //btn.Text = "Button " + i.ToString();
                //panelAnlagen.Controls.Add(btn);
            }
        }
    }
}