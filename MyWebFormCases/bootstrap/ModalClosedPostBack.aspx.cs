using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.bootstrap
{
    public partial class ModalClosedPostBack : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlbrands_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlbrands.SelectedIndex > 0)
            {
                btnSearchBr.Enabled = true;
                labelMessage.Text = "";
            }
            else
            {
                btnSearchBr.Enabled = false;
                labelMessage.Text = "Please select the brand!";
            }

        }

        protected void btnSearchBr_Click(object sender, EventArgs e)
        {

        }
    }
}