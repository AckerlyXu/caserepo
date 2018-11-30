<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ListViewGetCheckbox.aspx.vb" Inherits="VBWebForm.ListViewGetCheckbox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
                                            <asp:CheckBox ID="CheckBox1" runat="server" ToolTip='<%# Eval("ContactName") %>' /></td>
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
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </form>
</body>
</html>
