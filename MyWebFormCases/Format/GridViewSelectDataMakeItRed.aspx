<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridViewSelectDataMakeItRed.aspx.cs" Inherits="MyWebFormCases.Format.GridViewSelectDataMakeItRed" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:gridview runat="server" DataSourceID="SqlDataSource1" id="gridView1" OnDataBound="gridView1_DataBound" CssClass="table table-bordered" >
                <Columns>

                   
                </Columns>
            </asp:gridview>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebFormCases.Models.supplyModelConnectionString %>" SelectCommand="data_red_mark" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        </div>
    </form>
</body>

</html>
