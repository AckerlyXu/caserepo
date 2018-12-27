<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WithObjectDataSource.aspx.cs" Inherits="MyWebFormCases.gridView2.WithObjectDataSource" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" DataKeyNames="itemid"    >
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                    <asp:BoundField DataField="ItemName" HeaderText="ItemName" SortExpression="ItemName" />
                    <asp:BoundField DataField="BelongsTo" HeaderText="BelongsTo" SortExpression="BelongsTo" />
                    <asp:BoundField DataField="Qunatity" HeaderText="Qunatity" SortExpression="Qunatity"  />
                   <%-- <asp:BoundField DataField="itemid" HeaderText="itemid" SortExpression="itemid" ReadOnly="true" />--%>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            id   <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" />
                        </HeaderTemplate>
                        <ItemTemplate>
                           <%# Eval("itemid") %>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox runat="server" ID="idEdit"> </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                   
                </Columns>
               
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="getAll" TypeName="MyWebFormCases.Utils.MyObjectDataSource"
                DataObjectTypeName="MyWebFormCases.Models.Fruit" OldValuesParameterFormatString="original_{0}" UpdateMethod="update" DeleteMethod="delete"
                >
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
            </asp:ObjectDataSource>
    </form>

</body>
</html>

