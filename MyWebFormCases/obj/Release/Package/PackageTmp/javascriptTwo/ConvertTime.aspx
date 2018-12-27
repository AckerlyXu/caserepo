<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConvertTime.aspx.cs" Inherits="MyWebFormCases.javascriptTwo.ConvertTime" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-3.3.1.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="TextBox1" runat="server" Text="10:40:9">

        </asp:TextBox>
        <input type="button"  value="click"/>
        <script>
            $(function () {
              
                $("input[type=button]").click(function () {

                    var value = $("input:text[id=TextBox1]").val();
                    if (value.indexOf(":") != value.lastIndexOf(":")) {  //ensure there are more than one ":"
                         $("input:text[id=TextBox1]").val(value.substring(0, value.lastIndexOf(":")));  // get the hour and minute part of time
                    }
                   
                })
            })
        </script>
    </form>
</body>
</html>
