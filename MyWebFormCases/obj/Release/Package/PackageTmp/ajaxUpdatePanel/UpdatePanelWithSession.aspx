<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdatePanelWithSession.aspx.cs" Inherits="MyWebFormCases.ajaxUpdatePanel.UpdatePanelWithSession" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional"  ChildrenAsTriggers="true">
            <ContentTemplate>
                <asp:Button runat="server" Text="click"  OnClick="btn_Click" ID="btn"/>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
           
            </ContentTemplate>

        </asp:UpdatePanel>
    </form>
</body>
</html>
