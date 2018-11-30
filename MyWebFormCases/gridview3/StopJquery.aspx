<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StopJquery.aspx.cs" Inherits="MyWebFormCases.gridview3.StopJquery" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
       <head id="Head1" runat="server">
 <title>New Mailbox RT</title>


  
  <%--  <link href="../../Styles/ConfirmBox.css" rel="stylesheet" />
    <link href="../../Styles/AddForm.css" rel="stylesheet" />--%>
    <%--<script src="<%# ResolveUrl("~/") %>Scripts/jquery-1.9.1.min.js" type="text/javascript"></script>--%>

   
           <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.4.4/jquery.js"></script>
           <script src="../Scripts/jquery.activity-indicator.js"></script>

    
</head>
<body>
    <form id="form1" runat="server">
      <div class="circle1">
                    </div>

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
      
        <script>


            function SubmittProgress() {
                $(document).ready(function () {

                    $(".EditButton").click(function (e) {
                        $('.circle1').activity({ segments: 12, width: 6, space: 0, length: 3, color: '#000', speed: 2 });
                       
                    });

                });
            }

              function GetGridValue(cellValue) {
            var txtBoxContent = cellValue
            document.getElementById('<%=txtExistingUser.ClientID%>').value = txtBoxContent
                 var modalPopup = $find('mpe')
                 modalPopup.hide()
        }
        function GetGridValue(cellValue) {
            var txtBoxContent = cellValue
            document.getElementById('<%=txtManager.ClientID%>').value = txtBoxContent
            var modalPopup = $find('managerPopup')
            modalPopup.hide()
        
            $('.circle1').html("");

            }
         
        </script>
     

        
   
         
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <script type="text/javascript">

                    Sys.Application.add_load(SubmittProgress);
                </script>
                
                       
                                <td>Existing User</td>
                                <td>
                                    <asp:RadioButton ID="rbtnNewMailboxExistUser" GroupName="existUser" runat="server" />
                                    <asp:TextBox ID="txtExistingUser" runat="server"></asp:TextBox>
                                    <asp:Button ID="btnNewMailboxBrowse" CssClass="EditButton" runat="server" Text="Browse" />
                                </td>
                            </tr>
                            <tr>
                                <td>New User</td>
                                <td>
                                    <asp:RadioButton ID="rbtnMailboxNewUser" GroupName="existUser" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td>Organizational Unit</td>
                                <td>
                                    <asp:TextBox ID="txtOUPath" runat="server"></asp:TextBox>
                                    *
                                    <asp:Button ID="AddOu" CssClass="EditButton" runat="server"  Text="Browse" />
                                    
                                    <asp:HiddenField ID="hdnfieldOu" runat="server" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="NeededFields" runat="server" ControlToValidate="txtOUPath" ErrorMessage="* OU" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Manager</td>
                                <td>
                                    

                                </td>

                   
                </div>
                <asp:Panel Style="display: none;" ID="MgrPopupPanel1" runat="server">
                    <div id="MgrPopupMainContent">
                        <div id="MgrPopupToolbox">
                            <asp:TextBox ID="ManagerName" runat="server"></asp:TextBox>
                            <asp:Button ID="SearchManager" CssClass="EditButton" runat="server" Text="Search"  />
                        </div>
                        <div id="DivGridTableManager">
                            
                            <asp:GridView ID="GridView2" runat="server" 
                                OnRowDataBound="GridMail_RowDataBound" AllowSorting="True" OnSorting="GridView2_Sorting" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                          
                                    <asp:BoundField DataField="AccountName" HeaderText="AccountName" SortExpression="AccountName" />
                                </Columns>
                                <FooterStyle CssClass="GridFooter" />
                                <HeaderStyle CssClass="GridHeader" />
                                <PagerStyle CssClass="GridPage" />
                                <RowStyle CssClass="GridRaw" />
                                <SelectedRowStyle CssClass="GridSelectedRow" />
                                <SortedAscendingCellStyle CssClass="GridSort" />
                            </asp:GridView>
                            <br />
                        </div>
                        <asp:Button ID="btnCloseManager" CssClass="EditButton" runat="server" Text="Close" />
                        <asp:Button ID="btnOkManager" CssClass="EditButton" runat="server" Text="OK" />
                    </div>
                </asp:Panel>


                    <asp:TextBox ID="txtManager" runat="server"></asp:TextBox>
                                    <asp:Button ID="btnManager" CssClass="EditButton" Text="Browse" runat="server"></asp:Button>
              
                               <ajax:ModalPopupExtender ID="ModalPopupExtender1" runat="server"
                                    TargetControlID="btnManager" PopupControlID="MgrPopupPanel1"
                                   BehaviorID="managerPopup"  ></ajax:ModalPopupExtender>
            </ContentTemplate>
        </asp:UpdatePanel>
       
    </form>
</body>
</html>