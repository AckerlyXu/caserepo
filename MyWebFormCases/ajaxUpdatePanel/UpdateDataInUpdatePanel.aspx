<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateDataInUpdatePanel.aspx.cs" Inherits="MyWebFormCases.ajaxUpdatePanel.UpdateDataInUpdatePanel" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        
        
        <input type="button" id="btn"  value="showWidge" /><asp:TextBox ID="NewPopupDeadLineTxtbox" runat="server"></asp:TextBox>
        <script>
            $(function () {
                $("#NewPopupDeadLineTxtbox").datepicker();
                $("#btn").click(

                    function () {
                $( "#NewPopupDeadLineTxtbox" ).datepicker( "show" );
                    }
                )

            })
   
          
          //  $( ".selector" ).datepicker( "show" )
        </script>
    </form>
</body>
</html>
