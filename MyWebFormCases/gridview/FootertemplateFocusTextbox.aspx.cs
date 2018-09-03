using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.gridview
{
    public partial class FootertemplateFocusTextbox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList L1 = (DropDownList)sender;
            GridViewRow row = (GridViewRow)L1.NamingContainer;
            TextBox T3 = (TextBox)row.FindControl("TextBox2");
            T3.Focus();
            Label1.Text = "ki";
            UpdatePanel1.Update();

        }
    }
}