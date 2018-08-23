<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="UpdatePanelUpDate.aspx.vb" Inherits="VBWebForm.UpdatePanelUpDate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
         
         <asp:UpdatePanel ID="UpdatePanel14" runat="server" style="width:750px;" UpdateMode="Conditional" ChildrenAsTriggers="false">
            <ContentTemplate>
                <fieldset style="width:750px; height: 11px;">              
                <asp:linkButton ID="Button14" runat="server" Text="Export" OnClick="Button14_Click" Style="width: 56px" ForeColor="Black" />
                    &nbsp;              
                <asp:Label ID="Label14" runat="server" Text="CIS Manufacturer Parts"></asp:Label>
                    &nbsp;
                    <div style="display: inline-block">
                <asp:UpdateProgress ID="UpdateProgress14" runat="server" AssociatedUpdatePanelID="UpdatePanel14">
                    <ProgressTemplate>
                            <script type="text/javascript">
                                document.write("<div class='UpdateProgressBackground'></div>");</script>
                            <span class="UpdateProgressContent"                                    
                                    style="background-color: #FFFFFF; font-weight: bold; left: 572px; height: 29px;">CIS Manufacturer Parts export in progress...
                            <asp:Image id="CISWaitCon" runat="server" ImageUrl="~/Images/progress.gif"/>
                                </span>
                    </ProgressTemplate>
                </asp:UpdateProgress>
                </fieldset>
                        <asp:Label ID="Label25" runat="server"></asp:Label>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Button14" EventName="Click"/>
            </Triggers>
        </asp:UpdatePanel>
    </form>
</body>
</html>
