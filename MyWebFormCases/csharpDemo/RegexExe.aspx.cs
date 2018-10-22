using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.csharpDemo
{
    public partial class RegexExe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var input = File.ReadAllText(@"D:\check.txt");
            // Change the pattern to include new line 
            var pattern = @"\bcar\b\s*";
            var matches = Regex.Matches(input, pattern);
            var count = matches.Count;
            string output = string.Empty;
            if (matches.Count > 5)
            {
           //....
            }
        }
    }
}