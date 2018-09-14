<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HighChartsStart.aspx.cs" Inherits="MyWebFormCases.jqueryUiPlugin.HighChartsStart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
  
         <script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/annotations.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>

    
    <script>
        $(document).ready(function () {
            //debugger;
            var options = {
                chart: {
                   
                    zoomType: 'x',

                    renderTo: 'container',
                    defaultSeriesType: 'line'
                },
                title: {
                    text: 'Spiritual Gifts Results'
                },
                annotations: [{
        labelOptions: {
            backgroundColor: 'rgba(255,255,255,1)',
            verticalAlign: 'top',
          //  shape: 'connector',
            align: 'right',
            justify: false,
            crop: true,
            style: {
                fontSize: '0.8em',
                textOutline: '1px white'
            },
            y: 15,
            x: 100
           
        },
                    labels: [
                       
                    ]
    
    }],

                colors: [
                    '#3BBEE3'
                ],
                xAxis: {
                   tickInterval: 1,
        gridLineWidth: 1,
                    categories: ['A','B','C'],
                    labels: {
                       // rotation: 90,
                        align: 'top'
                        //y:100,
                    },
                },

                yAxis: {
                  
                    max: 260,
                    min: 250,
                    title: {
                        text: 'Service'
                    },
                    plotLines: [{

                        color: '#FF0000',
                        dashStyle: 'ShortDash',
                        width: 2,
                        value: 255,
                        zIndex: 0,
                        label: {
                            text: 'UCL'
                        }
                    }, {
                        color: '#008000',
                        dashStyle: 'ShortDash',
                        width: 2,
                        value: 251,
                        zIndex: 0,
                        label: {
                            text: 'LCL'
                        }
                    }
                    ]

                },

                series: [
              
                ]
            };

            var data = document.getElementById("hdn_Data");
            // var data = "Categories,A'\n'Total Points,251,'\n',mydata,'hello1'";
            // Split the lines
            //    hdn_Data.Value = "Categories,A,B,C" + "'\n'" + "Total Points,251,253,254" + "'\n'" + "mydata,'annotation1','annotation1','no annotation'";
            if (data.value != "") {
                var lines = data.value.split('\n');

                // Iterate over the lines and add categories or series
                $.each(lines, function (lineNo, line) {
                    var items = line.split(',');
                    // header line containes categories
                    if (lineNo == 0) {
                        $.each(items, function (itemNo, item) {
                            if (itemNo > 0) options.xAxis.categories.push(item);
                        });
                    }
                    else if (lineNo == 2) {
                        $.each(items, function (itemNo, item) {
                            if (itemNo > 0) {
                                 var obj = {
                            point: {

                                x: itemNo-1,
                                y: options.series[0].data[itemNo - 1].y,
                                xAxis: 0,
                             yAxis: 0
                                },
                            text: ""
                            }
                            
                            obj.text = item;


                            options.annotations[0].labels.push(obj);
                            }
                           
                        });
                    }

                        // the rest of the lines contain data with their name in the first position
                    else {
                        var series = {
                            data: []
                        };
                        $.each(items, function (itemNo, item) {

                            var data = {};
                            if (itemNo == 0) {
                                series.name = item;
                            } else {
                                data.y = parseFloat(item);

                                if (item <= hdn_v1.value) {
                                    data.color = 'Red';
                                }
                                else {
                                    data.color = '#3BBEE3';

                                }
                                series.data.push(data);

                            }
                        });
                        options.series.push(series);
                      
                    
                    }
                });

                // Create the chart
                var chart1 = new Highcharts.Chart(options);
            }
        });</script>



</head>
<body>
    <form id="form1" runat="server">
        <div>
             <input type="hidden" runat="server"  id="hdn_v1"  />

     <input type="hidden" runat="server"  id="hdn_Data" />
    <div>
     <div id="container" style="min-width: 400px; height: 400px; margin: 0 auto"></div>
    </div>
    </div>
    </form>
</body>
</html>
