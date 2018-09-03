<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CellAlignNumber.aspx.cs" Inherits="MyWebFormCases.gridview.CellAlignNumber" %>

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
      

<div class="row">  
        <div class="col-lg-12 "> 
            <div class="table-responsive">
                <asp:GridView ID="gvw" runat="server"
                    CssClass="table table-bordered table-striped" AutoGenerateColumns="false" 
                    ClientIDMode="Static" BorderWidth="1px" 
                    BorderStyle="None" BorderColor="#DEBA84" HeaderStyle-CssClass="GridHeader" 
                    EmptyDataText="No Records Found!" EmptyDataRowStyle-ForeColor="Red" EmptyDataRowStyle-CssClass ="gvEmpty" >
                    <HeaderStyle ForeColor="White" Font-Bold="True" BackColor="#428bca"></HeaderStyle>
                    <Columns>
                        <asp:TemplateField HeaderText="Location">
                            <ItemTemplate>

                                <asp:HiddenField ID="hdfStoreCategory" runat="server" Value='123' />
                                <asp:Label runat="server" ID="lblLocation" Text='<%#Eval("Location") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="BillingTarget" HeaderText="Billing Target" />
                        <asp:BoundField DataField="BillingAchievement" HeaderText="Billing Achievement" />
                        <asp:BoundField DataField="BillingPercentAchieved" HeaderText="Billing % Achieved" ItemStyle-Height="50px" />

                        <asp:TemplateField HeaderText="Category">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblCategory" Text='<%#Eval("Description") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="NMS Months">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblNMSMonths" Text='<%#Eval("NMSMonths") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        

                        <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>
                                <asp:linkbutton id="btnEdit"  ToolTip="Update Record" CommandName="EditRow" runat="server" CausesValidation="False" CssClass="clslnkbutton"
                                    text="Edit"
                                    />
                                <asp:linkbutton id="lnkBtnDelete"  ToolTip="Delete Record"  runat="server"
                                    text="Delete"
                                CssClass="clslnkDelbutton" OnClientClick="return confirm('Are you sure you want to delete this item?');" CausesValidation="False" /> 
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>

                <script>
                    $(function () {
                      
                         $("<thead></thead>").append($("#gvw tr:first")).prependTo($("#gvw"));
 $('#gvw').DataTable({
                
                        });
                     
                        $("#gvw tr").each(function () {
                             
                            $(this).css("line-height", $(this).height() + "px").css("text-align", "center");   

                        })

                    })
                </script>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
