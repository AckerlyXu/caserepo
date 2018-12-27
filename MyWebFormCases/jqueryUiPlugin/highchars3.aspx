<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="highchars3.aspx.cs" Inherits="MyWebFormCases.jqueryUiPlugin.highchars3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
 <head id="Head1" runat="server">
    <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
   

 

    <title>Bloom Energy | </title>


<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/data.js"></script>
<script src="https://code.highcharts.com/modules/series-label.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
    <script src="https://code.highcharts.com/modules/annotations.js"></script>

<!-- Additional files for the Highslide popup effect -->
<script src="https://www.highcharts.com/media/com_demo/js/highslide-full.min.js"></script>
<script src="https://www.highcharts.com/media/com_demo/js/highslide.config.js" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="https://www.highcharts.com/media/com_demo/css/highslide.css" />
   


 
    <script src="http://www.google.com/jsapi" type="text/javascript"></script>

    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>




       </head>


    <body class="nav-md">
         <form id="nm" runat="server">
    <div class="container body">
      <div class="main_container">
        
     <input type="hidden" runat="server"  id="hdn_v1"  />

     <input type="hidden" runat="server"  id="hdn_Data1" />

    <input type="hidden" runat="server"  id="ucl1_id"  />

     <input type="hidden" runat="server"  id="lcl1_id" />

    <input type="hidden" runat="server"  id="usl1_id"  />

     <input type="hidden" runat="server"  id="lsl1_id" />

    <input type="hidden" runat="server"  id="yaxis1_max"  />

     <input type="hidden" runat="server"  id="yaxis1_min" />


    <input type="hidden" runat="server"  id="hdn_v2"  />

     <input type="hidden" runat="server"  id="hdn_Data2" />

    <input type="hidden" runat="server"  id="hdn_histogram"  />
     <input type="hidden" runat="server"  id="hdn_mean"  />

    
    <input type="hidden" runat="server"  id="ucl2_id"  />

     <input type="hidden" runat="server"  id="lcl2_id" />

    <input type="hidden" runat="server"  id="yaxis2_max"  />

     <input type="hidden" runat="server"  id="yaxis2_min" />
    
    <input type="hidden" runat="server"  id="chart1_yheading" />
    <input type="hidden" runat="server"  id="chart2_yheading" />

    <input type="hidden" runat="server"  id="chart1_xheading" />
    <input type="hidden" runat="server"  id="chart2_xheading" />

   

    <script>
        function BindChart1() {

            var options = {
                chart: {
                    zoomType: 'x',

                    renderTo: 'container',
                    defaultSeriesType: 'line'
                },
                title: {
                    text: chart1_yheading.value
                },
                annotations: [{
                    labelOptions: {
                        backgroundColor: 'rgba(255,255,255,1)',
                        verticalAlign: 'top',

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

                    categories: [],
                    labels: {
                        rotation: 90,
                        align: 'top'
                        //y:100,
                    },
                },

                yAxis: {
                    max: 1,
                    min: 0.75,
                    title: {
                        text: chart1_xheading.value
                    },
                    plotLines: [{

                        color: '#FF0000',
                        dashStyle: 'ShortDash',
                        width: 2,
                        value: 0.982,
                        zIndex: 0,
                        label: {
                            text: 'UCL-' + 0.982
                        }
                    }, {

                        color: '#1c1b1b',
                        dashStyle: 'ShortDash',
                        width: 2,
                        value: 1.2,
                        zIndex: 0,
                        label: {
                            text: 'USL-' + usl1_id.value
                        }
                    }, {

                        color: '#1c1b1b',
                        dashStyle: 'line',
                        width: 1,
                        value: hdn_mean.value,
                        zIndex: 0,
                        label: {
                            text: 'Mean-' + hdn_mean.value
                        }
                    }, {

                        color: '#1c1b1b',
                        dashStyle: 'ShortDash',
                        width: 2,
                        value: lsl1_id.value,
                        zIndex: 0,
                        label: {
                            text: 'LSL-' + lsl1_id.value
                        }
                    }, {
                        color: '#008000',
                        dashStyle: 'ShortDash',
                        width: 2,
                        value: 0.878,
                        zIndex: 0,
                        label: {
                            text: 'LCL-' + lcl1_id.value
                        }
                    }]

                },
                tooltip: {
                    formatter: function () {
                        //debugger;
                   
                        var datetime;//get the datetime from the prepared array  according to the batchId
                        for (var i = 1; i < dataObjects.length; i++) {
                        
                            if (dataObjects[i].BatchId == this.x) {
                          
                                datetime = dataObjects[i].datetime;
                                break;
                            }
                        }
                        return 'BatchId: <b>' + this.x + '</b>' + '<br/>' + 'Value: <b>' + this.y + '</b>' + "<br/>" + "Datetime:" + "<b>" + datetime + "</b>";

                    },
                    shared: true,
                    crosshairs: true
                },
                plotOptions: {

                    series: {
                        turboThreshold: 6000,
                        cursor: 'pointer',
                        point: {
                            events: {
                                click: function (e) {

                                       var datetime; //get the datetime from the prepared array  according to the batchId
                           for (var i = 1; i < dataObjects.length; i++) {
                            
                              if (dataObjects[i].BatchId == this.category) {
                          
                                datetime = dataObjects[i].datetime;
                                break;
                              }
                            }
                                    
                                    hs.htmlExpand(null, {
                                        pageOrigin: {
                                            x: (e.pageX || e.clientX) - 100,
                                            y: (e.pageY || e.clientY) + 60
                                        },

                                        headingText: 'BatchId: ' + this.category + '<br/> ' + 'Weight : ' + this.y+"flag",

                                        maincontentText: '<a target="_blank"  href="https://www.google.com?uid1=' + this.category + '" > Click Here_1 </a>' + '<br/> ' + '<a target="_blank"  href="https://www.google.com?uid2='+datetime+'"> Click Here_2 </a>' + "<br/>" + "datetime:" + datetime,

                                        width: 300,
                                      

                                    });

                                }
                            }
                        },
                        marker: {
                            lineWidth: 1
                        }
                    }
                },
                series: []
            };

            var data = document.getElementById("hdn_Data1");
            // debugger;
            // Split the lines
            var dataObjects = [];  //define a array to record all the batchId and datetime 
            if (data.value != "") {
                var lines = data.value.split('\n');

                // Iterate over the lines and add categories or series
                $.each(lines, function (lineNo, line) {
                    var items = line.split(',');
                    // header line containes categories
                    if (lineNo == 0) {
                        $.each(items, function (itemNo, item) {
                            if (itemNo > 0) options.xAxis.categories.push(item);
                            var obj = {};
                            obj.BatchId = item;
                            dataObjects.push(obj); // add batchId to the array
                        });
                    }
                    else if (lineNo == 2) {
                        $.each(items, function (itemNo, item) {
                            if (itemNo > 0) {
                                var obj = {
                                    point: {
                                        //x means the index of category
                                        x: itemNo - 1,
                                        // y means the yAxis of you point 
                                        y: options.series[0].data[itemNo - 1].y,
                                        xAxis: 0,
                                        yAxis: 0
                                    },
                                    text: ""
                                }

                                obj.text = item;

                                //   debugger;
                                if (obj.text == 'n') {
                                }
                                else
                                    options.annotations[0].labels.push(obj);
                            }

                        });
                    }
                    else if (lineNo == 3) {  //add the datetime to the array
                         $.each(items, function (itemNo, item) {
                             dataObjects[itemNo].datetime = item;
                           
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
                                //  if (item > ucl1_id.Value || item < lcl1_id.Value) {
                                if (item > 0.982 || item < 0.878) {
                                    // if (item <= hdn_v1.value) {
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
                console.log(dataObjects);
                var chart1 = new Highcharts.Chart(options);
            }
        };


        $(function () {
            BindChart1()

        })
    </script>

  

         
        <div class="right_col" role="main">
         

          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="dashboard_graph">

                

                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div id="container" ></div>
                
                </div>
                 
                    
                

                <div class="clearfix"></div>
              </div>
            </div>

          </div>
          <br />

          


          
        </div>
        <!-- /page content -->
              </form>
        <!-- footer content -->
        <footer>
          <div class="pull-right">
          xyz <a href="#"></a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

    
	
  </body>
</html>