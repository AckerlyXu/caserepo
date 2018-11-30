<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="VBWebForm.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       
        <asp:Label ID="Label1" runat="server" Text="username"></asp:Label><asp:TextBox ID="username" runat="server" Text="username"></asp:TextBox><br />
         <asp:Label ID="Label2" runat="server" Text="password"></asp:Label><asp:TextBox ID="password" runat="server"  Text="password"></asp:TextBox><br />
         <asp:Label ID="Label3" runat="server" Text="Predata"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:TextBox ID="Predata" runat="server" Text="Predata"></asp:TextBox><br />
         <asp:Label ID="Label4" runat="server" Text="Postdata"></asp:Label>&nbsp;&nbsp;<asp:TextBox ID="Postdata" runat="server" Text="Postdata"></asp:TextBox><br />
        <asp:Button ID="Button1" runat="server" Text="login" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="logout" OnClick="Button2_Click"  />

    </form>
</body>
</html>
