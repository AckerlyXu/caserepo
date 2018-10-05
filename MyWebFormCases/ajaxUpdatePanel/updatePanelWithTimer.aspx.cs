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
        protected void ErrorProcessClick_Handler(Object sender, EventArgs e)
        {
            // This handler demonstrates an error condition. In this example
            // the server error gets intercepted on the client And an alert Is shown.
            Exception exc = new ArgumentException();
            exc.Data["GUID"] = Guid.NewGuid().ToString();
            throw exc;
        }
        protected void SuccessProcessClick_Handler(Object sender, EventArgs e)
        {
            // This handler demonstrates no server side exception.
           
            //UpdatePanelMessage.Text = "The asynchronous postback completed successfully.";
        }

        protected void ScriptManager1_AsyncPostBackError(Object sender, AsyncPostBackErrorEventArgs e)
        {
            if(e.Exception.Data["GUID"] != null)
            {
                manager.AsyncPostBackErrorMessage = e.Exception.Message +
                    " When reporting this error use the following ID: " +
                    e.Exception.Data["GUID"].ToString();
            }
            else
            {
               manager.AsyncPostBackErrorMessage =
                    "The server could not process the request.";
            }
        }
    }
}