using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.Format
{
    public partial class FormatDecimal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string d1 = "100.81";
            string d2 = "100.86";
            string d3 = "100.21";
            string d4 = "100.26";
           
            Response.Write("the first version: "+MyFormat(d1,0)+" "+MyFormat(d2, 0) + " " + MyFormat(d3, 0) + " " + MyFormat(d4, 0) + " " +"<br/>"+"the second version: "+ MyFormat(d1, 1) + " " 
                + MyFormat(d2, 1) + " " + MyFormat(d3, 1) + " " + MyFormat(d4, 1) );
        }
        public string MyFormat (string d1,int version)
        {
            if (version == 0)
            {
                return Convert.ToDouble(d1).ToString("0") + ".00";
            }
            if (version == 1)
            {
                return Convert.ToDouble(d1).ToString("0.0") + "0";
            }
            return null;
        }
       
    }
}