<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridViewClassification.aspx.cs" Inherits="MyWebFormCases.gridview.GridViewClassification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

             <asp:GridView ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound" AutoGenerateColumns="false" >

                 <Columns>
                     <asp:BoundField DataField="BelongsTo" HeaderText="BelognsTo" HeaderStyle-Font-Bold="false" />
                     <asp:BoundField DataField="Qunatity" HeaderText="Qunatity" HeaderStyle-Font-Bold="false" />
                 </Columns>
             </asp:GridView>
        </div>
       
    </form>
</body>
</html>
