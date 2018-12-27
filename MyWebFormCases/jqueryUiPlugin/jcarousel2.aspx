<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jcarousel2.aspx.cs" Inherits="MyWebFormCases.jqueryUiPlugin.jcarousel2" %>

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
    <script type="text/javascript"> 

 

 
</script> 

<body>
    <form id="form1" runat="server">
        <div class="row"> 
                                              <%-- save the related link to the property mylink --%>
                     <img src="jcarousel-master/examples/_shared/img/img2.jpg" width="100" height="100" alt="" mylink="jcarousel-master/examples/_shared/img/img2.jpg">
                        <img src="jcarousel-master/examples/_shared/img/img3.jpg" width="100" height="100" alt="" mylink="jcarousel-master/examples/_shared/img/img3.jpg">
                        <img src="jcarousel-master/examples/_shared/img/img4.jpg" width="100" height="100" alt="" mylink="jcarousel-master/examples/_shared/img/img4.jpg">
                        <img src="jcarousel-master/examples/_shared/img/img5.jpg" width="100" height="100" alt="" mylink="jcarousel-master/examples/_shared/img/img5.jpg">
                        <img src="jcarousel-master/examples/_shared/img/img6.jpg" width="100" height="100" alt="" mylink="jcarousel-master/examples/_shared/img/img6.jpg">
                         
                        <img src="jcarousel-master/examples/_shared/img/img6.jpg" id="selected" width="100" height="100" alt="">
            </div>
        <input id="btn" type="button" value="select" />
    </form>
     <script>
       
         var link;
         $(".row img:lt(5)").click(function () {
             $("#selected").attr("src", $(this).attr("src"));//set the img's src to src of the img which is clicked
             link = $(this).attr("mylink");//record the current link

         })
         $("#btn").click(function () {
            // window.location.href = "/jqueryUiPlugin/target.aspx?img=" + $("#selected").attr("src")
             if (link) {
                 window.location.href = link;// go to the next page.

             }
            
         })
     </script>
</body>
</html>
