<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="a.aspx.cs" Inherits="MyWebFormCases.a" %>
<%@ Register  tagprefix="uc1" Src="~/WebUserControl1.ascx" TagName="b"  %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-3.3.1.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        
        <%--<uc1:b runat="server"></uc1:b>--%>

        <asp:Label runat="server" Text="Label" ID="lblValidate"></asp:Label >

        <script>

            $(function () {

                $("#gotoAnother").click(function () {

                    parent.location = "/pequeno.aspx";
                })

            })


            $(document).ready(function () {
                $.ajax({
                    type: "POST",
                    dataType: "json",
                    url: "studentService.asmx/GetStudents",
                    success: function (data) {

                        var datatableVariable = $('#studentTable').DataTable({

                            data: data,
                            dom: 'lBfrtip',
                            destroy: true,
                        buttons: [
                    'copy', 'csv', 'excel', 'pdf', 'print'
                                ],
                            columns: [
                                { 'data': 'iD' },
                                { 'data': 'firstName' },
                                { 'data': 'lastName' },
                                {
                                    'data': 'feesPaid', 'render': function (feesPaid) {
                                        return '$ ' + feesPaid;
                                    }
                                },
                                { 'data': 'gender' },
                                { 'data': 'emailId' },
                                { 'data': 'telephoneNumber' },
                                {
                                    'data': 'dateOfBirth', 'render': function (date) {
                                        var date = new Date(parseInt(date.substr(6)));
                                        var month = date.getMonth() + 1;
                                        return date.getDate() + "/" + month + "/" + date.getFullYear();
                                    }
                                }],

                        });

                        $('#studentTable tfoot th').each(function () {
                            var placeHolderTitle = $('#studentTable thead th').eq($(this).index()).text();
                            $(this).html('<input type="text" class="form-control input input-sm" placeholder = "Search ' + placeHolderTitle + '" />');
                        });
                        datatableVariable.columns().every(function () {
                            var column = this;
                            $(this.footer()).find('input').on('keyup change', function () {
                                column.search(this.value).draw();
                            });
                        });
                        $('.showHide').on('click', function () {
                            var tableColumn = datatableVariable.column($(this).attr('data-columnindex'));
                            tableColumn.visible(!tableColumn.visible());
                        });
                    }
                });

            }); 
        </script>



        </script>
    </form>
</body>
</html>
