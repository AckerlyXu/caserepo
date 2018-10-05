<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DateTimeWithTimeSpan.aspx.cs" Inherits="MyWebFormCases.jqueryUiPlugin.DateTimeWithTimeSpan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-1.9.1.js"></script>
    <script src="../Scripts/moment.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/bootstrap-datetimepicker.min.js"></script>
    <link href="../bootstrap/eonasdan-bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />
 
        
</head>
<body>
    <form id="form1" runat="server">
        <div style="position:absolute">
            <asp:TextBox ID="StartTime" runat="server" ></asp:TextBox>
        <asp:TextBox ID="EndTime" runat="server" OnTextChanged="TextBox2_TextChanged" AutoPostBack="true"></asp:TextBox>
            <asp:Label ID="TotalDurationLabel" runat="server" Text="Label"></asp:Label>
              <asp:TextBox ID="TravelTimeStartDurationHoursLabel" runat="server" ></asp:TextBox>
        </div>
        

    </form>

</body>
    <script>

        
    
    </script>
</html>
