<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataTableSortAjax.aspx.cs" Inherits="MyWebFormCases.jqueryUiPlugin.DataTableSortAjax" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-1.10.2.min.js"></script>
  
  
 
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
  
 <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet" />
   
  <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

  <script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>

      <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.flash.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
      <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>
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
                order: [],
                dom: 'lBfrtip',

buttons: [
'copy', 'csv', 'excel', 'pdf',"print"
],
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
                    }],
                "fnDrawCallback": function( oSettings ) { 
                    $("#tblCategory thead  th").removeClass("sorting_asc");//移除checkbox列的排序箭头 
                    $("#tblCategory thead  th").removeClass("sorting");
                      $("#tblCategory thead  th").removeClass("sorting_desc");
}
                    
            });
         
        }
    });
        }






        

    </script>
</html>
