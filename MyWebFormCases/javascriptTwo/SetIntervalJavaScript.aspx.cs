using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.javascriptTwo
{
    public partial class SetIntervalJavaScript : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Thread.Sleep(1000);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "change", "action()", true);
        }
    }
}