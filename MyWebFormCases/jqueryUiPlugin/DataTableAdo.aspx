<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataTableAdo.aspx.cs" Inherits="MyWebFormCases.jqueryUiPlugin.DataTableAdo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
 
 <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet" />
   
      <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
         <div class="table-responsive">
                    <asp:GridView ID="gvw1"  runat="server"
                                        CssClass="table table-bordered table-striped "
                                        ClientIDMode="Static" >

                        <Columns>
                            <asp:BoundField DataField="CustomerId" HeaderText="myCustomizedCustomerId" />
                            
                        </Columns>
                        
                    </asp:GridView></div>
    </form>
</body>
    <script type="text/javascript" charset="utf-8">
        $(document).ready(function () {
            // change the sixth column's header
            $("#gvw1 tr:eq(0) th:eq(5)").replaceWith("<th >myHeadThroughJquery</th>")
            $("#gvw1").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</html>
