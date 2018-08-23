<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FileDownloadDemo.aspx.vb" Inherits="VBWebForm.FileDownloadDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
 
</head>
<body>
    
    <form id="form1" runat="server">
    <iframe ID="ifrm_dcbform" runat="server" name="I5" scrolling="yes" style="height:300px; width:360px"
        src="~/File/print.pdf"
        ></iframe>
    
        <asp:Button ID="Button1" runat="server" Text="download" OnClick="Button1_Click" />
        
      
    </form>
</body>
</html>
