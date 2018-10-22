using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ExtraControls2
{
    public partial class Page1 : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label label = new Label();
            label.Text = "leae";
            label.ID = "flag1";
            this.Form.Controls.Add(label);
        }
    }
}