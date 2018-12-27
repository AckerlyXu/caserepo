<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HtmlEditorExe.aspx.cs" Inherits="MyWebFormCases.ExtraControls3.HtmlEditorExe" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <ajaxToolkit:HtmlEditorExtender ID="HtmlEditorExtender1" runat="server" TargetControlID="TextBox1" EnableSanitization="false" >
        
        </ajaxToolkit:HtmlEditorExtender>
        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="300px" Height="400px" ></asp:TextBox><br />
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
