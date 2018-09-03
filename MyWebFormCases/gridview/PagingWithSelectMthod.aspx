<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PagingWithSelectMthod.aspx.cs" Inherits="MyWebFormCases.gridview.PagingWithSelectMthod" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server"  SelectMethod="GridView1_GetData" ItemType="MyWebFormCases.Models.Customer"  
           AllowSorting="true" AllowPaging="true" PageSize="10"
           DataKeyNames="CustomerId" >

           

        </asp:GridView>
    </form>
</body>
</html>
