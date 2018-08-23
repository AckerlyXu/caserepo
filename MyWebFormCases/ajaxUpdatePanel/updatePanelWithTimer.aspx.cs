using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ajaxUpdatePanel
{
    public partial class updatePanelWithTimer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void timer1_Tick(object sender, EventArgs e)
        {
            label1.Text =DateTime.Now.ToString() ;
            //TimeZoneInfo.Local.Id
            //China Standard Time
        }

    }
}