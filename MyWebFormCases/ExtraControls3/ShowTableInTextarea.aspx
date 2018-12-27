<%@ Page   Language="C#" AutoEventWireup="true" CodeBehind="ShowTableInTextarea.aspx.cs" Inherits="MyWebFormCases.ExtraControls3.ShowTableInTextarea" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <script src="https://cdn.ckeditor.com/ckeditor5/11.2.0/classic/ckeditor.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox runat="server" ID="mainTextBox"
            ValidateRequestMode="Disabled"  TextMode="MultiLine"
 ></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Button" />
  
       
        <script>


    ClassicEditor
        .create( document.querySelector( '#mainTextBox' ) )
        .catch( error => {
            console.error( error );
        } );
</script>
    </form>
</body>
</html>
