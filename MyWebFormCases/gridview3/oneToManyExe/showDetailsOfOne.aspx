<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="showDetailsOfOne.aspx.cs" Inherits="MyWebFormCases.gridview3.oneToManyExe.showDetailsOfOne" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
 
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CategoryID" DataSourceID="SqlDataSource1">
            <Columns>
      
                <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <a href='<%# "/gridview3/oneToManyExe/showDetail.aspx?id="+Eval("CategoryID") %>' target="_blank">go to detail</a>

                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>



        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WingtipToysConnectionString2 %>" SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>
    </form>
</body>
</html>
