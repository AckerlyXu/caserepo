<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AffectOneWay2.aspx.vb" Inherits="VBWebForm.AffectOneWay2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView4" AutoGenerateColumns="false" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" style="font-weight: 700" Width="852px" PageIndex="5" Height="180px">
<Columns>
<asp:TemplateField HeaderText="">
<ItemTemplate>
<asp:TextBox ID="cobnumbers"  runat="server"></asp:TextBox>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="">
<ItemTemplate>
<asp:TextBox ID="EndDate" runat="server" Text="enddate"></asp:TextBox>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="">
<ItemTemplate>
<asp:TextBox ID="Startdate" runat="server" AutoPostBack="True" Text="startdate" Width="74px"></asp:TextBox>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="">
<ItemTemplate>
<asp:DropDownList ID="DropDownList1" runat="server"  style="font-weight: 700" AutoPostBack="True" on>
</asp:DropDownList>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="">
<ItemTemplate>
<asp:TextBox ID="Coboneno" runat="server" Height="21px" Width="60px" Text="coboneno"></asp:TextBox>
</ItemTemplate>
</asp:TemplateField>
</Columns>
<FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
<HeaderStyle BackColor="#94BE10" Font-Bold="True" Font-Size="12pt" ForeColor="White" />
<PagerStyle BorderColor="#8CAC21" BorderStyle="Solid" ForeColor="#8C4510" HorizontalAlign="Center" />
<RowStyle BackColor="White" BorderColor="#99CC00" Font-Size="11pt" ForeColor="Black" HorizontalAlign="Center" />
<SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
<SortedAscendingCellStyle BackColor="#FFF1D4" />
<SortedAscendingHeaderStyle BackColor="#B95C30" />
<SortedDescendingCellStyle BackColor="#F1E5CE" />
<SortedDescendingHeaderStyle BackColor="#93451F" />
</asp:GridView>

    </form>
</body>
</html>
