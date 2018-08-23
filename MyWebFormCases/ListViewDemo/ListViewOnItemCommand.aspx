<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListViewOnItemCommand.aspx.cs" Inherits="MyWebFormCases.ListView.ListViewOnItemCommand" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:ListView ID="ListView1" runat="server" OnItemCommand="ListView1_ItemCommand" SelectMethod="GetSuppliers" ItemType="MyWebFormCases.Models.Supplier"  >

            <ItemTemplate>

                <tr> 

                    <td>  <asp:Label ID="DDate" runat="server" Text="<%# Item.SID %>"></asp:Label></td>
                         <td>  <asp:Label ID="Label2" runat="server" Text="<%#Item.Name %>"></asp:Label></td>
                         <td>  <asp:Label ID="Label3" runat="server" Text="<%#Item.City %>"></asp:Label></td>
                    <td>  
                    <%--<asp:Button ID="Button1" runat="server" Text="Button" CommandArgument="<%#Container.DataItemIndex %>" CommandName="Select_Sel" /></td>--%>
                </tr>
  

            </ItemTemplate>

            <LayoutTemplate>
    
                        
                                    <table id="itemPlaceholderContainer" runat="server" style="width:100%">
                                        <tr id="itemPlaceholder"></tr>
                                    </table>
                          
                  

            </LayoutTemplate>

        </asp:ListView>
    </form>
</body>
</html>
