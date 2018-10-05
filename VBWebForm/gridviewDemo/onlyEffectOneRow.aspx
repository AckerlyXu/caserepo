<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="onlyEffectOneRow.aspx.vb" Inherits="VBWebForm.onlyEffectOneRow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="../Scripts/jquery-3.3.1.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="false"  >

            <Columns>

                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnTextChanged="DropDownList1_SelectedIndexChanged"  >
                            <asp:ListItem>1</asp:ListItem>
                              <asp:ListItem>2</asp:ListItem>
                           
                          
                        </asp:DropDownList>
                     
                        <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                        <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
                    </ItemTemplate>
                    
                </asp:TemplateField>
                
            </Columns>

        </asp:GridView>
        <script>
            $(function () {
                $("#<%=GridView1.ClientID %> select").change(

                    function () {
                        if ($(this).val() == "1") {
                            $(this).siblings("input[type=text]:first").prop("disabled", false).val("");
                   
                        } else {
                            $(this).siblings("input[type=text]:first").prop("disabled", true)
                        }
                    }
                )

            })
        </script>
    </form>
</body>
</html>
