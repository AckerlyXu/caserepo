<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowAggregatedData.aspx.cs" Inherits="MyWebFormCases.gridView2.ShowAggregatedData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnRowDataBound="GridView1_RowDataBound">

            <Columns>
<asp:BoundField DataField="Location" HeaderText="Location" />
<asp:BoundField DataField="EmployeeId" HeaderText="Employee Id" />
<asp:BoundField DataField="Amount" HeaderText="Amount" DataFormatString="{0:n}"/>
       </Columns>
        </asp:GridView>

       
    </form>
</body>
</html>
