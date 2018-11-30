<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CascadeDropDown.aspx.cs" Inherits="MyWebFormCases.DropDownListDemo.CascadeDropDown" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
       <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>

<center>
<table>
<tr>
<td>Product Name</td><td>
<asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
</td>
</tr>
<tr>
<td>Product Type</td><td>



</td>
</tr>
<tr>
<td>Category</td><td>
<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:WingtipToysConnectionString %>" SelectCommand="SELECT [ProductName], [Description], [UnitPrice] FROM [Products]"></asp:SqlDataSource>

        <asp:DropDownList ID="Category" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="CategoryName" DataValueField="CategoryID"></asp:DropDownList>
</td>
</tr>
<tr>
<td>Brand</td><td>
 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WingtipToysConnectionString %>" SelectCommand="SELECT [CategoryID], [CategoryName] FROM [Categories]"></asp:SqlDataSource>
        <asp:DropDownList ID="Product" AutoPostBack="True" runat="server" DataSourceID="SqlDataSource2" DataTextField="ProductName" DataValueField="ProductName"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WingtipToysConnectionString %>" SelectCommand="SELECT [ProductName], [CategoryID], [ProductID] FROM [Products] WHERE ([CategoryID] = @CategoryID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Category" DefaultValue="1" Name="CategoryID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
</td>
</tr>
<tr>
<td>Price</td><td>
<asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
</td>
</tr>
<tr>
<td>Colour</td><td>
<asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
</td>
</tr>
<tr>
<td>Weight</td><td>
<asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
</td>
</tr>
<tr>
<td>Description</td><td>
<asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
</td>
</tr>
<tr>
<td>Image</td><td>
<asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
</td>
</tr>
<tr>
<td></td><td>
<asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" CssClass="btn btn-primary" />
<asp:Label ID="Label1" runat="server"></asp:Label>
</td>
</tr>
</table>
</center>
</ContentTemplate></asp:UpdatePanel>

  <div style="padding-left:250px"><asp:Button ID="Button1" runat="server" Text="ButtonOutSideUpdaePanel"  /></div> 
           
    </form>
</body>
</html>
