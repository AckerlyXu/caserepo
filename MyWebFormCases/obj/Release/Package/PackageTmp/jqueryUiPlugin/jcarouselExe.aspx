<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jcarouselExe.aspx.cs" Inherits="MyWebFormCases.jqueryUiPlugin.jcarouselExe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<link href="jcarousel-master/examples/vertical/jcarousel.vertical.css" rel="stylesheet" />
<link href="jcarousel-master/examples/_shared/css/style.css" rel="stylesheet" />
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<script src="jcarousel-master/vendor/jquery/jquery.js"></script>
<script src="jcarousel-master/dist/jquery.jcarousel.min.js"></script>
<script src="jcarousel-master/examples/vertical/jcarousel.vertical.js"></script>
<body>
    <form id="form1" runat="server">
        <div class="row">  <!--user bootstrap row class to make a layout-->
           
            <div class="wrapper col-6 "> 
           

            <div class="jcarousel-wrapper ">
                <div class="jcarousel">
                    <ul>
                       
                        <li><img src="jcarousel-master/examples/_shared/img/img2.jpg" width="600" height="400" alt=""></li>
                        <li><img src="jcarousel-master/examples/_shared/img/img3.jpg" width="600" height="400" alt=""></li>
                        <li><img src="jcarousel-master/examples/_shared/img/img4.jpg" width="600" height="400" alt=""></li>
                        <li><img src="jcarousel-master/examples/_shared/img/img5.jpg" width="600" height="400" alt=""></li>
                        <li><img src="jcarousel-master/examples/_shared/img/img6.jpg" width="600" height="400" alt=""></li>
                    </ul>
                </div>

                <p class="photo-credits">
                    
                </p>

                <a href="#" class="jcarousel-control-prev">&lsaquo;</a>
                <a href="#" class="jcarousel-control-next">&rsaquo;</a>
                
                <p class="jcarousel-pagination">
                    
                </p>
            </div>
             
        </div>

            <!--user bootstrap col-6 class, the div will occupy half  of the div with class row, use justify-content-center to make the img in the center of the div -->
            <div class="col-6 container" ><div class="row justify-content-center " style="margin-top:30px"><img src="jcarousel-master/examples/_shared/img/img1.jpg" width="600" height="400" alt=""></div></div>
            </div>
    </form>
</body>
</html>
