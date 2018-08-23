﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DropDownWithMultipleCheckbox.aspx.cs" Inherits="MyWebFormCases.DropDownListDemo.DropDownWithMultipleCheckbox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<link href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css"
    rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
<link href="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/css/bootstrap-multiselect.css" rel="stylesheet" type="text/css" />
<script src="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/js/bootstrap-multiselect.js" type="text/javascript"></script>
        <asp:ListBox ID="lstFruits" runat="server" SelectionMode="Multiple">
    <asp:ListItem Text="Mango" Value="1" />
    <asp:ListItem Text="Apple" Value="2" />
    <asp:ListItem Text="Banana" Value="3" />
    <asp:ListItem Text="Guava" Value="4" />
    <asp:ListItem Text="Orange" Value="5" />
</asp:ListBox>
<asp:Button Text="Submit" runat="server"  />
<script type="text/javascript">
    $(function () {
        $('[id*=lstFruits]').multiselect({
            includeSelectAllOption: true
        });
        $("[id*=lstFruits]").change(function () {

            //$(":checkbox:checked").parent().parent().insertAfter($(".multiselect-container li:eq(0)"));

            });
    }
          
    );
</script>
    </form>
</body>
</html>
