<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doPostBackJs.aspx.cs" Inherits="MyWebFormCases.ajaxUpdatePanel.doPostBackJs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-3.3.1.js"></script>
</head>
<body>
    
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel runat="server" id="UpdatePanel1" UpdateMode="Conditional" OnLoad="UpdatePanel1_Load">
  <ContentTemplate>
    <!-- Stuff -->
      <asp:TextBox ID="PanelHideShow" runat="server"></asp:TextBox>
      
  </ContentTemplate>
</asp:UpdatePanel>

<asp:UpdatePanel runat="server" id="UpdatePanel2" UpdateMode="Conditional" OnLoad="UpdatePanel2_Load">
  <ContentTemplate>
    <!-- Different stuff -->
       <asp:button runat="server" text="Button"  />
  </ContentTemplate>
   
</asp:UpdatePanel>

<asp:UpdatePanel runat="server" id="UpdatePanel3" UpdateMode="Conditional" OnLoad="UpdatePanel3_Load" ChildrenAsTriggers="false"> 
<ContentTemplate>
 <!-- Different stuff --> 
</ContentTemplate> 

    <%--<Triggers ><asp:AsyncPostBackTrigger  ControlID="Button1" EventName="click" /></Triggers>--%>
</asp:UpdatePanel>
           <asp:Button ID="Button1" runat="server" Text="Button"  />
    </form>

</body>
  

    <script>
        $(document).ready(function () {            
            //$("#ContentPlaceHolder1_BoxContent_Button1").click();           
            __doPostBack('UpdatePanel1', 'Update-Both');
        });
    </script>
</html>
