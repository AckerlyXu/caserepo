<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="BarchartStart.aspx.vb" Inherits="VBWebForm.BarchartStart" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <ajaxToolkit:BarChart ID="BarChart1" runat="server"></ajaxToolkit:BarChart>
    </form>
</body>
</html>
