<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SortingRemoveIcon.aspx.cs" Inherits="MyWebFormCases.jqueryUiPlugin.SortingRemoveIcon" %>

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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EntryNo" DataSourceID="SqlDataSource1">
            <HeaderStyle HorizontalAlign="Center" />

            <Columns>
                <asp:BoundField DataField="EntryNo" HeaderText="EntryNo" InsertVisible="False" ReadOnly="True"  HeaderStyle-Font-UnderLine="true" />
                <asp:BoundField DataField="Code" HeaderText="Code"  HeaderStyle-Font-UnderLine="true" />
                <asp:BoundField DataField="Description" HeaderText="Description"  HeaderStyle-Font-UnderLine="true"  />
                <asp:BoundField DataField="categoryid" HeaderText="categoryid"  />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EntityExe %>" SelectCommand="SELECT [EntryNo], [Code], [Description], [categoryid] FROM [Entries]"></asp:SqlDataSource>
     
         <script>

               $("<thead class='bg-primary text-white'></thead>").append($("#GridView1 tr:first")).prependTo($("#GridView1"));
             $('#GridView1').dataTable(
                 {
                    order:[],

                     "columnDefs": [{ "orderable": false, "targets": [3] }],

                      
                "fnDrawCallback": function( oSettings ) { 
                    $("#GridView1 thead  th").removeClass("sorting_asc sorting sorting_desc");
                    
                }
                    
                 }

             );
                          $("#GridView1 thead th").not("#GridView1 thead th:eq(3)").css("cursor","pointer")
             $("#GridView1 thead th").not("#GridView1 thead th:eq(3)").mouseover(

                 function () {
                 
                     $(this).css("color", "red");
                 }
             ).mouseout(
                 function() {
                     $(this).css("color", "white");
                 }
             )
             


             
               
              

              
             
             
      
         </script>
    </form>
</body>
</html>
