<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="InsertAvoidMitupleSubmit.aspx.vb" Inherits="VBWebForm.InsertAvoidMitupleSubmit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1"
           OnPagePropertiesChanged="ListView1_PagePropertiesChanged"
            >
          
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="CustomerIDLabel" runat="server" Text='<%# Eval("CustomerID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CompanyNameLabel" runat="server" Text='<%# Eval("CompanyName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ContactTitleLabel" runat="server" Text='<%# Eval("ContactTitle") %>' />
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
                                    <th runat="server">ContactTitle</th>
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
                    <tr>
                        <td></td>
                    </tr>
                </table>
            </LayoutTemplate>
           
        </asp:ListView>
       <asp:Button ID="Button1" runat="server" Text="save" OnClick="Button1_Click"  />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT [CustomerID], [CompanyName], [ContactTitle] FROM [Customers]"></asp:SqlDataSource>
    </form>
</body>
</html>
