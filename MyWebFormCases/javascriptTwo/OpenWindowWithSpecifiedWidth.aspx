<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OpenWindowWithSpecifiedWidth.aspx.cs" Inherits="MyWebFormCases.javascriptTwo.OpenWindowWithSpecifiedWidth" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-3.3.1.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <input type="button" id="btn" onclick="openparts()" />
    </form>
    <script>
function openparts() {
            var sheight = $(window).height();   // returns height of browser viewport
            var swidth = $(window).width();
            swidth = (swidth * .2);
            //get server ip address held in hidden textbox
      
            var sappurl = '/WebForm3.aspx';
            var sopts = 'height=600,width=' + swidth;
            sopts += ',status=1,toolbar=0,menubar=0,location=0,resizable=1';
            var ws1 = window.open(sappurl, '_blank' ,sopts);
            ws1.focus();
            return false;
        }
    </script>

</body>
</html>
