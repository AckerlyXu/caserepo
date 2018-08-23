using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.DropDownListDemo
{
    public partial class DisableDropDownList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlUploader_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlUploader.Enabled = false;
        }
    }
}