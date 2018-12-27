<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResponsiveLink.aspx.cs" Inherits="MyWebFormCases.CssCase.ResponsiveLink" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"  />
    <style>

        .span_1_of_2 {
	width: 49.2%;
}

.span_2_of_2 {
	width: 100%;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div class="row">
      
            <div align="left" class="col span_1_of_2" >
                <asp:LinkButton ID="LinkButton1" runat="server">LinkButton1</asp:LinkButton>
               <%-- <asp:ImageButton ID="ImageButton1" runat="server" PostBackUrl="javascript:;" ImageUrl="~/images/messager_icons.png" Width="100%" />--%>
                
            </div>
            <div align="right"  class="col span_1_of_2">

                <asp:LinkButton ID="LinkButton2" runat="server">LinkButton2</asp:LinkButton>
<%--                <asp:ImageButton ID="ImageButton2" runat="server" PostBackUrl="javascript:;" ImageUrl="~/images/spinner_arrows.png" Width="100%" />--%>

            </div>
        </div>

    </form>
</body>
</html>
