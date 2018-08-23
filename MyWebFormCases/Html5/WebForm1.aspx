<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MyWebFormCases.Html5.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <div id="ScrollList" style="height:400px;overflow-y:auto;overflow-x:hidden">
<asp:GridView ID="PrepGrid" runat="server" AutoGenerateColumns="False" CellPadding="4" headerstyle-cssclass="centerHeaderText" 
ForeColor="#333333" GridLines="None" Font-Name="Verdana" Font-Names="Verdana" Width="900px" Height="25px" DataSourceID="SqlDataSource1">
  
<AlternatingRowStyle BackColor="White" ForeColor="#333333" Height="25px" />
<Columns>
<asp:TemplateField HeaderText="Sel">
<ItemTemplate>
<asp:CheckBox ID="fPrint" runat="server" AutoPostBack="true" />
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField DataField="customerid" HeaderText="Item">
<ItemStyle Width="200px"></ItemStyle>
<ControlStyle></ControlStyle>
<HeaderStyle></HeaderStyle>
<ItemStyle></ItemStyle>
</asp:BoundField>
<asp:BoundField DataField="companyName" HeaderText="Quantity">
<ItemStyle HorizontalAlign="Center" ></ItemStyle>
<ItemStyle></ItemStyle>
</asp:BoundField>
<asp:BoundField DataField="ContactName" HeaderText="Pick Unit">
<ItemStyle Width="140px"></ItemStyle>
<ItemStyle></ItemStyle>
</asp:BoundField>
<asp:TemplateField HeaderText="To Prep" ItemStyle-Width="500px" ItemStyle-HorizontalAlign="Center">
<ItemTemplate>
<asp:TextBox ID="toPrep" runat="server"   />
</ItemTemplate>
<EditItemTemplate>
</EditItemTemplate>
<ControlStyle Width="50px"></ControlStyle>

</asp:TemplateField>
</Columns>
<EditRowStyle BackColor="#999999" />
<FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
<HeaderStyle BackColor="#f9a11b" Font-Bold="True" ForeColor="White" Font-Size="Small" Height="25px" />
<PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
<RowStyle BackColor="#F7F6F3" ForeColor="#333333" Height="25px" />
<SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
<SortedAscendingCellStyle BackColor="#E9E7E2" />
<SortedAscendingHeaderStyle BackColor="#506C8C" />
<SortedDescendingCellStyle BackColor="#FFFDF8" />
<SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString2 %>" SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
</div>
    </form>
</body>
</html>

