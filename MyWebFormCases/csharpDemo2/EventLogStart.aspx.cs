using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.csharpDemo2
{
    public partial class EventLogStart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //EventLog en = new EventLog("Application");
            //en.Source = "ASP.NET 4.0.30319.0";
            //en.WriteEntry("hello my entry");
            //EventLog.WriteEntry("ASP.NET 4.0.30319.0", "hello my entry");
         Response.Write(    decimal.Parse("7,89,45,6123.12"));
        }
    }
}