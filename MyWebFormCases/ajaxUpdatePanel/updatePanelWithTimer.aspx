<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updatePanelWithTimer.aspx.cs" Inherits="MyWebFormCases.ajaxUpdatePanel.updatePanelWithTimer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<script src="../Scripts/jquery-1.10.2.min.js"></script>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:scriptmanager runat="server"></asp:scriptmanager>

            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Timer ID="timer1" runat="server" Interval="4000" OnTick="timer1_Tick"></asp:Timer>
                     <asp:Label runat="server" Text="" ID="label1"></asp:Label>
                         
                </ContentTemplate>
          
            </asp:UpdatePanel>

             <asp:Label runat="server" Text="" ID="label2"></asp:Label>
        </div>
    </form>
    <script>
            
            //setInterval(function () {

            //    $("#label2").html(new Date().toLocaleString());

            //}, 4000);
    </script>
</body>
</html>
