<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GoogleChartsTableStart.aspx.cs" Inherits="MyWebFormCases.jqueryUiPlugin.GoogleChartsTableStart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <script>
           
            function drawTableNumberPolicy() {
                $.ajax({
                    type: "POST",
                    url: '/Services/GoogleChartService.asmx/GetData',
                    data: '{}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (r) {
                        google.charts.load('current', { 'packages': ['table'] });
                        google.charts.setOnLoadCallback(function () {

                             var data = new google.visualization.DataTable();
        data.addColumn('string', 'Name');
        data.addColumn('number', 'Salary');
        data.addColumn('string', 'address');
        data.addRows(r.d);

        var table = new google.visualization.Table(document.getElementById('TableNumberPolicy'));

        table.draw(data, {showRowNumber: true, width: '100%', height: '100%'});


                        });
                        
                    }

                });
            }


                    
                    

             drawTableNumberPolicy()
    
        </script>
        <div id="TableNumberPolicy">
        </div>
    </form>
</body>
</html>
