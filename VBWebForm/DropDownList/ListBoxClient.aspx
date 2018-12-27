<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ListBoxClient.aspx.vb" Inherits="VBWebForm.ListBoxClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <script src="../Scripts/jquery-3.3.1.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple" ></asp:ListBox>
        <asp:Button ID="Button1" runat="server" Text="save" OnClick="Button1_Click" OnClientClick=" passvalues()" />
        <asp:HiddenField ID="HiddenField1" runat="server" />
    </form>
    <script>
        var values = [];
        function passvalues() {
            $("#HiddenField1").val(values.join(","))
        }
        $(function () {

            $("#ListBox1").change(function () {
                values = [];
                $(this).find("option:selected").each(function () {
                    values.push($(this).text());
                })
              
            })
        })
    </script>
</body>
</html>
