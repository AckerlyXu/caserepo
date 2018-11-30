<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="batchUpdateGridview.aspx.cs" Inherits="MyWebFormCases.gridview3.batchUpdateGridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1"   >
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:TemplateField HeaderText="name">
                    <ItemTemplate>
                        <%-- make label visible and textbox invisible when not in edit mode --%>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("name") %>'></asp:Label>   
                        <asp:TextBox ID="TextBox1" runat="server" Visible="false" Text='<%#Eval("name") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField >
                  <asp:TemplateField HeaderText="price">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" Visible="false" Text='<%#Eval("price") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                  <asp:TemplateField HeaderText="marca">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("marca") %>'></asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" Visible="false"  Text='<%#Eval("marca") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                
            </Columns>
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" Text="EditAll" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="CancelEidtAll" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Text="UpdataAll" OnClick="Button3_Click" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EntityExe %>" SelectCommand="SELECT * FROM [perfume]"></asp:SqlDataSource>
    </form>
</body>
</html>
