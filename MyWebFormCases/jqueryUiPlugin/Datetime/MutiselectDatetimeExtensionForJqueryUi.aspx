<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MutiselectDatetimeExtensionForJqueryUi.aspx.cs" Inherits="MyWebFormCases.jqueryUiPlugin.Datetime.MutiselectDatetimeExtensionForJqueryUi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

     <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
 
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <link href="../jquery-ui-multidatespicker/jquery-ui.multidatespicker.css" rel="stylesheet" />
    
    <script src="../jquery-ui-multidatespicker/jquery-ui.multidatespicker.js"></script>
</head>
<body>
    <form id="form1" runat="server">
      <div id="mdp-demo"></div>

        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
       
        <input type="hidden"  id="dates" value="" />
            <asp:HiddenField ID="HiddenField1" runat="server" />
    </form>

</body>

   <script>
       var date = new Date();
$('#mdp-demo').multiDatesPicker({
	
	addDates: [date.setDate(14), date.setDate(19)]
       });
       $(function () {

           $("#Button1").click(function () {

               var dates = $('#mdp-demo').multiDatesPicker('getDates');
               $("#HiddenField1").val(dates
               );
              

           })
       })
   </script>
</html>
