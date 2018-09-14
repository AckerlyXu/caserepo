<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SqlDataSourceConflictDetection.aspx.cs" Inherits="MyWebFormCases.DataBase.SqlDataSourceConflictDetection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EntryNo" DataSourceID="SqlDataSource1" >
            <Columns>
                <asp:BoundField DataField="EntryNo" HeaderText="EntryNo" InsertVisible="False" ReadOnly="True" SortExpression="EntryNo" />
                <asp:BoundField DataField="Code" HeaderText="Code" SortExpression="Code" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
           
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:EntityExe %>" DeleteCommand="DELETE FROM [Entries] WHERE [EntryNo] = @original_EntryNo AND (([Code] = @original_Code) OR ([Code] IS NULL AND @original_Code IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))" InsertCommand="INSERT INTO [Entries] ([Code], [Description]) VALUES (@Code, @Description)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [EntryNo], [Code], [Description] FROM [Entries]" UpdateCommand="UPDATE [Entries] SET [Code] = @Code, [Description] = @Description WHERE [EntryNo] = @original_EntryNo AND (([Code] = @original_Code) OR ([Code] IS NULL AND @original_Code IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_EntryNo" Type="Int32" />
                <asp:Parameter Name="original_Code" Type="String" />
                <asp:Parameter Name="original_Description" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Code" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Code" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="original_EntryNo" Type="Int32" />
                <asp:Parameter Name="original_Code" Type="String" />
                <asp:Parameter Name="original_Description" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <%--      https://forums.asp.net/t/2146311.aspx --%>
    </form>
</body>
</html>
