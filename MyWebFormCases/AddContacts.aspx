<%--<ajaxToolkit:ComboBox ID="ComboBox1" runat="server"></ajaxToolkit:ComboBox>--%>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddContacts.aspx.cs" Inherits="WebFormCases.AddContacts" %>

<%--<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>--%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <div> 
         
                 
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label><asp:TextBox ID="TextBox1" runat="server"  ></asp:TextBox><br />
                    <asp:Button ID="Button1" runat="server" Text="Submit"  OnClick="Button1_Click" />
                 
            <div>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/ShowSuppliers.aspx" >go to suppliers</asp:LinkButton>
            </div>
            
        </div>
    </form>
</body>
</html>
