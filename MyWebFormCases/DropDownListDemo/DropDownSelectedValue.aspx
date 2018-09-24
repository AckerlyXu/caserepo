<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DropDownSelectedValue.aspx.cs" Inherits="MyWebFormCases.DropDownListDemo.DropDownSelectedValue" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnRowEditing="GridView1_RowEditing">

                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                             <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("SinterLottype") %>'>

                <asp:ListItem>A</asp:ListItem>
                <asp:ListItem>B</asp:ListItem>
            </asp:DropDownList>
                        </ItemTemplate>

                        <EditItemTemplate>
                             <asp:DropDownList ID="DropDownList2" runat="server" SelectedValue='<%# Bind("SinterLottype") %>'>

                <asp:ListItem>A</asp:ListItem>
                <asp:ListItem>B</asp:ListItem>
                                      </asp:DropDownList>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="true" />
                </Columns>

            </asp:GridView>
           
        </div>
    </form>
</body>
</html>
