<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListViewJqueryDataTable.aspx.cs" Inherits="MyWebFormCases.ListViewDemo.ListViewJqueryDataTable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="../Scripts/DataTable/datatables.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.3.1.min.js"></script>
  
    <script src="../Scripts/DataTable/datatables.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ListView ID="lvwDt" runat="server" OnItemEditing="lvwDt_ItemEditing" GroupPlaceholderID="groupPlaceHolder1"  
       OnItemCanceling="lvwDt_ItemCanceling"     ItemPlaceholderID="itemPlaceHolder1"  OnItemUpdating="lvwDt_ItemUpdating" DataKeyNames="CustomerId">
            <LayoutTemplate>
                <div class="table-responsive">
                <table class="table table-striped" id="TestTable">
                    <thead>  <tr>
                        <th>Sr.</th>
                        <th>Code</th>
                        <th>Description</th>
                        <th>Action</th>
                    </tr></thead>
                  
                    <asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>
                </table>
                </div>
            </LayoutTemplate>
            <GroupTemplate>
                <tr>
                    <asp:PlaceHolder runat="server" ID="itemPlaceHolder1"></asp:PlaceHolder>
                </tr>
            </GroupTemplate>
            <ItemTemplate>
              
                <td><%#Container.DataItemIndex+1 %></td>
                <td><%# Eval("CustomerId") %> </td>
                <td><%# Eval("CompanyName") %> </td>
                <td>
                    <asp:ImageButton ID="imgBtnEdit" CommandName="Edit" ToolTip="Edit a record." CommandArgument='<%#Eval("CustomerId") %>'
                    runat="server" ImageUrl="~/images/icons/edit_add.png" />
                </td>
            </ItemTemplate>
            <EditItemTemplate>
              <td><%#Container.DataItemIndex+1 %></td>
            
                <td>
                    <asp:Label ID="lblid" runat="server" Text='<%#Eval("CustomerId") %>'></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtval" runat="server" Text='<%#Bind("CompanyName") %>' />
                </td>
                <td>
                    <asp:LinkButton ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />&nbsp;
                    <asp:LinkButton ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
           
        </EditItemTemplate>
        </asp:ListView>


    </form>
    
</body>
<script>
    $(function() { $('#TestTable').DataTable(); });
</script>
</html>
