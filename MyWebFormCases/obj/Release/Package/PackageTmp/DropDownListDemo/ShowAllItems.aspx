<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowAllItems.aspx.cs" Inherits="MyWebFormCases.DropDownListDemo.ShowAllItems" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-3.3.1.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>item1</asp:ListItem>
            <asp:ListItem>item2</asp:ListItem>
            <asp:ListItem>item3</asp:ListItem>
            <asp:ListItem>item4</asp:ListItem>
        </asp:DropDownList>

        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="javascript:;">to the third item</asp:HyperLink> <span id="show"></span>

        <script>

            $(function () {

                $("#<%=HyperLink1.ClientID%>").click(

                    function () {
                        var content = $("#<%=DropDownList1.ClientID%> option ").eq(2).html();//get the content of the third item
                        $("#show").html(content); //put the content in the span

                    }
                )
            })

        </script>
    </form>
</body>
</html>
