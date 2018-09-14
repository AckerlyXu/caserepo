using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          Label label=  this.Form.FindControl("lblState") as Label;

            decimal amount;
            //if the first parameter could be converted to decimal 
            // the method decimal.TryParse return true and the second 
            // parameter will be assigned value
            Object a = "111";
            if (decimal.TryParse(a.ToString(), out amount))
            {
               
                // here use the variable amount
            }
            if (null == label)
            {
               
            }
            else
            {

            }
        }
    }
}