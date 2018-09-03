<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pagingDemo.aspx.cs" Inherits="MyWebFormCases.gridview.pagingDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1" AllowPaging="true">
            <Columns>
                <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
                <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                <asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" />
                <asp:BoundField DataField="ContactTitle" HeaderText="ContactTitle" SortExpression="ContactTitle" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
                <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Fax" HeaderText="Fax" SortExpression="Fax" />
            </Columns>
    
            <PagerTemplate>

<table width="100%">

   <tr>

      <td style="text-align: center">

 

           第<asp:Label  ID="lblPageIndex"  runat="server"

          Text="<%#((GridView)Container.Parent.Parent).PageIndex + 1 %>" ></asp:Label>页

 

         共<asp:Label  ID="lblPageCount"  runat="server" Text="<%# ((GridView)Container.Parent.Parent).PageCount %>"></asp:Label>页

 

          <asp:LinkButton ID="btnFirst" runat="server" CausesValidation="False" CommandArgument="First"
CommandName="Page" Text="首页"></asp:LinkButton>

 

          <asp:LinkButton ID="btnPrev" runat="server"
CausesValidation="False" CommandArgument="Prev"
CommandName="Page" Text="上一页"></asp:LinkButton>

 

          <asp:LinkButton ID="btnNext" runat="server"
CausesValidation="False" CommandArgument="Next"
CommandName="Page" Text="下一页"></asp:LinkButton>

 

          <asp:LinkButton ID="btnLast" runat="server"
CausesValidation="False" CommandArgument="Last"
CommandName="Page" Text="尾页"></asp:LinkButton>

 

<asp:TextBox  ID="txtNewPageIndex"  runat="server"
Text="<%# ((GridView)Container.Parent.Parent).PageIndex + 1%>" Width="20px"></asp:TextBox>

                           

<asp:LinkButton ID="btnGo" runat="server" CausesValidation="False" CommandArgument="-1"  CommandName="Page" Text="GO"></asp:LinkButton>

          

</td>

</tr>

</table>

</PagerTemplate>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
    </form>
</body>
</html>
