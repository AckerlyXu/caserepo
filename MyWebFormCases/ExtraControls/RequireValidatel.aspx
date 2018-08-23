<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequireValidatel.aspx.cs" Inherits="MyWebFormCases.ExtraControls.RequireValidatel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:textbox runat="server" ID="text"></asp:textbox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"
              ControlToValidate="text"  ></asp:RequiredFieldValidator>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>

