<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetIntervalJavaScript.aspx.cs" Inherits="MyWebFormCases.javascriptTwo.SetIntervalJavaScript" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-3.3.1.js"></script>
</head>
<body>
    <form id="form1" runat="server">
       

        <asp:Button ID="save" runat="server" Text="Save Data" OnClick="Button1_Click" />
        
    <script>
        console.log($("#save").css("background-color"));
        function action() {
            $("#save").val("Data Saved");
            $("#save").css("background-color", "green");
            setTimeout(function () {
 $("#save").val("Save Data");
               
                $("#save").css("background-color", "rgb(221, 221, 221)");
            }, 3000)
        }

    </script>
    </form>


</body>
</html>
