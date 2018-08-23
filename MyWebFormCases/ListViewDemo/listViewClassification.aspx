<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listViewClassification.aspx.cs" Inherits="MyWebFormCases.ListViewDemo.listViewClassification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
          <asp:ListView ID="perfumeList" runat="server"
           ItemPlaceholderID="itemPlaceHolder1"   OnItemDataBound="perfumeList_ItemDataBound">
            <LayoutTemplate>
            
                <table class="table table-striped" id="TestTable">
                    <thead>  <tr>
                        <th>name</th>
                        <th>price</th>
                      
                      
                    </tr></thead>
                  <tbody>
                       <asp:PlaceHolder runat="server" ID="itemPlaceHolder1"></asp:PlaceHolder>
                  </tbody>
                  
                </table>
                </div>
            </LayoutTemplate>
          
            <ItemTemplate>
                     <%-- table row to show marca --%>
               <tr class="bg-primary"><td colspan="3" class="text-center">     <asp:Label ID="Label1" runat="server" Text='<%# Eval("marca") %>'></asp:Label>  </td>   </tr>


                <%-- listview to show perfums with the same marca --%>
                 <asp:ListView ID="ListView1" runat="server">


                     <ItemTemplate>

                         <tr><td><asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label></td>

                             <td><asp:Label ID="Label2" runat="server" Text='<%# Eval("price") %>'></asp:Label></td>

                         </tr>
                     </ItemTemplate>
                 </asp:ListView>
            </ItemTemplate>
         
        </asp:ListView>
       


    </form>
</body>
</html>
