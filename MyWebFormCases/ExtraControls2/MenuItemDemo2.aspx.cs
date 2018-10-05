using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ExtraControls2
{
    public partial class MenuItemDemo2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Menu menu = new Menu();
            menu.Items.Add(new MenuItem("toPage1") { NavigateUrl = "/ExtraControls2/Page1.aspx" });
            menu.Items.Add(new MenuItem("toPage2") { NavigateUrl = "/ExtraControls2/Page2.aspx" });
            Page.Form.Controls.Add(menu);
        }
    }
}