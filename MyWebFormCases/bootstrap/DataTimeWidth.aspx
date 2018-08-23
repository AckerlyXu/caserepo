<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataTimeWidth.aspx.cs" Inherits="MyWebFormCases.bootstrap.DataTimeWidth" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="eonasdan-bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />
    <link href="bootstrap-datetimepicker-master/sample%20in%20bootstrap%20v3/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
     <script src="bootstrap-datetimepicker-master/sample%20in%20bootstrap%20v3/jquery/jquery-1.8.3.min.js"></script>
    <link href="eonasdan-bootstrap-datetimepicker/docs/theme/css/prettify-1.0.css" rel="stylesheet" />
    <link href="eonasdan-bootstrap-datetimepicker/docs/theme/css/base.css" rel="stylesheet" />
    <style>
        /*.bootstrap-datetimepicker-widget tr td:nth-child(2){
          
    background-color:aqua;
            width:10px !important

        }
        .bootstrap-datetimepicker-widget {
            width:150px !important;
            /*height:200px !important;*/
              /*overflow:scroll*/
        /*}*/
        /*.bootstrap-datetimepicker-widget tr td:nth-child(1){
          box-sizing:border-box !important;
        background-color:antiquewhite;
            width:10px !important;
            padding:0px  !important;
            margin:0px !important;
        }
        .bootstrap-datetimepicker-widget  td{
             padding:0px  !important;
             margin:0px !important;
             height:10px !important;
             width:10px !important;
        }*/
        /*.bootstrap-datetimepicker-widget ul{
            padding:0 !important;
            margin:0 !important;
        }*/
    </style>
</head>


<body>
    <form id="form1" runat="server">
<div class="container">
    <div class="row">
        <div class='col-sm-6'>
            <div class="form-group">
                <div class='input-group date' id='datetimepicker3'>
                    <input type='text' class="form-control" />
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-time"></span>
                    </span>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            $(function () {
                $('#datetimepicker3').datetimepicker({
                    
                   // format: 'LT'
                    format: 'HH:mm'
                });
            });
        </script>
    </div>
</div>
       
        <script src="eonasdan-bootstrap-datetimepicker/moment.js"></script>
        <script src="bootstrap-datetimepicker-master/sample%20in%20bootstrap%20v3/bootstrap/js/bootstrap.min.js"></script>
        <script src="eonasdan-bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
        <script>
            $(".input-group-addon").click(function () {
                console.log($(".bootstrap-datetimepicker-widget"));
                 $(".bootstrap-datetimepicker-widget").css({ backgroundColr: "red", width: "100" });

            })

           

        </script>

    </form>
</body>
</html>
