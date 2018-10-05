<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gridviewValidation.aspx.cs" Inherits="MyWebFormCases.gridView2.gridviewValidation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-3.3.1.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" AutoGenerateColumns="False" runat="server" ShowHeader="False" Style="width: 100%; border-width: 0px;" OnRowDataBound="GridView1_RowDataBound">
<Columns>
<asp:TemplateField>
<ItemTemplate>
<asp:GridView AutoGenerateColumns="false" ID="GridView2" runat="server" ShowHeader="true" GridLines="None" >
<Columns>
<asp:TemplateField>
<ItemTemplate>
<asp:TextBox ID="txtAmount" runat="server" ItemStyle-HorizontalAlign="center"></asp:TextBox>
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField>
<ItemTemplate>
<asp:DropDownList ID="dropAmount" runat="server" ItemStyle-HorizontalAlign="center">
    <asp:ListItem Text="1" Value="1"></asp:ListItem>
      <asp:ListItem Text="-1" Value="-1"></asp:ListItem>
      <asp:ListItem Text="-2" Value="-2"></asp:ListItem>
      <asp:ListItem Text="3" Value="3"></asp:ListItem>
</asp:DropDownList>
</ItemTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView>
</ItemTemplate>
</asp:TemplateField>
</Columns>
            
</asp:GridView>
<asp:Button runat="server" Text="save" ID="save"  />
        <script>
            
            function validate() {
                var flag = false;

                //check all the textbox ans dropdownlist
                            $("[id*=GridView1] [id*=GridView2] input[type=text]").each(
                                function () {
                                    if ($(this).val() !="") {
                                        flag = true;
                                    }
                                }
                            )

                            $("[id*=GridView1] [id*=GridView2]  select").each(
                                function () {
                                    if (parseInt($(this).val()) > 0) {
                                        flag = true;
                                    }
                                }
                            )
                return flag;
            }
            $(
                
                function () {


                      if (!validate()) {
                                $("#save").prop("disabled", true);
                            } else {
                                 $("#save").prop("disabled", false);
                            }


                    // bind blur event to check 
                    $("[id*=GridView1] [id*=GridView2] input[type=text]").blur(

                        function () {
                            if (!validate()) {
                                $("#save").prop("disabled", true);
                            } else {
                                 $("#save").prop("disabled", false);
                            }
                        }
                    )
                    console.log($("[id*=GridView1] [id*=GridView2] input[type=text]"))
                  
                    //bind change event to dropdown to check
                    $("[id*=GridView1] [id*=GridView2] select").change(

                        function () {
                            if (!validate()) {
                                $("#save").prop("disabled", true);
                            } else {
                                 $("#save").prop("disabled", false);
                            }
                        }
                    )

                }

            )
        </script>
    </form>
</body>
</html>
