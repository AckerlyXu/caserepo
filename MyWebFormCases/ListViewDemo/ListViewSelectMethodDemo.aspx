<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListViewSelectMethodDemo.aspx.cs" Inherits="MyWebFormCases.ListViewDemo.ListViewSelectMethodDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
      <asp:ListView id="lstClaims" runat="server" ItemType="MyWebFormCases.Models.vx_EligibilitySearch" SelectMethod="lstMembers_GetData" 
        ItemPlaceholderID="litPlaceHolder">
 <LayoutTemplate>
            <div class="table-responsive">
                <table class="table">
                    <thead>
                        <tr>
                            <th></th>
                            <th><asp:LinkButton id="Sort_Claim_Number" runat="server" CommandArgument="Group_Description" CommandName="Sort">Group</asp:LinkButton></th>
                            <th><asp:LinkButton id="Sort_Claim_Status" runat="server" CommandArgument="Group_ID" CommandName="Sort">Group ID</asp:LinkButton></th>
                            <th><asp:LinkButton id="Sort_Plan" runat="server" CommandArgument="Alternate_ID" CommandName="Sort">Member ID</asp:LinkButton></th>

</thead>
                    <asp:Literal ID="litPlaceHolder" runat="server" />
                </table>
            </div>
        </LayoutTemplate>



 <ItemTemplate>
            <tr>
                <td></td>
                <td><%# Item.Group_Description %></td>
                <td><%# Item.Group_Id%></td>
                <td><%# Item.Alternate_Id %></td>

  </tr>
        </ItemTemplate>
    </asp:ListView>

        <p><asp:LinkButton ID="lnkSearch" runat="server"  CssClass="btn btn-default"><i class="fa fa-search"></i> Search Members</asp:LinkButton></p>
    </form>
</body>
</html>
