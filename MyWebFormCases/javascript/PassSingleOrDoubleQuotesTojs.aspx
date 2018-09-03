<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PassSingleOrDoubleQuotesTojs.aspx.cs" Inherits="MyWebFormCases.javascript.PassSingleOrDoubleQuotesTojs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
          
            <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="false">
                <Columns>

                    <asp:TemplateField HeaderText="header">
                        <ItemTemplate >
                         <asp:TextBox ID="TextBox1" runat="server" oncontextmenu=""></asp:TextBox>

                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

            </asp:GridView>
        </div>
    </form>


    <script>    

function test(a,b){
    alert(a+" "+b);
        }
      
      
    </script>
</body>
</html>
