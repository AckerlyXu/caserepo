<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Datetime.aspx.cs" Inherits="WebFormCases.Datetime.Datetime" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <link href="jquery-ui/themes/base/all.css" rel="stylesheet" />
 
    <script src="jquery-ui/external/jquery-1.12.4/jquery.js"></script>
    <link href="../jquery-ui/themes/base/jquery-ui.css" rel="stylesheet" />
    <script src="../jquery-ui/jquery-ui.min.js"></script>
    <script src="moment.min.js"></script>
    <script>

        $(function () {
            $("#TextBox2").datepicker();
            $("#TextBox2").datepicker("option","dateFormat","yy/mm/dd");
        

            $("#TextBox1").blur(function () {
              var str=  moment(new Date( $(this).val())).format("YYYY/MM/DD");
                $("#TextBox2").datepicker("setDate", str);
            
            })
        })
    </script>
</head>
<body>
   
    <form id="form1" runat="server">
        <div>

 <asp:Label ID="Label1" runat="server" Text="getValue"></asp:Label> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

            <asp:Label ID="Label2" runat="server" Text="showValue"></asp:Label><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </div>
    </form>
</body>
</html>
