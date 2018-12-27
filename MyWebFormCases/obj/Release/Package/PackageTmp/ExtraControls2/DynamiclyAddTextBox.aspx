<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DynamiclyAddTextBox.aspx.cs" Inherits="MyWebFormCases.ExtraControls2.DynamiclyAddTextBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       
        <asp:Panel ID="pn1TextBoxes" runat="server"></asp:Panel>

        <asp:Button ID="txtDynamic" runat="server" Text="Button" OnClick="Button1_Click" />
    </form>
</body>
</html>
