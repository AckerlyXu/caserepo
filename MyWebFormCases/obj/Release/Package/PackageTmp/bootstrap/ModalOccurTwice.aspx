<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModalOccurTwice.aspx.cs" Inherits="MyWebFormCases.bootstrap.ModalOccurTwice" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
   
    <form id="form1" runat="server">
         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
      
        <asp:Button ID="Btn_Popup_AlertStatus" runat="server" Text="showModal" CssClass="btn-modal"  />
        
                <ajaxToolkit:ModalPopupExtender runat="server" ID="MDL_Popup_AlertStatus" TargetControlID="Btn_Popup_AlertStatus" PopupControlID="Pnl_Popup_AlertStatus" BackgroundCssClass="bg-modal" OkControlID="Btn_OK_AlertStatus" CancelControlID="Btn_Close_AlertStatus">
                    <Animations>
      <OnShown>


         <FadeIn Duration="0.5" Fps="40" />
      </OnShown>
                    </Animations>
                </ajaxToolkit:ModalPopupExtender>

      
                 <asp:Button runat="server" Text="Button" id="UpdateJobStatus" OnClick="UpdateJobStatus_Click" ></asp:Button>
                                                      
         
                <asp:Panel ID="Pnl_Popup_AlertStatus" runat="server" CssClass="modal-mss" Style="display: none">
                    
                    <div class="modal-dialog">
        
                        <div class="modal-content">
                            <div class="modal-header border-bottom-0">
                                <asp:Label ID="Lab_Popup_AlertHeading_Success" runat="server" CssClass="modal-title h2 text-success font-weight-bold" Visible="true"><i class="fas fa-2x fa-check-square text-success" ></i>&nbsp;SUCCESS!</asp:Label>
                                <asp:Label ID="Lab_Popup_AlertHeading_Danger" runat="server" CssClass="modal-title h2 text-danger font-weight-bold" Visible="false"><i class="fas fa-2x fa-exclamation-triangle text-danger"></i>&nbsp;ERROR!</asp:Label>
                                <asp:Label ID="Lab_Popup_AlertHeading_Warning" runat="server" CssClass="modal-title h2 text-warning font-weight-bold" Visible="false"><i class="fas fa-2x fa-exclamation-triangle text-warning"></i>&nbsp;WARNING!</asp:Label>
                                <asp:Button ID="Btn_Close_AlertStatus" runat="server" Text="&#xf00d;" CssClass="btn btn-secondary btn-lg float-right fas fa-2x" />
                            </div>
                            <div class="modal-body">
                                <asp:Panel ID="Pnl_Alert_Row1" CssClass="form-group row" Visible="false" runat="server">
                                    <label for="Lab_Alert1" class="col-form-label col-4">Location Name:</label>
                                    <div class="col-6">
                                        <asp:Label ID="Lab_Alert1" runat="server" />
                                    </div>
                                </asp:Panel>
                
                                <asp:Panel ID="Pnl_Alert_Row2" CssClass="form-group row" Visible="false" runat="server">
                                    <label for="Lab_Alert2" class="col-form-label col-4">Account Id:</label>
                                    <div class="col-6">
                                        <asp:Label ID="Lab_Alert2" runat="server" />
                                    </div>
                                </asp:Panel>
                                <asp:Label class="col-form-label col-lg-4" ID="Lab_Popup_AlertMessage" runat="server" CssClass="d-block w-100 display-6 text-center" Text="Something Alerted Again!" />
                            </div>
            
       
                        </div>
                         
                 
                        <!-- Modal footer -->
                        <div class="modal-footer border-top-0">
                            <asp:Button ID="Btn_OK_AlertStatus" runat="server" Text="ok" CssClass="btn-modal" />
                            <span><i class="fas fa-trademark"></i>&nbsp;My Service Solutions, Inc.</span>
                        </div>
                    </div>
        
                </asp:Panel>
                <!-- END MODAL POPUP STATUS ALERT MESSAGE ---------- ------- -->




           <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
    </form>
</body>
</html>
