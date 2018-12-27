using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.jqueryUiPlugin
{
    public partial class target : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            img.Src = Request.QueryString["img"];
        }
    }
}