﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updatePanelWithTimer.aspx.cs" Inherits="MyWebFormCases.ajaxUpdatePanel.updatePanelWithTimer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<script src="../Scripts/jquery-1.10.2.min.js"></script>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:scriptmanager ID="manager" runat="server"></asp:scriptmanager>

            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Timer ID="timer1" runat="server" Interval="4000" OnTick="timer1_Tick"></asp:Timer>
                     <asp:Label runat="server" Text="" ID="label1"></asp:Label>
                         
                </ContentTemplate>
          
            </asp:UpdatePanel>

             <asp:Label runat="server" Text="" ID="label2"></asp:Label>
        </div>
        <script>
            //https://blog.csdn.net/goodshot/article/details/45950847
               if (!(typeof (Sys) == "undefined" || typeof (Sys.WebForms) == 
"undefined" || typeof(Sys.WebForms.PageRequestManager) == "undefined")) {
 
         var _myPageRequestManager = Sys.WebForms.PageRequestManager.getInstance(); 
                   this._MyendRequestHandlerDelegate = Function.createDelegate(this, this._MyhandleEndRequest);
                
         _myPageRequestManager.add_endRequest(this._MyendRequestHandlerDelegate); 
     } 
     load_sub(); 

        </script>
    </form>
    <script>

      


            
            //setInterval(function () {

            //    $("#label2").html(new Date().toLocaleString());

            //}, 4000);
    </script>
</body>
</html>
