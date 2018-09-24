<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CallWebMethodUsingJs.aspx.vb" Inherits="VBWebForm.CallWebMethodUsingJs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

   
</head>
<body>
    <form id="form1" runat="server">

       
         <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="True"></asp:ScriptManager>
        <script>
//, function (a, b) { console.log(a, b) }, function (a, b) { console.log(a, b) }

            PageMethods.SayHello("a", function (data) { console.log(data) })
        
      

   </script>
    </form>
</body>
</html>
