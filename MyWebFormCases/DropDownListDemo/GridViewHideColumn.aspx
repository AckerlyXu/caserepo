<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridViewHideColumn.aspx.cs" Inherits="MyWebFormCases.DropDownListDemo.GridViewHideColumn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<script src="../Scripts/jquery-3.3.1.js"></script>
<body>
    <form id="form1" runat="server">
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>1show</asp:ListItem>
            <asp:ListItem>1hide</asp:ListItem>
            <asp:ListItem>2show</asp:ListItem>
            <asp:ListItem>2hide</asp:ListItem>


        </asp:DropDownList>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1"  >
            <Columns>
                <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
                <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                <asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" />
                <asp:BoundField DataField="ContactTitle" HeaderText="ContactTitle" SortExpression="ContactTitle" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
                <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
            </Columns>
        </asp:GridView>
        <asp:GridView ID="GridView2" runat="server"></asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthWindDbContext %>" SelectCommand="SELECT Top 20 [CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode] FROM [Customers]"></asp:SqlDataSource>
       <script>
        $(function(){

            $("#DropDownList1").change(
                function () {
                    $("#GridView1 tbody").children().each(function () {
                        if ($("#DropDownList1").val() == "1hide") {
                        $(this).children().eq(0).hide();
                        }
                        if ($("#DropDownList1").val() == "1show") {
                            $(this).children().eq(0).show();
                        }
                         if ($("#DropDownList1").val() == "2hide") {
                        $(this).children().eq(1).hide();
                        }
                        if ($("#DropDownList1").val() == "2show") {
                            $(this).children().eq(1).show();
                        }
                        
                    })
                    
                }
            )

})
       </script>
    </form>
</body>
</html>
