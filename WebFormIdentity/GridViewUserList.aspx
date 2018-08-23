<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridViewUserList.aspx.cs" Inherits="WebFormIdentity.GridViewUserList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="GridView1" runat="server" SelectMethod="GridView1_GetData" ItemType="WebFormIdentity.Models.ApplicationUser"  AutoGenerateColumns="false" >
                <Columns>

                    <asp:BoundField  DataField="supplierName" HeaderText="supplierName" />

                    <asp:BoundField  DataField="firstLogin" HeaderText="firstLogin" />

                    <asp:BoundField  DataField="WebStatus" HeaderText="WebStatus" />

                    <asp:BoundField  DataField="LastLogDateTime" HeaderText="LastLogDateTime" />
                     
                    <asp:HyperLinkField  DataNavigateUrlFormatString="~/editUsers?Id={0}"  Text="editUsers" DataNavigateUrlFields="supplierId" />
                </Columns>


            </asp:GridView>
        </div>
    </form>
</body>
</html>
