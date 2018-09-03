<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataTableAjax.aspx.cs" Inherits="MyWebFormCases.jqueryUiPlugin.DataTableAjax" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

  
  
<%--      <link href="../Scripts/DataTable/datatables.css" rel="stylesheet" />--%>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
   <%-- <script src="../Scripts/jquery-3.3.1.js"></script>--%>
<%--    <script src="../Scripts/DataTable/datatables.js"></script>--%>
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

<div style="padding: 10px; border: 5px solid black; margin-top: 50px" class="container-fluid"> 
<div> 

   <%-- <input type="button" name="copy" value="btn1" id="copy" />
<b class="label label-danger" style="padding: 8.5px">Click to Show or Hide Column:</b> 
<div class="btn-group btn-group-sm"> 
<a class="showHide btn btn-primary" data-columnindex="0">ID</a> 
<a class="showHide btn btn-primary" data-columnindex="1">FirstName</a> 
<a class="showHide btn btn-primary" data-columnindex="2">LastName</a> 
<a class="showHide btn btn-primary" data-columnindex="3">FeesPaid</a> 
<a class="showHide btn btn-primary" data-columnindex="4">Gender</a> 
<a class="showHide btn btn-primary" data-columnindex="5">Email</a> 
<a class="showHide btn btn-primary" data-columnindex="6">TelephoneNumber</a> 
<a class="showHide btn btn-primary" data-columnindex="7">Date of Birth</a> 
</div> 
</div> 
<br /> --%>
<table id="studentTable" > 
<thead> 
<tr> 
<th>ID</th> 
<th>First Name</th> 
<th>Last Name</th> 
<th>Fees Paid</th> 
<th>Gender</th> 
<th>Email</th> 
<th>Telephone Number</th> 
<th>Date of Birth</th> 
</tr> 
</thead> 
    <tbody>

        <tr>
            <td>ID</td> 
<td>First Name</td> 
<td>Last Name</td> 
<td>Fees Paid</td> 
<td>Gender</td> 
<td>Email</td> 
<td>Telephone Number</td> 
<td>Date of Birth</td> 
        </tr>
    </tbody>

</table> 

    <div id="example" class="small-6 columns"></div>

       <script type="text/javascript"> 


           $(document).ready(function() {
var table=$('#studentTable').DataTable({
dom: 'lBfrtip',
destroy: true,
buttons: [
'copy', 'csv', 'excel', 'pdf', 'print'
]
} );
table.buttons().container()
.appendTo( $('#example') );
} );

//$(document).ready(function () { 
//$.ajax({ 
//type: "POST", 
//dataType: "json", 
//url: "studentService.asmx/GetStudents", 
//success: function (data) {

//var table = $('#studentTable').DataTable({
//    dom: 'lBfrtip',
//    destroy: true,
//    buttons: [
//'copy', 'csv', 'excel', 'pdf', 'print'
//],
//data: data, 
//columns: [ 
//{ 'data': 'iD' }, 
//{ 'data': 'firstName' }, 
//{ 'data': 'lastName' }, 
//{ 
//'data': 'feesPaid', 'render': function (feesPaid) { 
//return '$ ' + feesPaid; 
//} 
//}, 
//{ 'data': 'gender' }, 
//{ 'data': 'emailId' }, 
//{ 'data': 'telephoneNumber' }, 
//{ 
//'data': 'dateOfBirth', 'render': function (date) { 
//var date = new Date(parseInt(date.substr(6))); 
//var month = date.getMonth() + 1; 
//return date.getDate() + "/" + month + "/" + date.getFullYear(); 
//} 
//}],

//}); 

//$('#studentTable tfoot th').each(function () { 
//var placeHolderTitle = $('#studentTable thead th').eq($(this).index()).text(); 
//$(this).html('<input type="text" class="form-control input input-sm" placeholder = "Search ' + placeHolderTitle + '" />'); 
//}); 
//datatableVariable.columns().every(function () { 
//var column = this; 
//$(this.footer()).find('input').on('keyup change', function () { 
//column.search(this.value).draw(); 
//}); 
//}); 
//$('.showHide').on('click', function () { 
//var tableColumn = datatableVariable.column($(this).attr('data-columnindex')); 
//tableColumn.visible(!tableColumn.visible()); 
//}); 
//}
//}); 


//}); 
</script>
</form>
</body>
</html>
