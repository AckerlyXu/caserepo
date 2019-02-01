<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModelExtenderExe.aspx.cs" Inherits="MyWebFormCases.ExtraControls2.ModelExtenderExe" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 
  
</head>
<body>
    <form id="form1" runat="server">
       <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">

            <ContentTemplate>
                 
                <asp:Panel ID="Panel1" runat="server">
                    <asp:Button ID="Button2" runat="server" Text="hide pop up" />
            content of model pop up
            <img src="../images/WingtipToysBak/busdouble.png"  />
                       <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="Button1" PopupControlID="Panel1" CancelControlID="Button2"></ajaxToolkit:ModalPopupExtender>
        </asp:Panel>
                <asp:Button ID="Button1" runat="server" Text="show pop up"  />
               
            </ContentTemplate>

        </asp:UpdatePanel>
      
        
       
        <img src="../images/icons/ok.png" id="ok" width="40px" height="40px" style="z-index:20000;position:relative"/>
     
       
    </form>

   <script>
         window.onload = function(){
document.getElementById("ok").onmouseenter=function(){

 document.getElementById("Button1").click();  

}
      document.getElementById("ok").onmouseout=function(e){

 document.getElementById("Button2").click();  

}   

} 
   </script>
 
    </body>
</html>
