<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RepeaterDataBindDemo.aspx.vb" Inherits="VBWebForm.RepeaterDataBindDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <form id="form1" runat="server">
        <asp:Repeater ID="repeater" runat="server" DataSourceID="SqlDataSource1" OnItemDataBound="repeater_ItemDataBound" >
<HeaderTemplate>
    <table>
  </HeaderTemplate>
<ItemTemplate>

<tr><td align="left"><%#Eval ("question") %></td></tr>
</div>
<tr style="background-color:White;" align="left">

<td align="left"><%# Eval ("Option1") %> <asp:RadioButton ID="rad1" GroupName="Group1" runat="server" /></td>
 
<td align="left"><%# Eval ("Option2") %> <asp:RadioButton ID="rad2" GroupName="Group1" runat="server" /></td>

<td align="left"><%# Eval ("Option3") %> <asp:RadioButton ID="rad3" GroupName="Group1" runat="server" /></td>
  

    <td align="right"><img src="../images/icons/edit_add.png"/></td>


</tr>
</ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
</asp:Repeater>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EntityExeConnectionString %>" SelectCommand="SELECT [id], [Question], [Option1], [Option2], [Option3] FROM [Questions]" ></asp:SqlDataSource>

</form>
</body>
</html>
