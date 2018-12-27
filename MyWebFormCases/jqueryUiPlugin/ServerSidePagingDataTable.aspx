<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServerSidePagingDataTable.aspx.cs" Inherits="MyWebFormCases.jqueryUiPlugin.ServerSidePagingDataTable" %>

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

  

      

</head>
<body>
    <form id="form1" runat="server">
       <table  border="0" class="dTable acelistTable">
    <thead>
        <tr>
            <th>customerId</th>
            <th>companyName</th>
            <th>contactName</th>
        
            <th>address</th>
            <th>city</th>
           
        </tr>
    </thead>
    
   
</table>



        <script>

            $(function () {

var oTable = $('.acelistTable').dataTable(
            {
                "sPaginationType": "full_numbers", 
                "sDom": "<'row-fluid inboxHeader'<'span6'<'dt_actions'>l><'span6'f>r>t<'row-fluid inboxFooter'<'span6'i><'span6'p>>", 
                "iDisplayLength": 10,//pageSize
                "bAutoWidth": false,
　　　　　　　　　　"bLengthChange": false, 
　　　　　　　　　　　　"bFilter": false,
            
                "bProcessing": true, //Show loading while opening read server data
                "bServerSide": true, //Turn on server mode, use server side to process configuration datatable
                "sAjaxSource": "/services/dataTablePaging.ashx", //url
                "aoColumns": [ 
                    {"mData": 'customerId'}, 
                    {"mData": 'companyName'},
                    {"mData": 'contactName'},
              
                    {"mData": 'address'},
                    {"mData": 'city'}
                  
                   
                  
                ],
                "aoColumnDefs": [
                    {"bSortable": false, "aTargets": [0 ]}, 
                    {"bSearchable": false, "aTargets": [1, 2, 3, 4]}, 
                ],
　　　　　　　　　　"aaSorting": [[0, "desc"]], 
                "fnRowCallback": function(nRow, aData, iDisplayIndex) {
                    return nRow;
                },
                "fnInitComplete": function(oSettings, json) { 
                }

            }
    );



            })
    
        </script>
    </form>
</body>
</html>
