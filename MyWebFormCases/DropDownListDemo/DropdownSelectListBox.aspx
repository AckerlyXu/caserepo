<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DropdownSelectListBox.aspx.cs" Inherits="MyWebFormCases.DropDownListDemo.DropdownSelectListBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <asp:ListBox ID="lstFruits" runat="server" SelectionMode="Multiple" Height = "200" Width = "120">
        <asp:ListItem Text="Mango" Value="1" />
        <asp:ListItem Text="Apple" Value="2" />
        <asp:ListItem Text="Banana" Value="3" />
        <asp:ListItem Text="Guava" Value="4" />
        <asp:ListItem Text="Orange" Value="5" />
    </asp:ListBox>
       <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">

        $(function () {
            $("#lstFruits option:eq(3)").prop("selected",true);
            $("[id*=lstFruits]").change(function () {
             
                $("option:selected", this).prependTo(this);

            });
        });
    </script>
    </form>
</body>
</html>
