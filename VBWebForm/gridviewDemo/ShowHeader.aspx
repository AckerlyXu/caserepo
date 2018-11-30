<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ShowHeader.aspx.vb" Inherits="VBWebForm.ShowHeader" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="item_id" DataSourceID="SqlDataSource1"  ShowHeaderWhenEmpty="true" EmptyDataText="no data" >
            <Columns >
                <asp:TemplateField HeaderText="item_id">
                    <ItemTemplate >
                        <%# Eval("item_id")
                            %>
                    </ItemTemplate>
                   
                </asp:TemplateField>
              <%--  <asp:BoundField DataField="item_id" HeaderText="item_id" InsertVisible="False" ReadOnly="True" SortExpression="item_id" />
                <asp:BoundField DataField="item_name" HeaderText="item_name" SortExpression="item_name" />
                <asp:BoundField DataField="content" HeaderText="content" SortExpression="content" />--%>
               
            </Columns>
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TagSystem %>" SelectCommand="SELECT * FROM [items]"></asp:SqlDataSource>
    </form>
</body>
</html>
