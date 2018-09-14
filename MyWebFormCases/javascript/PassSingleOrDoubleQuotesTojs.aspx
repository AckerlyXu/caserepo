<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PassSingleOrDoubleQuotesTojs.aspx.cs" Inherits="MyWebFormCases.javascript.PassSingleOrDoubleQuotesTojs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-3.3.1.js"></script>
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

        <span id="span1">span1</span>
           <span id="span2">span2</span>
    </form>


    <script>  
        $("[id='span1']").css('background-color', 'red');
        console.log($("span[id=span1]  span[id=span2]"));
        if ("" == false) {
            alert("hello")
        }
function test(a,b){
    alert(a+" "+b);
        }
      
      
    </script>
</body>
</html>
