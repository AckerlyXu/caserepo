<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="updatepanelWithTimer.aspx.vb" Inherits="VBWebForm.updatepanelWithTimer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        
        <asp:UpdatePanel ID="UpdatePanel1" runat="server"
           
            >

            <ContentTemplate>
                 <asp:Timer runat="server" OnTick="timer1_Tick" Interval="2000"  ID="timer1" ></asp:Timer>
                  <asp:Label runat="server" Text="Label1" ID="Label1"></asp:Label>
            </ContentTemplate>
          

        </asp:UpdatePanel>
        <script>
            //Sys.WebForms.PageRequestManager.getInstance().add_endRequest(
            //    function (sender, e) {
            //        console.log(sender);
            //        console.log(e);
            //        callback()
            //    }

            //)
            function callback() {
                alert("callback")
            }
        </script>
    </form>
</body>
</html>
