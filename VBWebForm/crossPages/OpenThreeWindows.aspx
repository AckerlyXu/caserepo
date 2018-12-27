<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="OpenThreeWindows.aspx.vb" Inherits="VBWebForm.OpenThreeWindows" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-3.3.1.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>

        <script>
function openThreeWindows(){
window.open('/crossPages/from.aspx','_newtab1');

        window.open('/crossPages/Page1.aspx','_newtab2');

       window.open('/crossPages/ToMyPage.aspx','_newtab3');

}
         
        </script>
    </form>
</body>
</html>
