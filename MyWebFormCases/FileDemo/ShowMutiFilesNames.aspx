<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowMutiFilesNames.aspx.cs" Inherits="MyWebFormCases.FileDemo.ShowMutiFilesNames" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="../Scripts/jquery-1.9.1.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
         <asp:FileUpload ID="Fileupload1" AllowMultiple="true" runat="server"  />
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
       
    </form>
   <script>
       $(function () {
           $("#Fileupload1").change(function () {
            var content=""
               for (var i = 0; i < this.files.length; i++) {
                   content += this.files[i].name + "    ";
               }
               alert(content);
           })
       })
   </script>
</body>
</html>
