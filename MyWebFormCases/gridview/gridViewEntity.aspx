<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gridViewEntity.aspx.cs" Inherits="MyWebFormCases.gridview.gridViewEntity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     
        <asp:GridView ID="GridView1" runat="server" DataSourceID="EntityDataSource1"></asp:GridView>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server">
        </asp:EntityDataSource>
    </form>
</body>
</html>
