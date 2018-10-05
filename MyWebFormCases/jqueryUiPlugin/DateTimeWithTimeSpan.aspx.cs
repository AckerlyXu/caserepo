using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.jqueryUiPlugin
{
    public partial class DateTimeWithTimeSpan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DateTime dateTime = new DateTime(2018,09,11,12,12,12);

                StartTime.Text = dateTime.ToString("HH:mm");
                dateTime = new DateTime(2018,09,11,15,19,12);

                EndTime.Text= dateTime.ToString("HH:mm");
            }
           
          
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            DateTime Stime;
            DateTime Etime;
            if (DateTime.TryParseExact(EndTime.Text, "HH:mm", CultureInfo.InvariantCulture, DateTimeStyles.None, out Etime) &&
            DateTime.TryParseExact(StartTime.Text, "HH:mm", CultureInfo.InvariantCulture, DateTimeStyles.None, out Stime))
            {
                TotalDurationLabel.Text = (Etime-Stime).TotalMinutes.ToString("00.##");
            }
            int totalMinutesTravelStart = Convert.ToInt32(TotalDurationLabel.Text);
            TimeSpan tsts = TimeSpan.FromMinutes(totalMinutesTravelStart);
                       
            TravelTimeStartDurationHoursLabel.Text = string.Format("{0} : {1}", tsts.Hours, tsts.Minutes);
        }
    }
}