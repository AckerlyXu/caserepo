<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jqueryDataTableStart.aspx.cs" Inherits="MyWebFormCases.jqueryUiPlugin.jqueryDataTableStart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="../Scripts/DataTable/datatables.css" rel="stylesheet" />
   
    <script src="../Scripts/jquery-3.3.1.js"></script>
    <script src="../Scripts/DataTable/datatables.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:label ID="ltDataTable" runat="server"></asp:label>
    </form>
</body>
    <script>
        $(document).ready(function () {
    $("[id*='tblExample']").DataTable();
});
    </script>
</html>
