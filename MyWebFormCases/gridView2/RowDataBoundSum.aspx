<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RowDataBoundSum.aspx.cs" Inherits="MyWebFormCases.gridView2.RowDataBoundSum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="false" OnRowDataBound="GridView1_RowDataBound" OnDataBound="GridView1_DataBound" PageSize="2" AllowPaging="true"  >


            <Columns>
                <asp:TemplateField>

                   <HeaderTemplate>
Jul<br />
<asp:Label runat="server" ID="JulyTotal" Text="Total" Visible="false"></asp:Label>
</HeaderTemplate>
<ItemTemplate>
<asp:Label ID="JulyMonth" runat="server" Text='<%# Eval("Jul") %>' CssClass="labelstyle"></asp:Label>
</ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
           <asp:Button ID="Button1" runat="server" Text="Button" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UserItemDbContext %>" SelectCommand="SELECT [id], [Jul], [Jun], [Sep], [name] FROM [purchase]"></asp:SqlDataSource>
    </form>
 
</body>
</html>
