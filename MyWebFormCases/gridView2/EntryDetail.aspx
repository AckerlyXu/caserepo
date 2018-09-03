<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EntryDetail.aspx.cs" Inherits="MyWebFormCases.gridView2.EntryDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="EntryNo" DataSourceID="SqlDataSource1">
            <Fields>
                <asp:BoundField DataField="EntryNo" HeaderText="EntryNo" InsertVisible="False" ReadOnly="True" SortExpression="EntryNo" />
                <asp:BoundField DataField="Code" HeaderText="Code" SortExpression="Code" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="categoryid" HeaderText="categoryid" SortExpression="categoryid" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EntityExeConnectionString %>" SelectCommand="SELECT EntryNo, Code, Description, categoryid FROM Entries WHERE (EntryNo = @id)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="1" Name="id" QueryStringField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
