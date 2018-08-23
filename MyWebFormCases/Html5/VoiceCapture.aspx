<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VoiceCapture.aspx.cs" Inherits="MyWebFormCases.Html5.VoiceCapture" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <video runat="server" id="RecAudio" controls="controls"  ></video>
            <asp:Button ID="btnStop" runat="server" Text="btnStop" OnClick="btnStop_Click" />
            <asp:Button ID="btnRecord" runat="server" Text="btnRecord" OnClick="btnRecord_Click" />

            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
