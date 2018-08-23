<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataTableSortAjax.aspx.cs" Inherits="MyWebFormCases.jqueryUiPlugin.DataTableSortAjax" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-1.10.2.min.js"></script>
  
  
<%--      <link href="../Scripts/DataTable/datatables.css" rel="stylesheet" />--%>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
   <%-- <script src="../Scripts/jquery-3.3.1.js"></script>--%>
<%--    <script src="../Scripts/DataTable/datatables.js"></script>--%>
 <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet" />
   
  <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
      
    <div class="container">
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" >Add New</button><br /><br />
        <table id="tblCategory" class="ui celled table">
            <thead class="bg-primary text-white">
                <tr>
                    <th>No</th>
                    <th>Code</th>
                    <th>Description</th>
                    <th>Months</th>
                    <th>Action</th>  
                </tr>  
            </thead>  
        </table>
    </div>

    </form>
</body>
    <script>
        loadData();
      function loadData()
{
    $.ajax({
        type: "POST",
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        url: "/Services/WebService.asmx/GetCategories",
        success: function (data) {
            var dt = $('#tblCategory').DataTable({
                //stop initial ordering
                  order:[],
                "searching": true,
                "ordering": true,
                "pagingType": "full_numbers",
                "caption": 'List Of Categories',

                "columnDefs": [{ "orderable": false, "targets": [4] }, { "visible":false,"targets":[0]}],
                "emptyrecords": 'No records to display',
                "data": data.d,
                "columns": [
                    { 'data': 'No' },
                    { 'data': 'Code' },
                    { 'data': 'Description' },
                    { 'data': 'Months'},
                    {
                        "mRender": function (data, type, row) {
                            return '<a class="btn btn-warning" onClick="getbyID(row.No)" href="#">Edit</a>';
                        }
                    }]
                    
            });
         
        }
    });
}

    </script>
</html>
