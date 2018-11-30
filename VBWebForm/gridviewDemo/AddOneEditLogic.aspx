<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AddOneEditLogic.aspx.vb" Inherits="VBWebForm.AddOneEditLogic" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"  >

           <Columns >
               <asp:BoundField DataField="item_number" HeaderText="id" />

               <asp:BoundField  DataField="quantity" HeaderText="quantity" />
               <asp:TemplateField HeaderText="edit">

                   <%-- <%# DataBinder.GetDataItem(Container)   %> --%>
                    <ItemTemplate>
                                 <asp:Label ID="Label1" Visible="true" runat="server" Enabled="true" Text='<%# Eval("quantity") %>'></asp:Label>
                                    
                                 <asp:TextBox ID="TextBox1" Visible="false" runat="server" Text='' AutoPostBack="true" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                        <asp:HiddenField ID="HiddenField1" runat="server" Value="<%# Container.DataItemIndex  %>"  />
                             </ItemTemplate>
               </asp:TemplateField>
           </Columns>
        </asp:GridView>

        <asp:Button ID="Edit" runat="server" Text="Edit" OnClick="Edit_Click" />
        
      <%--  <asp:Button ID="Update" runat="server" Text="Update" OnClick="Update_Click" />--%>
    </form>
</body>
</html>
