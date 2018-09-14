<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TwoAccordionTemplateHasSameId.aspx.cs" Inherits="MyWebFormCases.ExtraControls.TwoAccordionTemplateHasSameId" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       
       
        

      
 
   
        
            <ajaxToolkit:Accordion ID="Accordion2" runat="server" >
             <HeaderTemplate>
                <%# Eval("name") %>
            </HeaderTemplate>
            <ContentTemplate>
                <%# Eval("address") %>
            </ContentTemplate>

        </ajaxToolkit:Accordion>

     

       
         
    </form>
    
</body>

</html>
