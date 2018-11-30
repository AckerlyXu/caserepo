<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrudSPPagingSortingBootstrap.aspx.cs" Inherits="MyWebFormCases.ListViewDemo.CrudSPPagingSortingBootstrap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
 
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<body>
    <form id="form1" runat="server">

        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  <asp:Button ID="Button1" runat="server" Text="search" CssClass="btn  btn-light" OnClick="Button1_Click" /> <br />
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="CustomerID"  InsertItemPosition="LastItem"  OnItemUpdating="ListView1_ItemUpdating" OnItemEditing="ListView1_ItemEditing"
              OnItemCanceling="ListView1_ItemCanceling" OnSorting="ListView1_Sorting" OnItemInserting="ListView1_ItemInserting"
               OnItemDeleting="ListView1_ItemDeleting" >
                
                <EditItemTemplate >
                    <tr style="">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update"  Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                         <asp:label ID="CustomerIdLabel" runat="server" Text='<%# Eval("CustomerId") %>' />
                            <%# Container.DataItemIndex %>
                        </td>
                        <td>
                            <asp:TextBox ID="CompanyNameTextBox" runat="server" Text='<%# Bind("CompanyName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ContactNameTextBox" runat="server" Text='<%# Bind("ContactName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ContactTitleTextBox" runat="server" Text='<%# Bind("ContactTitle") %>' />
                        </td>
                     
                  
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                           
                        </td>
                        <td>
                            <asp:TextBox ID="CustomerIDTextBox" runat="server" Text='<%# Bind("CustomerID") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="CompanyNameTextBox" runat="server" Text='<%# Bind("CompanyName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ContactNameTextBox" runat="server" Text='<%# Bind("ContactName") %>' />
                        </td>
                         <td>
                            <asp:TextBox ID="ContactTitleTextBox" runat="server" Text='<%# Bind("ContactTitle") %>' />
                        </td>
                      
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        </td>
                        <td>
                            <asp:Label ID="CustomerIDLabel" runat="server" Text='<%# Eval("CustomerID") %>' />
                            <%# Container.DataItemIndex %>
                        </td>
                        <td>
                            <asp:Label ID="CompanyNameLabel" runat="server" Text='<%# Eval("CompanyName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ContactNameLabel" runat="server" Text='<%# Eval("ContactName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ContactTitleLabel" runat="server" Text='<%# Eval("ContactTitle") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                        </td>
                        <td>
                            <asp:Label ID="RegionLabel" runat="server" Text='<%# Eval("Region") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PostalCodeLabel" runat="server" Text='<%# Eval("PostalCode") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FaxLabel" runat="server" Text='<%# Eval("Fax") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server"  class="table  table-striped table-bordered table-hover">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                    <tr runat="server" style="">
                                        <th runat="server"></th>
                                        <th runat="server"><asp:LinkButton CssClass="btn  btn-light " ID="LinkButton1" runat="server" CommandName="Sort" CommandArgument="CustomerId">CustomerId</asp:LinkButton></th>
                                        <th runat="server"><asp:LinkButton CssClass="btn btn-light"  ID="LinkButton2" runat="server" CommandName="Sort" CommandArgument="CompanyName">CompanyName</asp:LinkButton></th>
                                        <th runat="server"><asp:LinkButton CssClass="btn btn-light"  ID="LinkButton3" runat="server" CommandName="Sort" CommandArgument="ContactName">ContactName</asp:LinkButton></th>
                                        <th runat="server"><asp:LinkButton CssClass="btn btn-light"  ID="LinkButton4" runat="server" CommandName="Sort" CommandArgument="ContactTitle">ContactTitle</asp:LinkButton></th>
                                        <th runat="server"><asp:LinkButton CssClass="btn btn-light"  ID="LinkButton5" runat="server" CommandName="Sort" CommandArgument="Address">Address</asp:LinkButton></th>
                                        <th runat="server"><asp:LinkButton CssClass="btn btn-light"  ID="LinkButton6" runat="server" CommandName="Sort" CommandArgument="City">City</asp:LinkButton></th>
                                        <th runat="server"><asp:LinkButton CssClass="btn btn-light"  ID="LinkButton7" runat="server" CommandName="Sort" CommandArgument="Region">Region</asp:LinkButton></th>
                                        <th runat="server"><asp:LinkButton CssClass="btn btn-light"  ID="LinkButton8" runat="server" CommandName="Sort" CommandArgument="PostalCode">PostalCode</asp:LinkButton></th>
                                        <th runat="server"><asp:LinkButton CssClass="btn btn-light"  ID="LinkButton9" runat="server" CommandName="Sort" CommandArgument="Country">Country</asp:LinkButton></th>
                                        <th runat="server"><asp:LinkButton CssClass="btn btn-light"  ID="LinkButton10" runat="server" CommandName="Sort" CommandArgument="Phone">Phone</asp:LinkButton></th>
                                        <th runat="server"><asp:LinkButton CssClass="btn btn-light"  ID="LinkButton11" runat="server" CommandName="Sort" CommandArgument="Fax">Fax</asp:LinkButton></th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr >
                           
                        </tr>
                    
                    </table>
                </LayoutTemplate>
            



            </asp:ListView>
       
        </div>
            <nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">

      <%-- get currentPage and sort rule to generate pagination --%>
      <%CurrentPage = CurrentPage == 0 ? Convert.ToInt32(ViewState["currentPage"]) : CurrentPage;

          string pageSort = ViewState["sort"] == null ? "customerId" : ViewState["sort"].ToString();
          string search = ViewState["search"] == null ? "" : ViewState["search"].ToString();
          %>
    <li class="page-item  <%=CurrentPage==1||CurrentPage==0?"disabled":"" %>">
      <a class="page-link bg-dark text-white" href="CrudSPPagingSortingBootstrap.aspx?currentPage=<%=CurrentPage-1 %>&sort=<%=pageSort %><%=search==""?"":"&search="+search %>" tabindex="-1">Previous</a>
    </li>

     <%for (int i = 1; i <= TotalPage; i++)
            {%>
 <li class="page-item  "><a class="page-link  <%=i==CurrentPage?"bg-ligth  text-success":"bg-dark text-white" %>" href="CrudSPPagingSortingBootstrap.aspx?currentPage=<%=i %>&sort=<%=pageSort %><%=search==""?"":"&search="+search %>"><%=i %></a></li>
            <%} %>
    <li class="page-item  <%=CurrentPage==TotalPage?"disabled":"" %>">
      <a class="page-link bg-dark text-white" href="CrudSPPagingSortingBootstrap.aspx?currentPage=<%=CurrentPage+1 %>&sort=<%=pageSort %><%=search==""?"":"&search="+search %> ">Next</a>
    </li>
  </ul>
         
</nav>
         <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>

       

   

    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

  <script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>

      <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.flash.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
      <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>

        <script>
         $(function(){

           

})
        </script>
    </form>
</body>
</html>
