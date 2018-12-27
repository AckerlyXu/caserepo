<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ajaxSubmit.aspx.cs" Inherits="MyWebFormCases.javascriptTwo.ajaxSubmit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-1.9.1.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="text" runat="server" Text="text1"></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text="text2"></asp:Label><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:CheckBox ID="CheckBox1" runat="server"  />
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>a</asp:ListItem>
            <asp:ListItem>b</asp:ListItem>
        </asp:DropDownList>

       <input type="button" id="btn" value="submit" />
    </form>

    <script>
        $(function () {
            $("#btn").click(function () {

                var xhr = new XMLHttpRequest();
                var obj = {};
                $("#form1 :text").each(function (index, ele) {
                    if (ele.value != "") {
                        obj[ele.name] = ele.value;
                    }

                })
                $("#form1 :checkbox").each(function (index, ele) {

                    if ($(ele).prop("checked")) {
                        obj[ele.name] = true;
                    }
                })
                $("#form1 select").each(function (index, ele) {

                    if ($(ele).val() != "") {
                        obj[ele.name] = ele.value;
                    }
                })

                xhr.open("POST", "/javascriptTwo/ajaxSubmit.aspx/GetData");
                xhr.setRequestHeader("Content-Type", "application/json");
                xhr.onreadystatechange = function () {

                    if (xhr.readyState == 4 && xhr.status == 200) {
                        alert(xhr.responseText); JSON.parse(xhr.responseText)
                    }
                }
                xhr.send(JSON.stringify({data:obj}));  
            });
          
            

        })
    </script>
</body>
</html>
