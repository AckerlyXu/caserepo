<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fullCalendarExe.aspx.cs" Inherits="MyWebFormCases.jqueryUiPlugin.fullCalendarExe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
 

  html, body {
    margin: 0;
    padding: 0;
    font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width: 900px;
    margin: 40px auto;
  }

</style>
      <script src="calendar/jquery/dist/jquery.js"></script>
    <link href="https://fullcalendar.io/assets/demo-topbar.css" rel="stylesheet" />
    <link href="https://fullcalendar.io/releases/fullcalendar/3.9.0/fullcalendar.min.css" rel="stylesheet" />
  
       <link href="https://fullcalendar.io/releases/fullcalendar/3.9.0/fullcalendar.print.css" rel="stylesheet"  media='print'/>
    <script src="https://fullcalendar.io/releases/fullcalendar/3.9.0/lib/moment.min.js"></script>
  
    <script src="https://fullcalendar.io/releases/fullcalendar/3.9.0/lib/jquery.min.js"></script>
    <script src="https://fullcalendar.io/releases/fullcalendar/3.9.0/fullcalendar.min.js"></script>
    <script src="https://fullcalendar.io//assets/demo-to-codepen.js"></script>
</head>
<body>
    <form id="form1" runat="server">
      <div class='demo-topbar'>
  <button data-codepen class='codepen-button'>Edit in CodePen</button>

  

  
    You can drag events to other days and resize the end date
  
</div>

  <div id='calendar'></div>
<script>
    

    $(function () {
        var eventsArray = [{

            title: 'Test1',
            start: "2018-12-16T00:00:00",
            end: "2018-12-19T00:00:00",
            allDay: true,
            editable: true
        },
        {

            title: 'Test2',
            start: "2018-12-18T00:00:00",
            end: "2018-12-19T00:00:00",
            allDay: true,
            editable: false

        }
        ];


        $('#calendar').fullCalendar({
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month,agendaWeek,agendaDay'
            },
            editable: true,
            eventLimit: true, // when too many events in a day, show the popover
            events: eventsArray,
            eventResize: function (event, delta) {
                event.editable = false;
                console.log(this);
            },
            eventDropStart: function (event) {
                eventsArray[0].editable = false;
                event.editable = false;
                
            },
            eventRender: function (event, element) {
           
              //  console.log(event);
                console.log(event);
            } ,
            eventDrop: function (event, delta) {
                eventsArray[0].editable = false;
                event.editable = false;
                
            },
            eventDragStop: function (event) {
                console.log(event);
            }

        });
    })
         
    

 

   

</script>
    </form>
</body>
</html>
