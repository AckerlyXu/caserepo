<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ListViewGetCheckbox.aspx.vb" Inherits="VBWebForm.ListViewGetCheckbox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
   <%-- <script src="../Scripts/jquery-3.3.1.js"></script>--%>
<%--    <script src="../Scripts/DataTable/datatables.js"></script>--%>
<link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet" />
   
  <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

  
        <script type="text/javascript">
            var array = [];
            function setValue() {
                $("#HiddenField2").val(array.join(","));
            }
            $(function () {
                
                $("#dataTable :checkbox").change(function () {
                    if ($(this).prop("checked")) {
                        array.push($(this).parent().siblings("input[type=hidden]").val());

                    } else {
                        index = array.indexOf($(this).parent().closest("input[type=hidden]").val());
                        array.splice(index, 1);
                    }
                })
                $("#dataTable").DataTable({ "pageLength": 3
})

            })
        </script>
   

</head>
<body>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataStaffHRDFormIzin" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
        <asp:ListView ID="ListViewHRDFormIzin" runat="server" DataSourceID="SqlDataStaffHRDFormIzin" DataKeyNames ="CustomerId" enableviewstate="false">
		<LayoutTemplate>
				<table id="dataTable" class="table table-bordered striped data" align="left">
				       <thead style="background-color:#4877CF">
                                        <!-- add checkbox -->
                                        <th style="text-align:center; color:white">Check</th>
					<th style="text-align:center; color:white">NIK</th>
					<th style="text-align:center; color:white">Nama</th>
                                        <th style="text-align:center; color:white">Jabatan</th>                                     
					<th style="text-align:center; color:white">Aksi</th>
					</thead>
				        <asp:PlaceHolder ID="itemPlaceHolder" runat="server" />
				</table>
		</LayoutTemplate>
		<ItemTemplate>
					<tr>               
                                        <td>
                                            <asp:CheckBox ID="CheckBox1" runat="server" ToolTip='<%# Eval("ContactName") %>' />
                                            <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("CustomerId") %>' />
                                        </td>
					<td style="text-align:center">
                                            <asp:Label ID="lbl" runat="server" Text='<%# Eval("CompanyName")%>' ></asp:Label></td>
					<td>
                                            <%#Eval("Address")%></td>
                                        <td>
                                            <%#Eval("Region")%></td>
					<td style="text-align:center">
                                            <asp:LinkButton ID="lnkSelect" Text='DETAIL' CommandName="Select" runat="server" ><img src="img/detail.png" width="50px" height="50px" /></asp:LinkButton></td>
					</tr>
		</ItemTemplate>
					<EmptyDataTemplate>Data Izin Karyawan Tidak diketemukan</EmptyDataTemplate> 
					<EmptyItemTemplate>Data Izin Karyawan Tidak diketemukan</EmptyItemTemplate>              
</asp:ListView>
        <asp:HiddenField ID="HiddenField2" runat="server" Value="" />
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" OnClientClick="setValue()" />
        
    </form>

</body>
</html>
