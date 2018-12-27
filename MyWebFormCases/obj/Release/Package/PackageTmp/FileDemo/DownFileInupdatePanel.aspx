<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DownFileInupdatePanel.aspx.cs" Inherits="MyWebFormCases.FileDemo.DownFileInupdatePanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

            <asp:UpdatePanel runat="server" >
                <ContentTemplate >
        <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="false"  >
        
            <Columns>
                <asp:TemplateField HeaderText="download">

                    <ItemTemplate>
<asp:LinkButton ID="AddButton" runat="server" CommandName="Download" CommandArgument='<%# Container.DataItemIndex %>' Text="Descargar" ValidationGroup="ValidationGoupGrid" ></asp:LinkButton>
</ItemTemplate>
                </asp:TemplateField>
                
            </Columns>
        </asp:GridView>
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Download" Width="114px" />
                </ContentTemplate>
                <Triggers >
                   
                    <asp:PostBackTrigger ControlID="GridView1"  />
                 <asp:PostBackTrigger ControlID="Button3"  />
                </Triggers>
                </asp:UpdatePanel>

    </form>
</body>
</html>
