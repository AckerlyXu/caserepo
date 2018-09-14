<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listviewDataPagerPostback.aspx.cs" Inherits="MyWebFormCases.ListViewDemo.listviewDataPagerPostback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
           <asp:ListView ID="ListView1" runat="server" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1">
              
              
               <EmptyDataTemplate>
                   <table runat="server" style="">
                       <tr>
                           <td>No data was returned.</td>
                       </tr>
                   </table>
               </EmptyDataTemplate>
              
               <ItemTemplate>
                   <tr style="">
                       <td>
                           <asp:Label ID="CustomerIDLabel" runat="server" Text='<%# Eval("CustomerID") %>' />
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
                   <table runat="server">
                       <tr runat="server">
                           <td runat="server">
                               <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                   <tr runat="server" style="">
                                       <th runat="server">CustomerID</th>
                                       <th runat="server">CompanyName</th>
                                       <th runat="server">ContactName</th>
                                       <th runat="server">ContactTitle</th>
                                       <th runat="server">Address</th>
                                       <th runat="server">City</th>
                                       <th runat="server">Region</th>
                                       <th runat="server">PostalCode</th>
                                       <th runat="server">Country</th>
                                       <th runat="server">Phone</th>
                                       <th runat="server">Fax</th>
                                   </tr>
                                   <tr id="itemPlaceholder" runat="server">
                                   </tr>
                               </table>
                           </td>
                       </tr>
                       <tr runat="server">
                           <td runat="server" style="">
                              
                           </td>
                       </tr>
                   </table>
               </LayoutTemplate>
               
           </asp:ListView>
         <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" PageSize="7">
                                   <Fields>
                                       <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                       <asp:NumericPagerField />
                                       <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                   </Fields>
                               </asp:DataPager>

        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> <asp:Button ID="Button1" runat="server" Text="search" OnClick="Button1_Click" />
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthWindDbContext %>" SelectCommand="SELECT * FROM [Customers] WHERE ([ContactName] LIKE '%' + @ContactName2 + '%')">
               <SelectParameters>
                   <asp:Parameter DefaultValue=" " Name="ContactName2" Type="String" />
               </SelectParameters>
           </asp:SqlDataSource>
    </form>

</body>
</html>
