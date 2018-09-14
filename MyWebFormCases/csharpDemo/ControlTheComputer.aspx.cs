using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Runtime.InteropServices;

namespace MyWebFormCases.csharpDemo
{
    public partial class ControlTheComputer : System.Web.UI.Page
    {



        [DllImport("PowrProf.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
        public static extern bool SetSuspendState(bool hiberate, bool forceCritical, bool disableWakeEvent);


        [DllImport("user32")]
        public static extern bool ExitWindowsEx(uint uFlags, uint dwReason);
        protected void Page_Load(object sender, EventArgs e)
        {
            // log out
            ExitWindowsEx(0, 0);
            // sleep 
           SetSuspendState(false, true, true);
        }
    }
}