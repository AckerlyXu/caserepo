<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="filterColumns.aspx.vb" Inherits="VBWebForm.filterColumns" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound" OnDataBound ="GridView1_DataBound" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" >
            <Columns>
                <asp:BoundField DataField="column1" HeaderText="column1" SortExpression="column1" />
                <asp:BoundField DataField="column2" HeaderText="column2" SortExpression="column2" />
                <asp:BoundField DataField="column3" HeaderText="column3" SortExpression="column3" />
                <asp:BoundField DataField="column4" HeaderText="column4" SortExpression="column4" />
                <asp:BoundField DataField="column5" HeaderText="column5" SortExpression="column5" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EntityDbConnectionString %>" SelectCommand="SELECT * FROM [Columns]"></asp:SqlDataSource>
    </form>
</body>
</html>
