using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        public event EventHandler ButtonClick;

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void gotoAnother_Click(object sender, EventArgs e)
        {
            ButtonClick?.Invoke(this, e);
        }
    }
}