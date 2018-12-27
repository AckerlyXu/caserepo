<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="backgroundFullPage.aspx.cs" Inherits="MyWebFormCases.bootstrap.backgroundFullPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>

        body {
            background-image: url('/images/WingtipToys/truckfire.png');
            background-size: 100% 100%;
            
            background-attachment: fixed;
        }



    </style>
      
</head>
<body>
    <form id="form1" runat="server">
      




       


<asp:Image ID="logo" runat="server"
ImageUrl= "~/images/icons/cut.png" Style="position:fixed;top:18px;left:0;width:100px;height:100px"  /> 



    </form>
</body>
</html>
