<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridViewEntity.aspx.cs" Inherits="WebFormIdentity.GridViewEntity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="EntityDataSource2"></asp:GridView>
        <asp:EntityDataSource ID="EntityDataSource2" runat="server">
        </asp:EntityDataSource>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server">
        </asp:EntityDataSource>
    </form>
</body>
</html>
