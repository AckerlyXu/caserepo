<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KeepFootAtFooter.aspx.cs" Inherits="MyWebFormCases.CssCase.KeepFootAtFooter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"   >
    <style>
        body, html {
    height: 100%;
    margin: 0;
    font-family:Lato, Arial, Helvetica, sans-serif;
}
        


.fixed-bottom {
    /*position: fixed;*/
   
    width: 100%;
    /*margin-bottom:50px*/ 
    /*right: 0;
    bottom: 0;
    left: 0;
    z-index: -500;*/
}
    </style>
</head>
<body>
   
    <div style="height:100%">
    <form id="form1" runat="server" style="height:100%">
      
<nav>navbar code</nav>  
<div class="">Maincontent</div>

<div  style="margin-bottom:50px">
       <%-- <div class="container-fluid">
            <div class="row">--%>
              somecontent
            <%--</div>
            <div class="row" style="background-color:#0f3238;">--%>
              some content
          <%--  </div>
        </div>--%>
    </div>



    </form>
        </div>
</body>
</html>
