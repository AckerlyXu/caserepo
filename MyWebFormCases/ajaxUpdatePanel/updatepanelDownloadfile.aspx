<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updatepanelDownloadfile.aspx.cs" Inherits="MyWebFormCases.ajaxUpdatePanel.updatepanelDownloadfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" >
            <ContentTemplate >
                   <asp:Button runat="server" Text="Button" OnClick="Unnamed_Click" ID="btn" /> 
            </ContentTemplate>
        <Triggers >
            
            <asp:PostBackTrigger ControlID="btn"   />
            
        </Triggers>
        </asp:UpdatePanel>
        
    </form>
</body>
</html>
