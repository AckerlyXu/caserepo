<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gridviewDropdownListPaging.aspx.cs" Inherits="MyWebFormCases.gridview.gridviewDropdownListPaging" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" >

                <Columns>
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName"  />
            <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" SortExpression="SupplierID"  />
            <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
            <asp:BoundField DataField="QuantityPerUnit" HeaderText="QuantityPerUnit" SortExpression="QuantityPerUnit" />
            
                   
                     <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
                    
        </Columns>
       
               
                
            </asp:GridView>

            <asp:DropDownList ID="lstJurisdiction" runat="server" Font-Size="XX-Small" Height="50px" Width="100px" style="overflow-x:auto"  DataTextField="CategoryName" DataValueField="CategoryID" AutoPostBack="true" DataSourceID="SqlDataSource2"></asp:DropDownList>
             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT [CategoryID], [CategoryName] FROM [Categories]"></asp:SqlDataSource>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT * FROM [Alphabetical list of products] WHERE ([CategoryID] = @CategoryID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lstJurisdiction" DefaultValue="1" Name="CategoryID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            
          
        </div>
    </form>
</body>
</html>
