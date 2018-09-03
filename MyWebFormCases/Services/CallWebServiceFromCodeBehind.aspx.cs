using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.Services
{
    public partial class CallWebServiceFromCodeBehind : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         

        }

        [WebMethod]
        public static string TestFunc1()
        {
            Thread.Sleep(301000);
            return "This is the returns of behind code function one"+DateTime.Now.ToString("T");
        }
        [WebMethod]
        public static string TestFunc2(string str)
        {
            Thread.Sleep(2000);
            return "This is the returns of behind code function two!You give me the string :" + str+ DateTime.Now.ToString("T");
        }
    }
}