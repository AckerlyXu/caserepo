<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="httpMixedInHttps.aspx.cs" Inherits="MyWebFormCases.Html5.httpMixedInHttps" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests" />
</head>
<body>
    <form id="form1" runat="server">
        

        <iframe src="http://exampledomain.com/report3.php?clientid=1" width="100%" height="800px"></iframe>
    </form>
</body>
</html>
