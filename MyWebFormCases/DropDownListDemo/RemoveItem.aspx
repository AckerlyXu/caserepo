<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RemoveItem.aspx.cs" Inherits="MyWebFormCases.DropDownList.RemoveItem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListBox ID="ListBox1" runat="server">
                <asp:ListItem Text="Hello" Value="Hello"></asp:ListItem>
                
            </asp:ListBox>
            <asp:Button runat="server" Text="Button" OnClick="Unnamed_Click" />
        </div>
    </form>
</body>
</html>
