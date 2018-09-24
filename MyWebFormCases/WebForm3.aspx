<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="MyWebFormCases.WebForm3" %>

<%@ Register Src="~/WebUserControl1.ascx" TagPrefix="uc1" TagName="WebUserControl1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-3.3.1.js"></script>  

</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager runat="server" >

            
        </asp:ScriptManager>

       
        <div style="height:20px;width:20px" class="div">
        </div>
         <uc1:WebUserControl1 runat="server" ID="WebUserControl1" />
        <%=HttpUtility.JavaScriptStringEncode( Text) %>
            <script>

                alert('<%=HttpUtility.JavaScriptStringEncode( Text) %>')

            

            </script>
        <hr />
    </form>
</body>

</html>
