<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="XSSPrevent.aspx.vb" Inherits="VBWebForm.XSSPrevent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="200px" Height="200px" Text="<a href='www.helloword.com'></a><script>alert('hello')  <script> some@gmail.com   http://localhost.com" >


        </asp:TextBox>

    </form>
    <script src="../Scripts/jquery-3.3.1.js"></script>
    <script>

        function htmlEncode (html){
        
          var temp = document.createElement ("div");
  //handling browser compatibility
          (temp.textContent != undefined ) ? (temp.textContent = html) : (temp.innerText = html);
             // use innerHTML to get encoded html content
          var output = temp.innerHTML;
         temp = null;
         return output;
        }


        $("#TextBox1").blur(
            function () {
                var code = htmlEncode($(this).val());
              code= code.replace(/(http\:\/\/|https\:\/\/)([a-z0-9][a-z0-9\-]*\.)+[a-z0-9][a-z0-9\-]*/g,'')
                    
                $(this).val(code);
            }
        )
    </script>
</body>
</html>
