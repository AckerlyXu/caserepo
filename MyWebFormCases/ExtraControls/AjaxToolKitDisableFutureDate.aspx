<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxToolKitDisableFutureDate.aspx.cs" Inherits="MyWebFormCases.ExtraControls.AjaxToolKitDisableFutureDate" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

        </div>
        <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="TextBox1"  OnClientDateSelectionChanged="checkDate"  />

       

    </form>


     <script type="text/javascript">
         function checkDate(sender, args) {
                    // I change the < operation to >
            if (sender._selectedDate > new Date()) {
                alert("You cannot select a day earlier than today!");
                sender._selectedDate = new Date();
                // set the date back to the current date
                sender._textbox.set_Value(sender._selectedDate.format(sender._format))
                        }

        }
    </script>
</body>
</html>
