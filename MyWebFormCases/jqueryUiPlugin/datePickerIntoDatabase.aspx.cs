using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.jqueryUiPlugin
{
    public partial class datePickerIntoDatabase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          Response.Write(  System.Globalization.CultureInfo.InvariantCulture.Name+"<br/>");
            Response.Write(System.Globalization.CultureInfo.InvariantCulture.DateTimeFormat.LongDatePattern);
        }
    }
}