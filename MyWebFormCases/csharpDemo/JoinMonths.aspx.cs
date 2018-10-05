using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.csharpDemo
{
    public partial class JoinMonths : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string[] strs = GetOrganizedString("Oct-18","Feb-18","Jan-18");
        }

        private string[]  GetOrganizedString(params string[] origin)
        {
            List<string> list = new List<string>
            {
                "Team Closed Referrals",
                "",
                ""
            };
          IEnumerable<string> strs=  origin
              .Select(d => DateTime.ParseExact(d, "MMM-dd", CultureInfo.InvariantCulture))  //convert the string to datatime
                .OrderBy(d => d) //  sort the strings by date
                .Select(d => d.ToString("MMM-dd")); // convert the datetime back to string
            foreach (var item in strs)
            {
                // add every element with 4 empty strings to the list
                list.AddRange(new string[] { item, "", "", "", "" });
            }
            return list.ToArray();
        }
    }
}