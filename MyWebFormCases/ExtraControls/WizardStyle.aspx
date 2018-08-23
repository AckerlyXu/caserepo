<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WizardStyle.aspx.cs" Inherits="MyWebFormCases.ExtraControls.WizardStyle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        
       
        .sidebar1{
             background-color:lawngreen
        }
        .sidebar2{
             background-color:brown
        }
        .step1{
            background-color:burlywood
        }
        
          .step2{
            background-color:red
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       
        <asp:Wizard ID="Wizard1" runat="server" OnActiveStepChanged="Wizard1_ActiveStepChanged" >
            
  <HeaderTemplate>
     Header content.
  </HeaderTemplate>

            <SideBarTemplate>
                <asp:ListView ID="SideBarList" runat="server" ItemPlaceholderID="ItemPlaceHolder">
                    <ItemTemplate>
                      <li>   <asp:LinkButton ID="SideBarButton" runat="server"></asp:LinkButton> </li>
              
                    </ItemTemplate>
                    <LayoutTemplate>
                        <ul runat="server" id="ul">
                            
                                <asp:PlaceHolder ID="ItemPlaceHolder" runat="server"></asp:PlaceHolder>
                           
                        </ul>
                    </LayoutTemplate>
                </asp:ListView>
            </SideBarTemplate>

  <WizardSteps>
    <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">
        <div runat="server" id="step1">       Step 1 Content.</div>
 
   </asp:WizardStep>
  <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
        <div runat="server" id="step2">       Step 1 Content.</div>
  </asp:WizardStep>
  </WizardSteps>

               <LayoutTemplate>
      <div class="wizard">
         <div class="headPlaceHolder wizard-header">
            <asp:PlaceHolder ID="headerPlaceHolder" runat="server" />
         </div>
      <div class="sidePlaceHolder sidebar">
         <asp:PlaceHolder ID="sideBarPlaceHolder" runat="server" />
      </div>
      <div class="stepPlaceHolder step"  id="step" >
         <asp:PlaceHolder ID="WizardStepPlaceHolder" runat="server" />
      </div>
      <div class="navPlaceHolder navigation">
         <asp:PlaceHolder ID="navigationPlaceHolder" runat="server" />
      </div>
   </div>
</LayoutTemplate>
             
</asp:Wizard>

    </form>
</body>
</html>
