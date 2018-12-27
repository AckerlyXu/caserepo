<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PjaxStart.aspx.cs" Inherits="MyWebFormCases.jqueryUiPlugin.PjaxStart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="pjax.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/jqueryUiPlugin/WebCamUsing.aspx">theFirstPage</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="/Services/res2.ashx" >theSecondPage</asp:HyperLink>
        

        <div id="container"></div>
    </form>
</body>

    <script>
        $(function () {
           
            $(document).pjax("a", "#container");
        })
    </script>
</html>
