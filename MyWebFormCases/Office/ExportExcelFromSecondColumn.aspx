<%@ Page Language="C#" EnableEventValidation="false"  AutoEventWireup="true" CodeBehind="ExportExcelFromSecondColumn.aspx.cs" Inherits="MyWebFormCases.Office.ExportExcelFromSecondColumn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="gvw" runat="server" AutoGenerateColumns="False" DataKeyNames="SID" DataSourceID="SqlDataSource1" >
            <Columns>
                <asp:BoundField DataField="SID" HeaderText="SID" InsertVisible="False" ReadOnly="True" SortExpression="SID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Fruit %>" SelectCommand="SELECT [SID], [Name], [City] FROM [Suppliers]"></asp:SqlDataSource>
          <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </form>
  
  
</body>
</html>
