<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DynamicAddColumnLoseDataWhenPostBack.aspx.cs" Inherits="MyWebFormCases.gridview.DynamicAddColumnLoseDataWhenPostBack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="Grid1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField HeaderText="Col1" DataField="col1"/>
                    <asp:TemplateField HeaderText="Col2">                                
                        <ItemTemplate>
                             <%# Eval("col1")+"|" %>
                            Template Content
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderText="Col3" DataField="col3"/>
                </Columns>
            </asp:GridView>
            <asp:GridView ID="Grid2" runat="server" AutoGenerateColumns="False" OnRowDataBound="Grid2_RowDataBound">
                <Columns>
                    <asp:BoundField HeaderText="Col1" DataField="col1"/>
                    <asp:TemplateField HeaderText="Col2">                                
                        <ItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                            <%# Eval("col1")+"|" %>
                            Template Content
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderText="Col3" DataField="col3"/>
                </Columns>
            </asp:GridView>
            <asp:Button ID="PostBackButton" Text="DoPostBack" runat="server"/>
        </div>
    </form>

</body>
</html>
