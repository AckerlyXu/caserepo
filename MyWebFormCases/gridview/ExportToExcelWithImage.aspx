<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExportToExcelWithImage.aspx.cs" Inherits="MyWebFormCases.gridview.ExportToExcelWithImage" 
    EnableEventValidation = "false" 
    %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  >
            <Columns>
                <asp:BoundField DataField="title" HeaderText="CategoryId" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="softName" HeaderText="CagegoryNameName" SortExpression="ProductName" />
                <asp:BoundField DataField="liaisonPhone" HeaderText="Description" SortExpression="Description" />
               <%-- <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("categoryId","/services/writeImage.ashx?id={0}") %>' />

                    </ItemTemplate>
                </asp:TemplateField>--%>
               
            </Columns>
        </asp:GridView>
        <asp:Button ID="export" runat="server" Text="export" OnClick="export_Click" />
    </form>
</body>
</html>
