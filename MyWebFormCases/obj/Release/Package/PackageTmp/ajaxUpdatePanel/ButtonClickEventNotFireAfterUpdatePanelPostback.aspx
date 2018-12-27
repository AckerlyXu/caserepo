<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ButtonClickEventNotFireAfterUpdatePanelPostback.aspx.cs" Inherits="MyWebFormCases.ajaxUpdatePanel.ButtonClickEventNotFireAfterUpdatePanelPostback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
    <link href="../jqueryUiPlugin/jquery-ui-multidatespicker/jquery-ui.multidatespicker.css" rel="stylesheet" />
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <script src="../jqueryUiPlugin/jquery-ui-multidatespicker/jquery-ui.multidatespicker.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="upanel1" runat="server"  UpdateMode="Conditional">
	<ContentTemplate>
		<div id="mdp-demo"></div>
        <asp:HiddenField ID="HiddenField1" runat="server" />
         <asp:Button runat="server" Text="Button"  ID="btnAdd" OnClick="btnAdd_Click" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
	</ContentTemplate>
           
</asp:UpdatePanel>
        
        


    <script>
        var date = new Date();
        $('#mdp-demo').multiDatesPicker({
            dateFormat: "d-m-y"
        });
		
        $(function () {
            $("#btnAdd").click(function () {
              
                var dates = $('#mdp-demo').multiDatesPicker('getDates');
                $("#HiddenField1").val(dates);
            })
        })
            $('#mdp-demo').multiDatesPicker({
            dateFormat: "d-m-y"
                });
        $(document).ready(function () {
            Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestHandler);

            function EndRequestHandler(sender, args) {
                $('#mdp-demo').datepicker({ dateFormat: 'd-m-y' });

                $('#mdp-demo').multiDatesPicker({
            dateFormat: "d-m-y"
                });

                  $("#btnAdd").click(function () {
              
                var dates = $('#mdp-demo').multiDatesPicker('getDates');
                $("#HiddenField1").val(dates);
            })

            }
        });

    </script>


    </form>
</body>
</html>
