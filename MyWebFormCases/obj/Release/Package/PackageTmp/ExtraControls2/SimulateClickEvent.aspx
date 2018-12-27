<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SimulateClickEvent.aspx.cs" Inherits="MyWebFormCases.ExtraControls2.SimulateClickEvent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <%-- <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>--%>
       
        <input id="Text1" type="button" value="button1" />
   <a href="#" onclick="document.getElementById('<%=btnTemporaryButton.ClientID %>').click()">click me</a>

        <asp:Button ID="btnTemporaryButton" runat="server" Text="Button" OnClick="Button1_Click" />
        <script>

             function temporaryButtonClick() { document.getElementById("<%= btnTemporaryButton.ClientID %>").click();}
        
    </script>
        
    </form>
    
</body>
</html>
