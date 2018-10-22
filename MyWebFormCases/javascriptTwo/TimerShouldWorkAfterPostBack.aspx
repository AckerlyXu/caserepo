<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TimerShouldWorkAfterPostBack.aspx.cs" Inherits="MyWebFormCases.javascriptTwo.TimerShouldWorkAfterPostBack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<script src="../Scripts/jquery-3.3.1.js"></script>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Button ID="Button1" runat="server" Text="login" OnClick="Button1_Click"  />
        </div>
        <asp:Button ID="Button2" runat="server" Text="postback" />

       <%-- <asp:HiddenField ID="loginTime" runat="server" />--%>
        <script>

             
            function alertWarning(interval) {
                console.log(new Date().getSeconds());
                var time = setTimeout(function () {
                    setInterval(function () {
                      
                        console.log(new Date().getSeconds());
                    
                        alert("warning");
                         window.location.reload();
                    }, 5000);
                     console.log(new Date().getSeconds());
                    alert("warning");
                    window.location.reload();

                },interval*1000)
                <%--var seconds = parseInt($("#<%=loginTime.ClientID %>").val());
                setInterval(function () {
                    if ((new Date().getSeconds() - seconds) % 5 == 0) {
                        console.log(new Date().getSeconds());
                        console.log((new Date().getSeconds() - seconds));
                        alert("warning");
                    }
                
                },1000)--%>
            }

        </script>
    </form>
</body>
</html>
