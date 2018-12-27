<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LayOutOfLabel.aspx.cs" Inherits="MyWebFormCases.CssCase.LayOutOfLabel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
         .content {  
position: fixed;  
top: 10px;  
z-index: 2;  
margin: 0 auto;  
max-width: 720px;  
text-align: center;
}


.content__heading {
 
color: #94e8e3;  
font-size: 44px;
}
.labelStyle  {    
font: normal 14px 'trebuchet ms','News Cycle',Helvetica;    
color: black;    
float: right;    
position: absolute;    
top: 15px;    
right:50px;


}
.date{
    background-color:antiquewhite;
    position:fixed;
    width:100%;
    height:30px;
}
.container {
   
    width:100%;
    height:900px;
    position:fixed;
    
    top:100px;

    }

.container video {
        width: 100%;
        height: 100%;
        display: block;
    }

     </style>
    <script src="../Scripts/jquery-1.9.1.js"></script>
</head>
<body>
    <form id="form1" runat="server">
      
        <div class="date"> <asp:Label ID="LblDate" runat="server" CssClass="labelStyle" Text="Label">2018-12-10 10:00</asp:Label> </div>
   <div class="content">

  <h1 class="content__heading">Welcome To My Site</h1>  
 
  </div>

    
  <div class="container">
   
<video id="my-video"  controls style="background-color:black">
<source src="/upload/example.mp4" type="video/mp4">
</video>
      </div>
 
    </form>
</body>
</html>
