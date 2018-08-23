<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisableDropDownList.aspx.cs" Inherits="MyWebFormCases.DropDownListDemo.DisableDropDownList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <asp:DropDownList ID="ddlUploader" runat="server"  CssClass="btn btn-default btn-sm" OnSelectedIndexChanged="ddlUploader_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem>item1</asp:ListItem>
                <asp:ListItem>item2</asp:ListItem>
            </asp:DropDownList>
    </form>
</body>
</html>
