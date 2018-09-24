<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bootstrapLayout2.aspx.cs" Inherits="MyWebFormCases.bootstrap.bootstrapLayout2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{padding:0px;margin:0px}
    </style>


     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous" />
</head>
<body>
    <form id="form1" runat="server">
       <div class="container-fluid  d-none d-sm-block" >
        <div class="row">
            <div class="col-6 border"><img src="../images/WingtipToys/busgreen.png" alt="Image" class="img-fluid" /></div>
            <div class="col-6 border">
                <div class="container">
                    <h4 class="bg-info p-2" >SAMPLE TEXT</h4>
                    <p class="py-1">Some text</p>
                    <h5><a href="#" class="bg-info text-dark p-2">Know More..</a></h5>
                </div>
            </div>
        </div>
    </div>


        <div class="container-fluid  d-block d-sm-none " >


       <div class="position-relative border" >
           
           <img src="../images/WingtipToys/busgreen.png" alt="Image" class="img-fluid" width="100%" />
             <div class=" border position-absolute" style="bottom:0px;left:100%;transform:translateX(0);height:170px" id="text" >
           
                    <h4 class="bg-info p-2" >SAMPLE TEXT</h4>
                    <p class="py-1">Some text</p>
                    <h5><a href="#" class="bg-info text-dark p-2">Know More..</a></h5>
              
            </div>

       </div>
       
    </div>
    
      
     

           <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
    </form>
       <script>

            
//            //$("#text").hide();
//           $( "#clickme" ).click(function() {
//  $( "#text" ).slideUp( "slow", function() {
//    // Animation complete.
//  });
//});
//            function changeSize() {
//               if ($(window).width() <=576) {
            
                   
//                    //{left:"50%",transform:"translateX(-50%)"}
//              }
//            }
      $(function () {

            $("#text").animate({ left: "50%", "margin-left": "-100px" }, 3000)

        })
          
        </script>

</body>
</html>
