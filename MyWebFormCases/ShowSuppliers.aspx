<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowSuppliers.aspx.cs" Inherits="WebFormCases.ShowSuppliers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            

            <asp:GridView ID="GridView1" runat="server"  AllowSorting="true"  ItemType="WebFormCases.Models.Supplier" SelectMethod="GetSuppliers" AutoGenerateColumns="false" DataKeyNames="SID" >

             <Columns>
                 <asp:HyperLinkField />
                 <asp:DynamicField  DataField="Name"  HeaderText="Name"  />
                 <asp:DynamicField  DataField="City" HeaderText="City" />
                <asp:HyperLinkField Text="ShowAllContacts" DataNavigateUrlFormatString="~/ShowAllContacts.aspx?SID={0}"
    DataNavigateUrlFields="SID" />
                 <asp:HyperLinkField Text="AddContact" DataNavigateUrlFormatString="~/AddContacts.aspx?SID={0}"
    DataNavigateUrlFields="SID" />
             </Columns>
                

            </asp:GridView>
        </div>
    </form>
</body>

    <script>

    </script>
</html>
