<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DownLoadFile.aspx.vb" Inherits="VBWebForm.DownLoadFile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-3.3.1.js"></script>
</head>
<body>

    <form id="form1" runat="server">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <%-- <span><%=b
               %></span>--%>
       
                <asp:Button ID="Button1" runat="server" Text="btn" OnClick="Button1_Click" />
         
        
    </form>
</body>
</html>
