<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FootertemplateFocusTextbox.aspx.cs" Inherits="MyWebFormCases.gridview.FootertemplateFocusTextbox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
                  <asp:ScriptManager runat="server"></asp:ScriptManager>
       

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EntryNo" DataSourceID="SqlDataSource1"  ShowFooter="true">
            <Columns>
               
                <asp:TemplateField HeaderText="EntryNo" ItemStyle-Height="80px"  >

                    <ItemTemplate >
                        <%# Eval("EntryNo") %>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                    </FooterTemplate>
                </asp:TemplateField>
                   <asp:TemplateField HeaderText="Code">

                    <ItemTemplate>
                        <%# Eval("Code") %>
                    </ItemTemplate>
                    <FooterTemplate>
                           
           
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                               
                    </FooterTemplate>
                </asp:TemplateField>
                 
                   <asp:TemplateField HeaderText="Description">

                    <ItemTemplate>
                        <%# Eval("Description") %>
                    </ItemTemplate>
                    <FooterTemplate>
               
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true" ClientIDMode="Static">
                            <asp:ListItem>a</asp:ListItem>
                            <asp:ListItem>b</asp:ListItem>
                            <asp:ListItem>c</asp:ListItem>
                        </asp:DropDownList>
         
                    </FooterTemplate>
                </asp:TemplateField>
        
            </Columns>
        </asp:GridView>

              <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="false">
  
                   <ContentTemplate>
                       <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

           </ContentTemplate>
        </asp:UpdatePanel> 
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EntityExe1 %>" SelectCommand="SELECT [EntryNo], [Code], [Description] FROM [Entries]"></asp:SqlDataSource>
    </form>
</body>
</html>
