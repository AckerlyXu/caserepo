<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TargetExe.aspx.cs" Inherits="MyWebFormCases.javascriptTwo.TargetExe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type = "text/javascript">
        function SetTarget() {
            document.forms[0].target = "_blank";
        }
      window.onload = function () {
            document.getElementById("<%=DropDownList1.ClientID  %>")
                .onchange = function () {
                 document.forms[0].target = "_self";
__doPostBack("DropDownList1")
                }

        }
    </script>

</head>
<body>
    <form id="form1" runat="server"  
        >
         <div>
            Select Something in dropdownlist to populate Listbox<asp:DropDownList ID="DropDownList1" runat="server" Height="16px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="142px" AutoPostBack="True" >
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>ddl item 1</asp:ListItem>
                <asp:ListItem>ddl item 2</asp:ListItem>
                <asp:ListItem>ddl item 3</asp:ListItem>
            </asp:DropDownList>
            <br />
            List Box Populated when dropdowlist idex changes&nbsp; <asp:ListBox ID="ListBox1" runat="server" Width="149px" SelectionMode="Multiple"></asp:ListBox>
            <br />
            Clicking &#39;Run report&#39; button opens Page2 in new tab
            <asp:Button ID="btnRunReport" runat="server" Text="Run Reprot" OnClick="btnRunReport_Click" OnClientClick = "SetTarget();" />
        </div>

    </form>
</body>
</html>
