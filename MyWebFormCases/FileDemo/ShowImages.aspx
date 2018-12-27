<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowImages.aspx.cs" Inherits="MyWebFormCases.FileDemo.ShowImages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "/images/WingtipToys/"+Eval("ImagePath") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ImagePath" HeaderText="ImagePath" SortExpression="ImagePath" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WingtipToysConnectionString %>" SelectCommand="SELECT [ProductName], [ImagePath] FROM [Products]"></asp:SqlDataSource>
    </form>
</body>
</html>
