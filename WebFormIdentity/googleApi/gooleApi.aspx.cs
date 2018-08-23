using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Google.Apis;
using Google.Apis.Auth.OAuth2;
using Google.Apis.Calendar.v3;
using Google.Apis.Calendar.v3.Data;
using Google.Apis.Services;


namespace WebFormIdentity.googleApi
{
    public partial class gooleApi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserCredential credential = GoogleWebAuthorizationBroker.AuthorizeAsync(
              new ClientSecrets
              {
                  ClientId = "myid",
                  ClientSecret = "mysecret",
              },
              new[] { CalendarService.Scope.Calendar },
              "user",
              CancellationToken.None).Result;

            // Create the service.
            var service = new CalendarService(new BaseClientService.Initializer()
            {
                HttpClientInitializer = credential,
                ApplicationName = "Calendar API Sample",
            });
            Event myEvent = new Event
            {
                Summary = "Appointment",
                Location = "Somewhere",
                Start = new EventDateTime()
                {
                    DateTime = new DateTime(2018, 7, 14, 10, 0, 0),
                    TimeZone = "America/Los_Angeles"
                },
                End = new EventDateTime()
                {
                    DateTime = new DateTime(2018, 7, 14, 10, 30, 0),
                    TimeZone = "America/Los_Angeles"
                },
                Recurrence = new String[] {
      "RRULE:FREQ=WEEKLY;BYDAY=MO"
  },
                Attendees = new List<EventAttendee>()
      {
        new EventAttendee() { Email = "ackerlyxu@gmail.com" }
      }
            };

            Event recurringEvent = service.Events.Insert(myEvent, "primary").Execute();

        }
    }
}