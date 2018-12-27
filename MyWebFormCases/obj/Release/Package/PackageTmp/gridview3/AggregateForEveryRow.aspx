<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AggregateForEveryRow.aspx.cs" Inherits="MyWebFormCases.gridview3.AggregateForEveryRow" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

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
                <asp:TemplateField>
                   <ItemTemplate>
                        <asp:TextBox runat="server" ></asp:TextBox>
                   </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField>
                   <ItemTemplate>
                        <asp:TextBox runat="server" ></asp:TextBox>
                   </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField>
                   <ItemTemplate>
                        <asp:TextBox runat="server" ></asp:TextBox>
                   </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField>
                   <ItemTemplate>
                        <asp:TextBox runat="server" ></asp:TextBox>
                   </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField>
                   <ItemTemplate>
                        <asp:TextBox runat="server" ></asp:TextBox>
                   </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField>
                   <ItemTemplate>
                      total: <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                   </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>


        <script>
            $(function () {

                $("#GridView1 input[type='text']").keyup(function () {
                    var total = 0;
                    $(this).parent().parent().find("input[type='text']").each(function (index,ele) {
                        
                        total += isNaN(parseInt($(ele).val())) ? 0 : parseFloat($(ele).val());
                    })
                    $(this).parent().parent().find("[id*=Label1]").text(total);
                }) 

            })
        </script>
    </form>
</body>
</html>
