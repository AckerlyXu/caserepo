<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dataTableWithGridView.aspx.cs" Inherits="MyWebFormCases.gridview.dataTableWithGridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Scripts/DataTable/datatables.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.3.1.js"></script>
    <script src="../Scripts/DataTable/datatables.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    
    
<asp:GridView ID="tbl" runat="server" AutoGenerateColumns="False"
                  BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px"
                  CellPadding="3" DataKeyNames="SID"  onrowcancelingedit="gvwBfbStructure_RowCancelingEdit"
                  onrowdeleting="gvwBfbStructure_RowDeleting" onrowediting="gvwBfbStructure_RowEditing"
                  onrowupdating="gvwBfbStructure_RowUpdating"
                CellSpacing="2" >
    
        <Columns>
            <asp:TemplateField HeaderText="City">  
                            <EditItemTemplate>  
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>  
                            </EditItemTemplate>  
                            <ItemTemplate>  
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("City") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
                        <asp:TemplateField HeaderText="Name">  
                            <EditItemTemplate>  
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>  
                            </EditItemTemplate>  
                            <ItemTemplate>  
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  

            
            <asp:CommandField ShowCancelButton="true" ShowEditButton="true" ShowDeleteButton="true" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
           
   
           



<script type="text/javascript" charset="utf-8">
   
    $(document).ready(function () {
       
       $("#tbl").prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();

      
    });
</script>


    </form>
</body>
</html>
