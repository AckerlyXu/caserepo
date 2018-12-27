<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OneToMany1.aspx.cs" Inherits="MyWebFormCases.gridview3.OneToMany1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" DataKeyNames="id" AutoGenerateColumns="False" OnDataBound="GridView1_DataBound" AutoGenerateEditButton="True"  DataSourceID="SqlDataSource1">
            <Columns>
                <asp:TemplateField HeaderText="department_name">
                    <ItemTemplate>
                   <%# Eval("department_name") %>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("department_name") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Employee">
                      <ItemTemplate>
                          Employee
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                    </EditItemTemplate>
                </asp:TemplateField>
            </Columns>

        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EntityDb %>" SelectCommand="SELECT * FROM [department]"></asp:SqlDataSource>
    </form>
</body>
</html>
