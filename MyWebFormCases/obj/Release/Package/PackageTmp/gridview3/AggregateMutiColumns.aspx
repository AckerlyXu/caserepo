<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AggregateMutiColumns.aspx.cs" Inherits="MyWebFormCases.gridview3.AggregateMutiColumns" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
            <Columns>
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="QuantityPerUnit" HeaderText="QuantityPerUnit" SortExpression="QuantityPerUnit" />
                <asp:TemplateField HeaderText="UnitPrice">
                    <ItemTemplate>
                        <asp:Label ID="UnitPrice" runat="server" Text='<%# Eval("UnitPrice") %>'></asp:Label>
                      
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="UnitsInStock" HeaderText="UnitsInStock" SortExpression="UnitsInStock" />
            </Columns>

        </asp:GridView>
        
    </form>
</body>
</html>
