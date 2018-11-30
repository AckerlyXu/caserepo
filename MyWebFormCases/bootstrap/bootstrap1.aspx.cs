using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.bootstrap
{
    public partial class bootstrap1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var input = 68;
            var hours = input / 60;
            var mins = input % 60;
            DateTime dateTime = new DateTime(2018,11,9,0,0,0);
    
 
           dateTime= dateTime.AddSeconds(8);
           dateTime= dateTime.AddMinutes(1);
            Response.Write(dateTime.ToString("mm:ss"));

            //var timespan = new TimeSpan(hours, mins, 0);
      
        }
    }
}