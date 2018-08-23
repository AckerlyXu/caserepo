
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Video.aspx.cs" Inherits="WebApplication2.Video" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-3.3.1.js"></script>
</head>
<body>
    <form id="form1" runat="server"  >
        <div>
    
            <asp:Label ID="Label2" runat="server" Text="VideoName"></asp:Label><asp:TextBox ID="VideoName" runat="server"></asp:TextBox><br/>
            <asp:Label ID="Label3" runat="server" Text="File"></asp:Label><asp:FileUpload ID="FileUpload1" runat="server" />

            <br />
            
                  <asp:Button ID="Button1" runat="server" Text="Button"  OnClick="Button1_Click" />
         
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/ShowPage.aspx">go to showPage</asp:LinkButton>
        </div>

      
    </form>
</body>
    
</html>
