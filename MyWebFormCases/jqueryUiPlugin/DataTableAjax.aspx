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
<table id="studentTable"  > 
<thead> 
<tr> 
<th>ID</th> 
<th>FirstName</th> 
<th>LastName</th> 

<th>Gender</th> 
 
</tr> 
</thead> 
    <tbody>

        <tr>
            <td>123</td> 
<td>tom</td> 
<td>acker</td> 

<td>male</td> 



        </tr>
         <tr >
            <td>456</td> 
<td>lili</td> 
<td>mile</td> 

<td>female</td> 



        </tr>
    </tbody>

</table> 

    <div id="example" class="small-6 columns"></div>

       <script type="text/javascript"> 


           $(document).ready(function() {
var table=$('#studentTable').DataTable({
    dom: 'lBfrtip',
    searching: false,
    paging: false,

destroy: true,
buttons: [
    'copy', 'csv', 'pdf', 'print',
    {
        extend: 'excelHtml5', text: 'save as excel',
        customize: function (xlsx) {
            var sheet = xlsx.xl.worksheets['sheet1.xml'];//get the first sheet
      
            $('row:eq(2) c', sheet).attr('s',18 );// change its third row's style  18 is jquerydatatable's build-in style number
        }
    }
]
} );
table.buttons().container()
.appendTo( $('#example') );
} );




</script>
</form>
</body>
</html>
