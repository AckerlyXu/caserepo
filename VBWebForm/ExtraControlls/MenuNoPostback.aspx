<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MenuNoPostback.aspx.vb" Inherits="VBWebForm.MenuNoPostback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" Width="400px">
<Items>

<asp:MenuItem NavigateUrl="?action=home" Text="Home" Value="Home"></asp:MenuItem>
<asp:MenuItem  Text="About" Value="About"></asp:MenuItem>
<asp:MenuItem  Text="Contact" Value="Contact"></asp:MenuItem>

</Items>
</asp:Menu>
<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
