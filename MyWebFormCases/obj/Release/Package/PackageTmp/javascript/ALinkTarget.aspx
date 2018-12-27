<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ALinkTarget.aspx.cs" Inherits="MyWebFormCases.javascript.ALinkTarget" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <a href="JSValidate.aspx" >myLink</a>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </form>
</body>
</html>
