<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangeFormatToVertical.aspx.cs" Inherits="MyWebFormCases.javascriptTwo.ChangeFormatToVertical" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-3.3.1.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="1m, 3m, 5m, 6m, 10m"></asp:Label>


        <script>

            $(function () {
              var content=  $("#Label1").html();
                var arr = content.split(",");  //the array will be ["1m","2m","3m","5m","6m","10m"]
                var html = "";
                for (var i = 0; i < arr.length; i++) {
                    html = html + "|" + "-" + arr[i] + "<br/>";
                   

                }
                
                 $("#Label1").html(html);
            })
    
        </script>
    </form>
</body>
</html>
