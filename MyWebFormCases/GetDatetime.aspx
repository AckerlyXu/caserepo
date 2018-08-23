<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetDatetime.aspx.cs" Inherits="WebFormCases.GetDatetime" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label" runat="server" Text="originalTim"></asp:Label>
            <asp:TextBox ID="dobs1" runat="server" TextMode="DateTime" ></asp:TextBox>
            <asp:Label ID="Label1" runat="server" Text="formattedTime"></asp:Label>
            <asp:TextBox ID="dobs" runat="server" TextMode="DateTime"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </div>
    </form>


</body>
<script src="Scripts/jquery-1.10.2.min.js"></script>

    <script>

        $(function () {
            $.post("/TimeHandler.ashx", {}, function (data) {
                $("#dobs1").val(data);
                 
                //get substr of data to create a js object of type Date,
                var dateString = data.slice(6, data.lastIndexOf(")"));
                 //the constroctor of  Date receive  number type,
                // so you should  convert  string to int
                var date = new Date(parseInt(dateString));
                var time = date.getFullYear() + "/" + date.getMonth() + "/" + date.getDate() + " " + date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds();
                $("#dobs").val(time);
            }, "json");

        })

    </script>
</html>
