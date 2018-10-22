<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PreventMultipleInsert.aspx.vb" Inherits="VBWebForm.PreventMultipleInsert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="CustomerID"  OnPagePropertiesChanged="ListView1_PagePropertiesChanged">

            <ItemTemplate>

                <div>

                   <%-- <td align="right">

                        <asp:Image ID="Image1" runat="server" ImageUrl="~/fail-small.png" /></td>

                    <td align="center">

                        <td align="left"><%#DataBinder.Eval(Container.DataItem, "Question") %></td>

                        <br />

                        <asp:Image runat="server" ID="image" ImageUrl='<%#Eval("Path")%>' />--%>
                </div>

                <p>

                    <tr style="background-color: White;">

                        <tr>
                            <td align="left" colspan="3">
                                <%--<asp:HiddenField ID="QuestionDetailID" runat="server" Value='<%#Eval("QuestDetailID") %>' />--%>
                            </td>
                        </tr>

                        <td align="left">
                            <asp:Label ID="Option1" runat="server" Text=' <%# Eval("CustomerID") %>'></asp:Label><asp:RadioButton ID="rad1" GroupName="Group1" runat="server" /></td>

                        <td align="left">
                            <asp:Label ID="Option2" runat="server" Text=' <%# Eval("CompanyName") %>'></asp:Label>
                            <asp:RadioButton ID="rad2" GroupName="Group1" runat="server" /></td>

                        <td align="left">
                            <asp:Label ID="Option3" runat="server" Text=' <%# Eval("ContactTitle") %>'></asp:Label>
                            <asp:RadioButton ID="rad3" GroupName="Group1" runat="server" /></td>

<%--                        <td align="left">
                            <asp:Label ID="Label1" runat="server" Text=' <%# Eval("Option4") %>'></asp:Label>
                            <asp:RadioButton ID="rad4" GroupName="Group1" runat="server" /></td>--%>



                    </tr>
            </ItemTemplate>

        </asp:ListView>

      

        <br />

        <br />

        <asp:DataPager ID="dtpgr" runat="server" PagedControlID="ListView1" PageSize="5">

            <Fields>

                <asp:NumericPagerField ButtonCount="5"
                    NumericButtonCssClass="numeric_button"
                    CurrentPageLabelCssClass="current_page"
                    NextPreviousButtonCssClass="next_button" />

            </Fields>

        </asp:DataPager>



        </div>

 <asp:Button ID="Button1" runat="server" Text="Save"  BackColor="#3366CC" ForeColor="White" Height="28px" Width="77px" OnClick="Button1_Click" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT [CustomerID], [CompanyName], [ContactTitle] FROM [Customers]"></asp:SqlDataSource>
    </form>
</body>
</html>
