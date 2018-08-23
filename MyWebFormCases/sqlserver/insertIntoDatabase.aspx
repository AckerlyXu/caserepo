<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="insertIntoDatabase.aspx.cs" Inherits="MyWebFormCases.sqlserver.insertIntoDatabase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <asp:TextBox ID="TextBox1" runat="server" Width="267px"></asp:TextBox>
&nbsp;&nbsp;
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
    </form>
</body>
</html>
