<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TemplateDataBindGetClearedOnpostback.aspx.cs" Inherits="MyWebFormCases.gridview.TemplateDataBindGetClearedOnpostback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">  
        <div class="col-lg-12 "> 
            <div class="table-responsive">
        <asp:GridView ID="gvwCategories"  runat="server"
                 CssClass="table table-bordered table-striped" AutoGenerateColumns="false" 
                    ClientIDMode="Static" BorderWidth="1px"  OnRowCommand="gvw_RowCommand" OnRowDataBound ="gvw_RowDataBound"
                    BorderStyle="None" BorderColor="#DEBA84" HeaderStyle-CssClass="GridHeader" 
                    EmptyDataText="No Records Found!" EmptyDataRowStyle-ForeColor="Red" EmptyDataRowStyle-CssClass ="gvEmpty" 
                 >
                <HeaderStyle ForeColor="White" Font-Bold="True" BackColor="#428bca"></HeaderStyle>
                <Columns>
                    
                   <asp:TemplateField HeaderText="Code">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="lblCode" Text='<%#Eval("Code") %>'></asp:Label>
                            <asp:HiddenField ID="hdfEntryNo" runat="server" Value='<%# Bind("EntryNo") %>' />
                     
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Description">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="lblDescription" Text='<%#Eval("Description") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Category">
                        <ItemTemplate>
                                                               <%-- here to save the data of your category --%>
                            <asp:Label runat="server" ID="lblCategory" categoryId='<%# Eval("Categoryid") %>' Text=''></asp:Label>

                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:linkbutton id="Linkbutton1" Text="Edit"  ToolTip="Update Record" CommandName="EditRow" runat="server" CssClass="btn btn-primary"/> 
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
                </asp:GridView>
                   </div>
        </div>

        <div class="modal fade" id="myEditModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header bg-primary">
                    <button type="button" class="close" data-dismiss="modal">×</button>
                    <h4 class="modal-title " id="myModalLabel">Add New </h4>
                </div>
                <div class="modal-body">
                    <div class="form-horizontal">
                        <div class="form-group">
                             <asp:HiddenField ID="hdf_EntryNo" runat="server" />

                            <asp:Label ID="lblCode" runat="server" CssClass="col-sm-4 control-label" Text="Code"></asp:Label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtCode" CssClass="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfv1" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtCode"
                                    ValidationGroup="edit">
                                    

                                </asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblDescription" runat="server" CssClass="col-sm-4 control-label" Text="Description"></asp:Label>
                            <div class="col-sm-8">
                                <asp:TextBox ID="txtDescription"  CssClass="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfv2" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtDescription"
                                    ValidationGroup="edit"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                       
                        
                        <div class="form-group">
                            <div class="col-sm-4"></div>
                            <div class="col-sm-4">
                           
                                <asp:Button ID="btnInsert" CssClass="btn btn-primary"  runat="server" class="btn btn-primary" Text=" Save "  ValidationGroup="eidt" OnClick="UpdateData"></asp:Button>
                            </div>
                        </div>
                    </div>
                </div>        
            </div>
        </div>
    </div>
       
        
         <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>

        <script>

          
            function openModal() {
                $('#myEditModal').modal('show')
                $("#btnInsert").val("Update Record");
                 $("#myModalLabel").html("Update");

            }
        </script>
  
    </form>
</body>
</html>
