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

 
var mycarousel_itemList = [ 
    //{url: "jcarousel-master/examples/_shared/img/img1.jpg", title: ""}, 
    {url: "jcarousel-master/examples/_shared/img/img2.jpg", title: ""}, 
    {url: "jcarousel-master/examples/_shared/img/img3.jpg", title: ""}, 
    {url: "jcarousel-master/examples/_shared/img/img4.jpg", title: ""}, 
    {url: "jcarousel-master/examples/_shared/img/img5.jpg", title: ""}, 
    {url: "jcarousel-master/examples/_shared/img/img6.jpg", title: ""} 
   
]; 
 
//function mycarousel_itemLoadCallback(carousel, state) 
//{ 
//    for (var i = carousel.first; i <= carousel.last; i++) { 
//        if (carousel.has(i)) { 
//            continue; 
//        } 
 
//        if (i > mycarousel_itemList.length) { 
//            break; 
//        } 
 
//        // Create an object from HTML 
//        var item = jQuery(mycarousel_getItemHTML(mycarousel_itemList[i-1])).get(0); 
     
//        carousel.add(i, item); 
//    } 
//}; 
 
/** 
 * Item html creation helper. 
 */ 
//function mycarousel_getItemHTML(item) 
//{ 
//    var url_m = item.url.replace(/_s.jpg/g, '_m.jpg'); 
//   return '<a href="' + url_m + '" title="' + item.title + '"'+
//' onMouseOver="showIt(this)"' +
//' onClick="return showIt(this)"><img src="' + item.url + '"  width="75" height="75" border="0" alt="' + item.title + '"  /></a>';}; 
 
//        jQuery(document).ready(function () { 

//            for (var i = 0; i < mycarousel_itemList.length; i++) {
//                $(".jcarousel ul").append( ' <li><img src="' + mycarousel_itemList[i].url + '" width="600" height="400" alt=""></li>');
//            }
//    jQuery('#mycarousel').jcarousel({ 
//        size: mycarousel_itemList.length, 
//        itemLoadCallback: {onBeforeAnimation: mycarousel_itemLoadCallback} 
//    }); 
//}); 
        var index = 0;
        var len = mycarousel_itemList.length;
        $(function () {

            $(".jcarousel-control-next ").click(function () {

                if (index < len-2) {
                    index++;
                    $("#right").attr("src", mycarousel_itemList[index + 1].url)
                } else {
                    index=len-1
                     $("#right").attr("src", mycarousel_itemList[mycarousel_itemList.length-1].url)
                }
            })
            $(".jcarousel-control-prev").click(function (){

                if (index >= 2) {
                    index--;
                    $("#right").attr("src", mycarousel_itemList[index -1].url)
                } else {
                    $("#right").attr("src", mycarousel_itemList[0].url)
                    index = 0;
                }
            })

        })
function showIt(link) { 
  document.getElementById('img').innerHTML='<img src="'+link.href+'" />' 
  document.getElementById('imgTitle').innerHTML=link.title 
  return false; 
} 
 
</script> 

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
            <div class="col-6 container" ><div class="row justify-content-center " style="margin-top:30px"><img id="right" src="jcarousel-master/examples/_shared/img/img3.jpg" width="600" height="400" alt=""></div></div>
            </div>
    </form>
</body>
</html>
