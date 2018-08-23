<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetModelDataColumnThroughColumnName.aspx.cs" Inherits="MyWebFormCases.gridview.SetModelDataColumnThroughColumnName" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound" >
              <Columns>
                  <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
                  <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                 
                  <asp:TemplateField HeaderText="myOwnText">

                      
                  </asp:TemplateField>
              </Columns>
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT [CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address] FROM [Customers]"></asp:SqlDataSource>
    </form>
  
</body>
</html>
