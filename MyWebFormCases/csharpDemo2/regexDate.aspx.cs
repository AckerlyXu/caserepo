using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.csharpDemo2
{
    public partial class regexDate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string pattern = @"DOB\:\s+\d{1,2}/\d{1,2}/\d{1,4}";
            //\d{1-2}\/\d{1-2}\/\d{4}
            Regex gex = new Regex(pattern, RegexOptions.IgnoreCase);
            string test = "DoB:    1/03/2018  432" +
                "  Dob:      1/03/2018  43" +
                "dOb:   1/03/2018  43";
      MatchCollection match=  gex.Matches(test);
            Response.Write(match[0]);
            foreach (var item in match)
            {
              Response.Write(  item.ToString());
            }
         
        }
    }
}