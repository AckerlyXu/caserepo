<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReduceSizeOfWindow.aspx.cs" Inherits="MyWebFormCases.javascript.ReduceSizeOfWindow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-3.3.1.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
    <script>
        $(function () {
            window.resizeTo(500,500)
            window.open("/WebForm3.aspx", "_blank", 'width=200,height=100,top=300,left=400');
            //window.close();
         
        })
       
    </script>
</body>
</html>
