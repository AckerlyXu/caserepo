<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="MyWebFormCases.crossPages.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:Panel ID="Panel1" runat="server">

        </asp:Panel>
        <asp:Menu ID="Menu1" runat="server">
            <Items>

                <asp:MenuItem NavigateUrl="other.aspx" Text="go to other page"></asp:MenuItem>
                
            </Items>

           
        </asp:Menu>

        <br />
        <br />
        <br />
         <a href="FirstPage.aspx">FirstPage</a>
            <a href="SecondPage.aspx">SecondPage</a>
    </form>
</body>
</html>
