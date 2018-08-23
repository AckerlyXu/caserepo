using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.jqueryUiPlugin.Datetime
{
    public partial class MutiselectDatetimeExtensionForJqueryUi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string[] datestrs = HiddenField1.Value.Split(new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries);
            List<DateTime> dateTimes = new List<DateTime>();
            foreach (string item in datestrs)
            {
              dateTimes.Add ( DateTime.Parse(item));
            }
        }
    }
}