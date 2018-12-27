<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PageFirst.aspx.cs" Inherits="MyWebFormCases.crossPages.PageFirst" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="box1"></asp:Label><asp:TextBox ID="TextBox1" runat="server" Text="box1"></asp:TextBox><br />
        <asp:Label ID="Label2" runat="server" Text="box2"></asp:Label><asp:TextBox ID="TextBox2" runat="server" Text="box2"></asp:TextBox><br />
        <asp:Label ID="Label3" runat="server" Text="box3"></asp:Label><asp:TextBox ID="TextBox3" runat="server" Text="box3"></asp:TextBox>

        <asp:Button ID="Button1" runat="server" Text="go to another page" OnClick="Button1_Click" />
    </form>
</body>
</html>
