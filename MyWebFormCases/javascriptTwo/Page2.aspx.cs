using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.javascriptTwo
{
    public partial class Page2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
            List<string> replst = new List<string>();
            replst = (List<string>)Context.Items["reportlist"];
            foreach (string m in replst)
            {
                lblReportData.Text += m + "<br/>";
            }


        }
    }
}