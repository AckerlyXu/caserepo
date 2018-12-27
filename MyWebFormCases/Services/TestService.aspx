<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestService.aspx.cs" Inherits="MyWebFormCases.Services.TestService" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="../Scripts/jquery-3.3.1.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
    <script>
        $.ajax({

            url: ' /Services/ArgumentTest.asmx/selectMyTest',
            type: "post",
           // dataType: "json",
            contentType: "application/json; charset=utf-8",
          
    success: function (data) {
         console.log(data);
    }
              
                });
    </script>
</body>
</html>
