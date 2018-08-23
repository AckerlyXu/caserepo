<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckBoxListDemo.aspx.cs" Inherits="MyWebFormCases.gridview.CheckBoxListDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         table > tbody > tr > td >label
                {
                    margin-left:20px;
                }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:TemplateField>

                </asp:TemplateField>
                <asp:TemplateField>
                                        <HeaderTemplate>
                                            <asp:CheckBox ID = "chkAll" runat="server" AutoPostBack="true" ClientIDMode="Static"  /> <%--OnCheckedChanged="OnCheckedChanged"--%>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="true"  />   <%--OnCheckedChanged="OnCheckedChanged"--%>
                                           
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText = "Sr.">
                                        <ItemTemplate>
                                            <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText = "Category">
                                        <ItemTemplate>
                                             <asp:CheckBoxList ID="ChkBoxList" CssClass="checkbox" RepeatDirection ="Horizontal" RepeatColumns="25" runat="server" DataSourceID="SqlDataSource2" DataTextField="CategoryName" DataValueField="CategoryID" ></asp:CheckBoxList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT [CategoryID], [CategoryName] FROM [Categories]"></asp:SqlDataSource>
                                        </ItemTemplate>
                                    </asp:TemplateField>

            </Columns>


        </asp:GridView>
       
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script>
        $(function () {           
            $('#chkAll').change(function () {               
                 $('input:checkbox').not(this).prop('checked', this.checked);
            });
        })
    </script>
    </form>
</body>
</html>
