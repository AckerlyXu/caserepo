using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormCases.Format
{
    public partial class decimalFormat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            double d = 7.7;
            Label1.Text = MyConverter(d).ToString();
        }

        public double MyConverter(double d)
        {
            string str=  d.ToString();
            string[] strArr = str.Split(new char[] { '.' }, StringSplitOptions.RemoveEmptyEntries);
            string result = strArr[0] + "." + "0" + strArr[1];
            return double.Parse(result);
        }
    }
}