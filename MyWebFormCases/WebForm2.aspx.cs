using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        private static TraceSwitch logSwitch = new TraceSwitch("appTraceSwitch",
    "This is your logLevelSwitch in the config file");
        protected void Page_Load(object sender, EventArgs e)
        {
            //TraceSwitch ts = (TraceSwitch)Application["appTraceSwitch"];
            //   TraceLevel level = ts.Level;
   
            System.Diagnostics.Trace.WriteLineIf(logSwitch.Level>=TraceLevel.Off,"messagemessagemessagemessagemessagemessagevmessagemessagemessagemessagemessagev", "category");
            System.Diagnostics.Trace.WriteLine("categorycategorycategorycategorycat", "name");
            Response.Write(logSwitch.DisplayName + logSwitch.Level.ToString());
        }
    }
}