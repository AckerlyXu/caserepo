<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DatePickerAndGridView.aspx.cs" Inherits="MyWebFormCases.gridview.DatePickerAndGridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Flu Immunisation Consent</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://getaddress.io/js/jquery.getAddress-2.0.7.min.js"></script>
    <script src="Scripts/moment.js"></script>
    <script src="Scripts/bootstrap-datetimepicker.js"></script>
<!-- Boostrap CSS -->
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css" />
    <!-- Optional theme -->
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap-theme.min.css" />
    <!-- Boostrap DatePicket CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.css" type="text/css" />
    <!-- Boostrap DatePciker JS  -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RecordId" DataSourceID="SqlDataSource1" AutoGenerateEditButton="True" OnRowUpdating="GridView1_RowUpdating" OnRowDataBound="GridView1_RowDataBound"  >
                <Columns>
                    <asp:BoundField DataField="RecordId" HeaderText="RecordId" ReadOnly="True" SortExpression="RecordId" InsertVisible="False" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:TemplateField HeaderText="AdministerDate" >
                            <EditItemTemplate>
                                <asp:TextBox ID="AdministerDate" runat="server" CssClass="myDate"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblAdministerDate" runat="server" Text='<%#Bind("AdministerDate") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>


                </Columns>
            </asp:GridView>
            <script type="text/javascript">
                $(document).ready(function () {
                    var dp = $('.myDate');
                    dp.datepicker({
                        changeMonth: true,
                        changeYear: true,
                        format: "dd/mm/yyyy",
                        language: "tr"
                    }).on('changeDate', function (ev) {

                        $(this).datepicker('hide');
                    });
                });
            </script>

              <script type="text/javascript">
                   $(function () {
                       $('#ShipDate').datetimepicker();
                   });
                </script>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebFormCases.Models.supplyModelConnectionString %>" SelectCommand="SELECT [RecordId], [FirstName], [AdministerDate] FROM [Record]" DeleteCommand="DELETE FROM [Record] WHERE [RecordId] = @RecordId" InsertCommand="INSERT INTO [Record] ([FirstName], [AdministerDate]) VALUES (@FirstName, @AdministerDate)" UpdateCommand="UPDATE [Record] SET [FirstName] = @FirstName, [AdministerDate] = @AdministerDate WHERE [RecordId] = @RecordId">
                <DeleteParameters>
                    <asp:Parameter Name="RecordId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="AdministerDate" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="AdministerDate" Type="DateTime" />
                    <asp:Parameter Name="RecordId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
