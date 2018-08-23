using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ExtraControls
{
    public partial class RepeaterWithCalendar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private DateTime _dtMonth;
        private DateTime _selectedDate;
        private bool _specialDaySelected = true;
        private int _currentBindingMonth;
        protected void repMonths_OnInit(object sender, EventArgs e)
        {
            if (!DateTime.TryParse(Request.QueryString["CalDate"], out _selectedDate))
            {
                _specialDaySelected = false;
                int selectedMonth, selectedYear;
                int.TryParse(Request.QueryString["CalYear"], out selectedYear);
                int.TryParse(Request.QueryString["CalMonth"], out selectedMonth);

                if (selectedYear <= 0) selectedYear = DateTime.Now.Year;
                if (selectedMonth < 1) selectedMonth = DateTime.Now.Month;
                else if (selectedMonth > 12) selectedMonth = 12;

                _selectedDate = new DateTime(selectedYear, selectedMonth, 1);
            }

            litSelectedYear.Text = _selectedDate.Year.ToString();


            int month = System.DateTime.Now.Month;

            List<int> months = new List<int>();
            months.Add(month);
            for (int i = 0; i < 11; i++)
            {

                if (month == 12)
                {
                    month = 1;
                    months.Add(month);
                }
                else
                {
                    months.Add(month + 1);
                    month++;
                }
            }

            repMonths.DataSource = months.ToArray();
            repMonths.DataBind();
        }

        protected void repMonths_OnItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Repeater repDays = (Repeater)e.Item.FindControl("repDays");
                HyperLink hylMonth = (HyperLink)e.Item.FindControl("hylMonth");
                _currentBindingMonth = (int)e.Item.DataItem;
                //the first day of the month
                if (_currentBindingMonth < DateTime.Now.Month)
                {
                    _dtMonth = new DateTime(DateTime.Now.Year + 1, _currentBindingMonth, 1);
                }
                else
                {
                    _dtMonth = new DateTime(DateTime.Now.Year, _currentBindingMonth, 1);
                }



               

                if (_dtMonth.Month < DateTime.Now.Month)
                {
                    hylMonth.Text = _dtMonth.ToString("MMM") + "<br/>" + (DateTime.Now.Year + 1);
                }
                else
                {

                    hylMonth.Text = _dtMonth.ToString("MMM") + "<br/>" + DateTime.Now.Year;



                }
                if (_dtMonth.Month < DateTime.Now.Month)
                {
                    hylMonth.NavigateUrl = string.Format("{0}?CalMonth={1}&CalYear={2}", Request.Path, _currentBindingMonth, DateTime.Now.Year + 1);
                }
                else
                {
                    hylMonth.NavigateUrl = string.Format("{0}?CalMonth={1}&CalYear={2}", Request.Path, _currentBindingMonth, DateTime.Now.Year);
                }


                if (_currentBindingMonth == _selectedDate.Month) hylMonth.Attributes.Add("class", "selected");

                if (_dtMonth.DayOfWeek != DayOfWeek.Monday)
                {
                    int daysToSubtract = -(int)_dtMonth.DayOfWeek;

                    if (_dtMonth.DayOfWeek == DayOfWeek.Sunday) daysToSubtract = -7; // Special case. US weeks start with sunday, thus the enum DayOfWeek.Sunday = 0.

                    _dtMonth = _dtMonth.AddDays(daysToSubtract + 1);
                }

                DateTime[] dates = new DateTime[37];
                for (int i = 0; i < 37; i++)
                {
                    dates[i] = _dtMonth;
                    _dtMonth = _dtMonth.AddDays(1);
                }

                repDays.DataSource = dates;
                repDays.DataBind();
            }
        }

        protected void repDays_OnItemDataBound(object sender, RepeaterItemEventArgs e)
        {

            int selectedYear;
            int.TryParse(Request.QueryString["CalYear"], out selectedYear);
            if (selectedYear <= 0)
            {
                selectedYear = DateTime.Now.Year;
            }
            DateTime startDateTime = new DateTime(selectedYear, _currentBindingMonth, 1);



            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                DateTime date = (DateTime)e.Item.DataItem;
                //if (date.Month < DateTime.Now.Month && date.Year == DateTime.Now.Year)
                //{
                //    date = date.AddYears(1);

                //}
                //if (date.Month >= DateTime.Now.Month && date.Year > DateTime.Now.Year)
                //{
                //    date = date.AddYears(-1);
                //}
                Literal litDay = (Literal)e.Item.FindControl("litDay");
                HtmlTableCell tdDay = (HtmlTableCell)e.Item.FindControl("tdDay");


                if (date.DayOfWeek == DayOfWeek.Sunday)
                    tdDay.Attributes.Add("class", "weekend");



                if (_currentBindingMonth == date.Month)
                {
                    litDay.Text = string.Format("<a href=\"{0}?CalDate={2}-{3}-{1}\"{4}>{3}</a>", Request.Path, date.Year, date.Month, date.Day.ToString("D2"), (_specialDaySelected && date.Equals(_selectedDate)) ? " class=\"selected\"" : string.Empty);
                }
                changeColor(litDay, date);

                if (date.Month != _currentBindingMonth)
                {
                    litDay.Text = "";
                }



                // Clear ID's
                tdDay.ID = string.Empty;
            }
        }
        public List<string> FetchFromDB()
        {
            List<string> list = new List<string>();

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WebFormCases.Models.supplyModelConnectionString"].ConnectionString);
            conn.Open();

            SqlCommand cmdd = new SqlCommand("SELECT [booking_date] FROM [Table_1]", conn);
            SqlDataReader sdr = cmdd.ExecuteReader();

            while (sdr.Read())
            {

                list.Add(sdr.GetValue(0).ToString());

            }
            conn.Close();
            conn.Dispose();
            return list;


        }
        public void changeColor(Literal literal, DateTime date)
        {
            List<string> list = FetchFromDB();
            for (int i = 0; i < list.Count; i++)
            {
                if (Convert.ToDateTime(list[i]).ToString("dd.MM.yyyy") == date.ToString("dd.MM.yyyy"))
                {
                    literal.Text = string.Format("<div style='height:50px; vertical-align:middle;display: table-cell; font-weight: bold; Width:38px; background-color: Red'>{0}</div>", literal.Text);
                    return;
                }
            }
        }

        public string GetDayName(int dayInWeek)
        {
            switch (dayInWeek)
            {
                case 1: return "Mon";
                case 2: return "Tue";
                case 3: return "Wed";
                case 4: return "Thu";
                case 5: return "Fri";
                case 6: return "Sat";
                case 7: return "Sun";
            }

            return "God only made seven days in a week.";
        }
    }
}