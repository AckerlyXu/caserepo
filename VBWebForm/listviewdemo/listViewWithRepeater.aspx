<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="listViewWithRepeater.aspx.vb" Inherits="VBWebForm.listViewWithRepeater" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-3.3.1.js"></script>
</head>
<body>
    <form id="form1" runat="server">
       <asp:ListView ID="ListView1" runat="server"  DataKeyName="id"  DataSourceID="SqlDataSource1" OnItemDataBound="ListView1_ItemDataBound" >
<ItemTemplate>
<div>
<td align="left">
    <asp:Label ID="questionLabel" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Question") %>'></asp:Label><asp:DropDownList ID="options" runat="server"  ></asp:DropDownList> 
    <asp:DropDownList ID="style" runat="server" CssClass="style">
        <asp:ListItem  Text="horizontal" Selected="True" ></asp:ListItem>
              <asp:ListItem  Text="vertical"   ></asp:ListItem>
    </asp:DropDownList></td>
<br>
        <asp:HiddenField ID="order" runat="server" Value='<%#Eval("order") %>'  />
</div>
<p>

<tr style="background-color:White;" runat="server" id="tr">

<td align="left"> <asp:Label ID="Option1" runat="server" Text=' <%# Eval("Option1") %>'></asp:Label><asp:RadioButton ID="rad1" GroupName="Group1" runat="server" /></td>
<td align="left"> <asp:Label ID="Option2" runat="server" Text=' <%# Eval("Option2") %>'></asp:Label> <asp:RadioButton ID="rad2" GroupName="Group1" runat="server" /></td>
<td align="left"> <asp:Label ID="Option3" runat="server" Text=' <%# Eval("Option3") %>'></asp:Label> <asp:RadioButton ID="rad3" GroupName="Group1" runat="server" /></td>

　 </tr>
</ItemTemplate>
</asp:ListView>
        <asp:Button ID="Button1" runat="server" Text="save" OnClick="Button1_Click"  />

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EntityExeConnectionString %>" SelectCommand="SELECT [id], [Question], [Option1], [Option2], [Option3], [correctAnswer], [order] FROM [Questions]"></asp:SqlDataSource>
    </form>

    <script>
        $(function () {
            //choose the select (vertical or horizontal) and bind change event to them
            $(".style").change(
                function () {
                    
                    if ($(this).val() == "vertical") {
                        //$(this).parent().next().find("span:gt(0)") choose the  options except the first 
                         // insert br to every span except the first                          
                        $("<br/>").insertBefore($(this).parent().next().find("span:gt(0)")) 
                     
                    } else {
                        //remove all the br
                        $(this).parent().next().find("br").remove();
                    }
                }
            )

        })
    </script>
</body>
</html>
