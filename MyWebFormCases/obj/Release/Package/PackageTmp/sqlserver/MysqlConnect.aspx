<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MysqlConnect.aspx.cs" Inherits="MyWebFormCases.sqlserver.MysqlConnect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>


      


       

      


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" ProviderName="<%$ ConnectionStrings:testConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [student]"></asp:SqlDataSource>


      


       

      


    </form>
</body>
</html>
