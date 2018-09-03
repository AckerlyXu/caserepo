<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MyWebFormCases.WebForm1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="Scripts/modernizr-2.8.3.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <title></title>
    <style>
        .modalBackground {
            background-color: Gray;
            filter: alpha(opacity=50);
            opacity: 0.7;
        }

        .pnlBackGround {
            position: fixed;
            top: 10%;
            left: 10px;
            width: 300px;
            height: 125px;
            text-align: center;
            background-color: White;
            border: solid 3px black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
   

          <%--  <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/NewFolder1/WebForm1.aspx">go back</asp:LinkButton>--%>
           
            
            <asp:Button ID="Button1" runat="server" Text="go back" OnClick="Button1_Click" />
            

        </div>
    </form>
</body>
</html>
