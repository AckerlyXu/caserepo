<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="briefInfoPagetoDetailedPageWithSelectButton.aspx.cs" Inherits="MyWebFormCases.ListViewDemo.briefInfoPagetoDetailedPageWithSelectButton" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:ListView ID="ListView1" runat="server"  OnItemCommand="ListView1_ItemCommand" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1">
            
          
           
            
            <ItemTemplate >
                <tr style="">
                    <td > <a href="DetailsCustomer.aspx?id=<%# Eval("CustomerID") %>"><%# Eval("CustomerID") %></a>
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl= '<%# "~/ListView/DetailsCustomer.aspx?id="+Eval("CustomerID") %>' Text='<%# Eval("CustomerID") %>'></asp:LinkButton>
                        
                    </td>
                   
                  
                    <td>
                        <asp:Label ID="CustomerIDLabel" runat="server" Text='<%# Eval("CustomerID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CompanyNameLabel" runat="server" Text='<%# Eval("CompanyName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ContactNameLabel" runat="server" Text='<%# Eval("ContactName") %>' />
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
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            

        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT [CustomerID], [CompanyName], [ContactName] FROM [Customers]"></asp:SqlDataSource>
    </form>
</body>
</html>
