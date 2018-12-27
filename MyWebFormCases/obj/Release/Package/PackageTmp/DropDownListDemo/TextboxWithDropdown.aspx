<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TextboxWithDropdown.aspx.cs" Inherits="MyWebFormCases.DropDownListDemo.TextboxWithDropdown" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="SID" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" ></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:supplyModel1 %>" SelectCommand="SELECT [SID], [Name] FROM [Suppliers]"></asp:SqlDataSource>
        <br />
        <asp:TextBox ID="MyFormTextBox" runat="server"></asp:TextBox>
    </form>
</body>
</html>
