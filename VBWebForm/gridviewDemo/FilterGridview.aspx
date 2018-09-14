<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FilterGridview.aspx.vb" Inherits="VBWebForm.FilterGridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-3.3.1.js"></script>
</head>
<body>
    <form id="form1" runat="server">
   
                   please choose: <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="true"></asp:TextBox>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
                <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                <asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT [CustomerID], [CompanyName], [ContactName], [Address] FROM [Customers] WHERE ([CustomerID] LIKE   '%' + @CustomerID2 + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" DefaultValue="%" Name="CustomerID2" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
          
        <script>
            $(function () {
               // $("#TextBox1").focus();
                $("#TextBox1").keyup(function () {
                    $("#form1").submit();
                })

            })
        </script>
    </form>
</body>
</html>
