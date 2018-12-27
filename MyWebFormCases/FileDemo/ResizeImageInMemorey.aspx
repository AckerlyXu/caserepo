<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResizeImageInMemorey.aspx.cs" Inherits="MyWebFormCases.FileDemo.ResizeImageInMemorey" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Image ID="Image1" runat="server" ImageUrl="/services/writeImage.ashx?id=2" />
    </form>
</body>
</html>
