<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hyperlinkuse.aspx.cs" Inherits="MyWebFormCases.hyperlinkuse" %>
<%@ Register Assembly="MyWebFormCases" Namespace="MyWebFormCases" tagprefix="uc1"  %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:WebUserControl1 runat="server"></uc1:WebUserControl1>
        </div>
    </form>
</body>
</html>
