<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegularExpressionExe.aspx.cs" Inherits="MyWebFormCases.ExtraControls3.RegularExpressionExe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:DropDownList ID="DropDownList1" runat="server" >
            <asp:ListItem>germany</asp:ListItem>
            <asp:ListItem>America</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="DropDownList1" ValidationExpression=""  Enabled="false"></asp:RegularExpressionValidator>
    </form>
</body>
</html>
