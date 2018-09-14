<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlOverview.ascx.cs" Inherits="MyWebFormCases.ExtraControls.WebUserControlOverview" %>
<div style="width:200px;height:300px;display:inline-block" >
<asp:Panel ID="Panel1" runat="server" BackColor="WhiteSmoke" ScrollBars="Auto" Width ="195" Height="295" >
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
            <ContentTemplate>
                <asp:Timer ID="Timer1" runat="server" Interval="1000" >
                </asp:Timer>
                <asp:Label ID="lblAnlage" runat="server" Text="Anlage" Width="100px"></asp:Label>
                <br />
                <br />
                <asp:Label runat="server" Text="Vorlauf" Width="100"></asp:Label>
                <asp:Label ID="LabelKesselVorlaufIst" runat="server" Text="30.5"></asp:Label>
                <asp:Label runat="server" Text="Rücklauf" Width="100"></asp:Label>
                <asp:Label ID="LabelKesselRuecklaufIst" runat="server" Text="20.5"></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>
    </asp:Panel>
</div>