<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelectDropDownThroughQueryString.aspx.cs" Inherits="MyWebFormCases.DropDownListDemo.SelectDropDownThroughQueryString" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:DropDownList ID="DropDownList1" runat="server" OnDataBound="DropDownList1_DataBound" ></asp:DropDownList>
    </form>
</body>
</html>
