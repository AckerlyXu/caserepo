<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoopThroughListView.aspx.cs" Inherits="MyWebFormCases.ListViewDemo.LoopThroughListView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:ListView ID="ListView_Budget" runat="server" DataSourceID="SqlDataSource1" ItemPlaceholderID="itemPlaceholder" OnDataBound="ListView1_DataBound">
                 <LayoutTemplate   >
                     <table   class="table table-bordered">

                          <asp:PlaceHolder runat="server" ID="itemPlaceholder"></asp:PlaceHolder>
                     </table>
               

                 </LayoutTemplate>
                 <ItemTemplate>
                     <tr>
                        
                          <td><asp:Label ID="dincome" runat="server" Text=' <%# Eval("name") %>'></asp:Label></td>
                           <td><asp:Label ID="Label1" runat="server" Text=' <%# Eval("sid") %>'></asp:Label></td>
                           <td><asp:Label ID="Label2" runat="server" Text=' <%# Eval("city") %>'></asp:Label></td>
                     </tr>
                    
                 </ItemTemplate>
                
             </asp:ListView>
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>

             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebFormCases.Models.supplyModelConnectionString %>" SelectCommand="SELECT * FROM [Suppliers]"></asp:SqlDataSource>
        </div>
    </form>
   
</body>
</html>
