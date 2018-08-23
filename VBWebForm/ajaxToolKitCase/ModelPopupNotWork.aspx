<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ModelPopupNotWork.aspx.vb" Inherits="VBWebForm.ModelPopupNotWork" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
              <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

         
        <asp:LinkButton ID="lnkBtnCustomerAccountShortFormWithOutPromotion" runat="server" CssClass="yui3-button yui3-HomePage yui3-Button2" 
            OnClick="lnkBtnCustomerAccountShortFormWithOutPromotion_Click"
style="line-height:120%;" Text="test" />

         <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
          <ajaxToolkit:ModalPopupExtender ID="mpeCustomerAccountShortFormWithOutPromotion" runat="server"
          TargetControlID="form1"  PopupControlID="Calendar1" 
          
        ></ajaxToolkit:ModalPopupExtender>
        
         
    </form>
  
</body>
</html>
