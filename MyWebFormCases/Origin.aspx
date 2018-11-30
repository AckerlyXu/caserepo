<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Origin.aspx.cs" Inherits="MyWebFormCases.Origin" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-3.3.1.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <ajaxToolkit:ComboBox ID="ComboBox1" runat="server"></ajaxToolkit:ComboBox>
   
    </form>
    <script>
        window.onbeforeunload = function (e) {
            // alert("hello");
           
            $.post(
                "/Services/res1.ashx"
            );
            e.returnValue = "确定离开当前页面吗？";
            return "确定离开当前页面吗？"
            
        }
    </script>
</body>
</html>
