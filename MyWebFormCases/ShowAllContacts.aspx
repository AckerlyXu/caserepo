<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowAllContacts.aspx.cs" Inherits="WebFormCases.ShowAllContacts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" SelectMethod="GetContacts"  ItemType="WebFormCases.Models.Contact" >
                <Columns>
                    <asp:BoundField DataField="Name" />
                   
                </Columns>


            </asp:GridView>

        </div>
    </form>
</body>
</html>
