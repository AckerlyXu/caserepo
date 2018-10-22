<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddOneRowToGridView.aspx.cs" Inherits="MyWebFormCases.gridView2.AddOneRowToGridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:supplyModel %>" SelectCommand="SELECT [SID], [Name], [City] FROM [Suppliers]"></asp:SqlDataSource>
    </form>
</body>
</html>
