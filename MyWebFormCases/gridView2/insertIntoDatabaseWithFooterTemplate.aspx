<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="insertIntoDatabaseWithFooterTemplate.aspx.cs" Inherits="MyWebFormCases.gridView2.insertIntoDatabaseWithFooterTemplate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SID" DataSourceID="SqlDataSource1"  ShowFooter="true" 
                OnRowCommand="GridView1_RowCommand"
                >
                <Columns>
                    <asp:BoundField DataField="SID" HeaderText="SID" InsertVisible="False" ReadOnly="True" SortExpression="SID" />
                   
                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>' ></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
               
                    <asp:TemplateField HeaderText="City">
                        <ItemTemplate>
                             <asp:Label ID="Label2" runat="server" Text='<%# Eval("City") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                              <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("city") %>' ></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                       <ItemTemplate>
                           <asp:Button ID="Button1" runat="server" CommandName="Edit" Text="edit" />
                           <asp:Button ID="Button2" runat="server" CommandName="Delete" Text="delete" CommandArgument='<%#Eval("SID") %>' />
                       </ItemTemplate>
                        <EditItemTemplate>
                             <asp:Button ID="Button1" runat="server" CommandName="update" Text="update" />
                           <asp:Button ID="Button2" runat="server" CommandName="cancel" Text="cancel" />
                        </EditItemTemplate>
                        <FooterTemplate>
                             <asp:Button ID="Button1" runat="server"  Text="insert" OnClick="Button1_Click" />
                        </FooterTemplate>
                    </asp:TemplateField>
                </Columns>


            </asp:GridView>
            <asp:TextBox ID="txtData" runat="server"></asp:TextBox>
            <%-- DeleteCommand="DELETE FROM [Suppliers] WHERE [SID] = @SID" --%>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebFormCases.Models.supplyModelConnectionString %>" SelectCommand="SELECT [SID], [Name], [City] FROM [Suppliers]"  InsertCommand="INSERT INTO [Suppliers] ([Name], [City]) VALUES (@Name, @City)" UpdateCommand="UPDATE [Suppliers] SET [Name] = @Name, [City] = @City WHERE [SID] = @SID">
              
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="SID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
