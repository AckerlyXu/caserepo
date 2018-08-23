<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dropDownReader.aspx.cs" Inherits="WebFormCases.DropDownList.dropDownReader" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     
        <div>

            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="City" DataValueField="SID"></asp:DropDownList>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebFormCases.Models.supplyModelConnectionString2 %>" SelectCommand="SELECT [SID], [City] FROM [Suppliers]"></asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
