using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.javascriptTwo
{
    public partial class TimerShouldWorkAfterPostBack : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
           
                if (null != Session["loginTime"])
                {
                    // get data from session
                    var loginTime = Convert.ToDateTime(Session["loginTime"]);
                    //pass the minute after which to alert warning         
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "myScript", "alertWarning(" + (DateTime.Now - loginTime).Seconds % 5 + ")", true);
                }

            
               
                
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //save the loginTime to session
            Session["loginTime"] = DateTime.Now;
            // register script
            ScriptManager.RegisterStartupScript(this, this.GetType(), "myScript", "alertWarning(5)", true);

        }
    }
}