<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetElementInXml.aspx.cs" Inherits="MyWebFormCases.xml.GetElementInXml" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <%

        Response.Write("HTTP_REFERFER value is :");

%>
    <form id="form1" runat="server">
     
    </form>
    <asp:gridview runat="server" DataSourceID="SqlDataSource1"></asp:gridview>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</body>

</html>
