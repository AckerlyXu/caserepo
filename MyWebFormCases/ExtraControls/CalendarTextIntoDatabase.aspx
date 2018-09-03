<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalendarTextIntoDatabase.aspx.cs" Inherits="MyWebFormCases.ExtraControls.CalendarTextIntoDatabase" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<body>
    <form id="form1" runat="server">
        <asp:scriptmanager runat="server"></asp:scriptmanager>
        <asp:TextBox ID="tbFromDate" runat="server"></asp:TextBox>
   
       
        <ajaxToolkit:CalendarExtender ID="tbFromDate_CalendarExtende" runat="server"
             TargetControlID="tbFromDate" Format="MM/dd/yyyy hh':'mm':'ss"/>
          
        <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click"/>

    </form>

</body>
</html>
