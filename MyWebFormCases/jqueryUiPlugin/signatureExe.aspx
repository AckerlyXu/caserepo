<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signatureExe.aspx.cs" Inherits="MyWebFormCases.jqueryUiPlugin.signatureExe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="singnaturejs/jquery.js"></script>
    <!-- this, preferably, goes inside head element: -->
<!--[if lt IE 9]>
<script src="singnaturejs/flashcanvas.js"></script>

<![endif]-->


<!-- you load jquery somewhere before jSignature ... -->
    <script src="singnaturejs/jSignature.min.js"></script>
<script>
    $(document).ready(function() {
var arguments = {
            width: '100%',
            height: '100%',
            color:'#000',
            "decor-color": "transparent",
            lineWidth: '3'
        };

        $("#signature").jSignature(arguments);
    })
function saveData(){
var datapair=$("#signature").jSignature("getData");//get the date of the signature
   //set the hiddenfield's value to the data to pass it to the sever
    $("#HiddenField1").val(datapair);

}
function clearData(){
//clear the content
$("#signature").jSignature("clear");

}
</script>
</head>
<body>
    <form id="form1" runat="server">
        
<div id="signature" style="border:1px solid black;width:200px"></div>


        <asp:HiddenField ID="HiddenField1" runat="server" />
       product name: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
   <asp:Button ID="Button1" runat="server" Text="submit" OnClientClick="saveData()" OnClick="Button1_Click" />
          <asp:Button ID="Button2" runat="server" Text="clear" OnClientClick="return clearData()"  />
    </form>
</body>
</html>
