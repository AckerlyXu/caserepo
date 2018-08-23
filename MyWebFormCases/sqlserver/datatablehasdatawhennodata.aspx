<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="datatablehasdatawhennodata.aspx.cs" Inherits="MyWebFormCases.sqlserver.datatablehasdatawhennodata" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input type="button" name="name" value="btn" id="btn" />
            <div style="height:2000px"></div>
            <div id="div"> <input type="text" name="name" value="" id="text" />
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></div>
           
        </div>
    </form>

</body>
    <script>
        document.getElementById("btn").onclick = function () {
             document.getElementById("div").scrollIntoView();
        }
       
    </script>
</html>
