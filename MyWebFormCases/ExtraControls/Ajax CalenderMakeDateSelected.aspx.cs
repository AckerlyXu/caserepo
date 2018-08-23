using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ExtraControls
{
    public partial class Ajax_CalenderMakeDateSelected : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string date = "05 - Apr - 2012";
            //            05 - Apr - 2012

            //16 - Apr - 2012

            //20 - Apr - 2012
            DateTime dt = DateTime.ParseExact(date, "dd - MMM - yyyy", System.Globalization.CultureInfo.CurrentCulture);
            CalendarExtender1.SelectedDate = dt;
           
        }
    }
}