<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FilterWithDataView.aspx.cs" Inherits="MyWebFormCases.gridView2.FilterWithDataView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:ScriptManager runat="server"></asp:ScriptManager>
            <asp:GridView ID="GridView1" runat="server"   >
               

            </asp:GridView>

            <asp:Label ID="Label1" runat="server" Text="From"></asp:Label>  <asp:TextBox ID="TextBox1" runat="server" Text="01-Jul-2018"></asp:TextBox>     <asp:Label ID="Label2" runat="server" Text="To"></asp:Label><asp:TextBox ID="TextBox2" runat="server" Text="12-Aug-2018"></asp:TextBox>

            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
