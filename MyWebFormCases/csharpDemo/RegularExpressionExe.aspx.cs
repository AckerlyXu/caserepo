using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.csharpDemo
{
    public partial class RegularExpressionExe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write(IsDecimalRange("1111.1"));
        }

        public  bool IsDecimalRange(string input)
        {
            return Regex.IsMatch(input, @"^[1-9]\d{0,2}(\.\d+)?$|^0(\.\d+)?$");
        }
    }
}