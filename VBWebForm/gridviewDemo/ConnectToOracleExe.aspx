<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ConnectToOracleExe.aspx.vb" Inherits="VBWebForm.ConnectToOracleExe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server"  Width="400px" >

            

        </asp:GridView>
      
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
     
        <br />

        <asp:Label ID="Label1" runat="server" Text="name"></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:Label ID="Label2" runat="server" Text="age"></asp:Label><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><asp:Button ID="Button1" runat="server" Text="save" OnClick="Button1_Click" />


    </form>
</body>
</html>
