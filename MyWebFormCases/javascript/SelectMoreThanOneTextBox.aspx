<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelectMoreThanOneTextBox.aspx.cs" Inherits="MyWebFormCases.javascript.SelectMoreThanOneTextBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-3.3.1.js"></script>
</head>
<body>
    <form id="form1" runat="server">
       
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:TemplateField HeaderText="column1">
                    <ItemTemplate>
                         <asp:TextBox runat="server" ></asp:TextBox>
                    </ItemTemplate>

                </asp:TemplateField>
                  <asp:TemplateField HeaderText="column2">
                      <ItemTemplate>
                         <asp:TextBox runat="server"></asp:TextBox>

                    </ItemTemplate>
                </asp:TemplateField>
                  <asp:TemplateField HeaderText="column3">
                       <ItemTemplate>
                         <asp:TextBox runat="server"></asp:TextBox>

                    </ItemTemplate>

                </asp:TemplateField>
                 
                  <asp:TemplateField HeaderText="column4">

                      <ItemTemplate>
                         <asp:TextBox runat="server"></asp:TextBox>

                    </ItemTemplate>
                </asp:TemplateField>
                  <asp:TemplateField HeaderText="column5">
                      <ItemTemplate>
                         <asp:TextBox runat="server"></asp:TextBox>

                    </ItemTemplate>

                </asp:TemplateField>
                 <asp:TemplateField HeaderText="action">
                      <ItemTemplate>
                     
                          <input type="button"  value="clear" class="clear" />
                           <input type="button"  value="cancel" class="cancel" />
                    </ItemTemplate>

                </asp:TemplateField>
            </Columns>


        </asp:GridView>


        <script>
            $(function () {

                $("#GridView1 input[type=text]").keyup(

                    function (e) {
                  //ensure the key is enter
                        if (e.keyCode == 13) {
                              $(this).css("background-color", "rgb(0, 200, 255)");
                        }
                          
                        
                    }

                    
                )
                $("#GridView1 .clear").click(

                    function () {
                        $(this).parent().parent().find("input[type=text]").each(

                            function () {
                                if ($(this).css("background-color") == "rgb(0, 200, 255)") {
                                    $(this).css("background-color","rgb(255,255,255)")
                                    $(this).val("");
                                }
                            }
                        )
                    }
                )
                $("#GridView1 .cancel").click(

                    function () {
                        $(this).parent().parent().find("input[type=text]").css("background-color","rgb(255,255,255)")
                    }
                )

            })
        </script>
    </form>
</body>
</html>
