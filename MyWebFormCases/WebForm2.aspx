<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="MyWebFormCases.WebForm2" %>

<%@ Register Src="~/WebUserControl1.ascx" TagPrefix="uc1" TagName="WebUserControl1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      <uc1:WebUserControl1 runat="server" ID="WebUserControl1" />
        <asp:Label ID="lblState" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
