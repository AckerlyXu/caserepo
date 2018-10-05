using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.Format
{
    public partial class GetWeekDayNameDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime time = DateTime.Now;
            DayOfWeek dayOfWeek = time.DayOfWeek;
            Response.Write(dayOfWeek.ToString());
            Response.Write(System.Globalization.CultureInfo.CurrentCulture.DateTimeFormat.DayNames[(int)time.DayOfWeek]);
            Response.Write(System.Globalization.CultureInfo.CurrentCulture.DateTimeFormat.MonthNames[time.Month]);
            string path = @"\\order\archive\W20181001.PDF";

        //  Response.Write( File.ReadAllText(path, Encoding.UTF8));
        }
    }
}