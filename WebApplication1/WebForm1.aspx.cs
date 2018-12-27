using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
                DateTime localDate = DateTime.Now;
                Label1.Text = string.Format("Local date and time: {0}", localDate.ToString());

                var x = new test_5_class.newclassy();// <ERROR is on this line . I have tried various ways.
                Label2.Text = x.DoSomething();
            

        }
    }
}