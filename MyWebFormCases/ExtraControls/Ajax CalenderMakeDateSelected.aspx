<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ajax CalenderMakeDateSelected.aspx.cs" Inherits="MyWebFormCases.ExtraControls.Ajax_CalenderMakeDateSelected" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

        </div>
        <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox1" />
    </form>
</body>
</html>
