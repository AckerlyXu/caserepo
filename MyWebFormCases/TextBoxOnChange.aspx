<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TextBoxOnChange.aspx.cs" Inherits="MyWebFormCases.TextBoxOnChange" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                      <asp:TextBox ID="TextBox1" runat="server"  OnTextChanged="TextBox1_TextChanged" AutoPostBack="true"></asp:TextBox>
                </ContentTemplate>

            </asp:UpdatePanel>
          
        </div>

    </form>
</body>
    <%--<script>
        function change() {
            alert("item changed");
        }
    </script>--%>
</html>
