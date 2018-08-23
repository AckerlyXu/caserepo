<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RadNumericTextBox.aspx.cs" Inherits="WebFormCases.ExtraControls.RadNumericTextBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-1.10.2.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
         
            <asp:textbox ID="txtClientIDSelect" Runat="server" AutoPostBack="false"   
                                DataType="System.Int32" ValidationGroup="Submit" 
                                  MaxLength="6" Width="50px" onkeyup="NumericValue1KeyDown(this,event)"    > 
                           
                                   
                            </asp:textbox>
                            <asp:RequiredFieldValidator ID="reqClientID" runat="server" ControlToValidate="txtClientIDSelect" ValidationGroup ="Submit"
                    ErrorMessage="ClientID is required." ToolTip="ClientID is required." InitialValue="--Select--"
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
                          
                            &nbsp;
                            <asp:Button ID="btnSubmitClient" runat="server" Text="SUBMIT" ValidationGroup ="Submit"  Enabled="false"
                                onclick="btnSubmitClient_Click" />

<script type="text/javascript">
                
            function NumericValue1KeyDown(sender, e) {
            var key = e.keyCode;
            var textCount = 0;
            textCount = document.getElementById('<%= txtClientIDSelect.ClientID %>').value
            //setTimeout(function() { }, 200);
            if(textCount.length >= 6)
            {
             document.getElementById('<%=btnSubmitClient.ClientID %>').disabled = false ;
             document.getElementById('<%=btnSubmitClient.ClientID %>').focus();
            }
            }
</script>

        </div>
    </form>
</body>
</html>
