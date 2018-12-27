<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="MyWebFormCases.FileDemo.UploadImage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:Label ID="productName" runat="server" Text="productName"></asp:Label><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
        <asp:Label ID="image" runat="server" Text="image"></asp:Label> <asp:FileUpload ID="FileUpload1" runat="server" /><br />
        <asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click" />
    </form>
</body>
</html>
