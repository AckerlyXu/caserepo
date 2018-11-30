<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DropDownPostback.aspx.vb" Inherits="VBWebForm.DropDownPostback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:DropDownList ID="orgdrp" runat="server" AutoPostBack="true" CausesValidation="false"  Width="218px">
                            <asp:ListItem>TSD</asp:ListItem>
                            <asp:ListItem>TSF</asp:ListItem>
                        </asp:DropDownList>
    </form>
</body>
</html>
