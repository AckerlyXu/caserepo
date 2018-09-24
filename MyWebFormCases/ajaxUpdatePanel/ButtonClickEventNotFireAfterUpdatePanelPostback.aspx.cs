using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ajaxUpdatePanel
{
    public partial class ButtonClickEventNotFireAfterUpdatePanelPostback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

            Label1.Text = HiddenField1.Value;
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "   $('#mdp-demo').multiDatesPicker({ dateFormat: \"d-m-y\" });;$(\"#btnAdd\").click(function () { " +

                    " var dates = $('#mdp-demo').multiDatesPicker('getDates');" +
                    " $(\"#HiddenField1\").val(dates);" +
            " })", true);
        }
    }
}