using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.Format
{
    public partial class TimeZoneConvert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime hwTime = new DateTime(2007, 02, 01, 08, 00, 00);
        

            try
            {
                var serverTime = DateTime.Now;
               
            
               
                var targetZone = TimeZoneInfo.FindSystemTimeZoneById("Hawaiian Standard Time");
             
               // DateTime localTime = TimeZoneInfo.ConvertTime(serverTime, serverZone, localZone);
                //TimeZoneInfo hwZone = TimeZoneInfo.FindSystemTimeZoneById("Hawaiian Standard Time");
                //TimeZoneInfo.ConvertTime(hwTime, targetZone, TimeZoneInfo.Local).ToString();
               Label1.Text= TimeZoneInfo.ConvertTimeBySystemTimeZoneId(serverTime, TimeZoneInfo.Local.Id, "Hawaiian Standard Time").ToString();
                //+(TimeZoneInfo.Local == TimeZoneInfo.Local) + (TimeZoneInfo.Local.Id == info.Id)
               // Label1.Text +="<br/>" +TimeZoneInfo.ConvertTime(serverTime, TimeZoneInfo.Local, targetZone).ToString();
            }
            catch (TimeZoneNotFoundException err)
            {
                Label1.Text = err.ToString()+"<br/>"+DateTimeKind.Local;
            }
            catch (InvalidTimeZoneException err)
            {
                Label1.Text = err.ToString() + "<br/>" + DateTimeKind.Local; ;
            }

        }
    }
}