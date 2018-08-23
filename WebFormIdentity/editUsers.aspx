<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editUsers.aspx.cs" Inherits="WebFormIdentity.editUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <div>

             <asp:GridView ID="GridView1" runat="server" SelectMethod="GridView1_GetData" ItemType="WebFormIdentity.Models.ApplicationUser"  AutoGenerateColumns="false" AutoGenerateEditButton="true"  UpdateMethod="GridView1_UpdateItem"
                DataKeyNames="Id" 
                 >
                <Columns>

                    <asp:BoundField  DataField="Id" HeaderText="Id" ReadOnly="true" />

                    <asp:BoundField  DataField="Email" HeaderText="Email" />

                    <asp:BoundField  DataField="PasswordHash" HeaderText="PasswordHash" />

                   
                </Columns>
                

            </asp:GridView>
        </div>
    </form>
</body>
</html>
