<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RegularExpressionExe.aspx.vb" Inherits="VBWebForm.RegularExpressionExe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true"   >
            <asp:ListItem>germany</asp:ListItem>
            <asp:ListItem>America</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="TextBox1" ValidationExpression=""  ></asp:RegularExpressionValidator>
    </form>
</body>
</html>
