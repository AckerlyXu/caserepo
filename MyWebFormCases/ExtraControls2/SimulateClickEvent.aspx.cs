using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ExtraControls2
{
    public partial class SimulateClickEvent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "Click", "temporaryButtonClick()", true);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        protected string PostBack()
        {
            return this.ClientScript.GetPostBackEventReference(this.btnTemporaryButton, "");
        }
    }
}