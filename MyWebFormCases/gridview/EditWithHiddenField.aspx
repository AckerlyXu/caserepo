<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditWithHiddenField.aspx.cs" Inherits="MyWebFormCases.gridview.EditWithHiddenField" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/bootstrap/3.2.0/css/bootstrap.min.css"/>

    <!-- Include FontAwesome CSS if you want to use feedback icons provided by FontAwesome -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/fontawesome/4.1.0/css/font-awesome.min.css" />

    <!-- BootstrapValidator CSS -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css"/>

    <!-- jQuery and Bootstrap JS -->
    <script type="text/javascript" src="//cdn.jsdelivr.net/jquery/1.11.1/jquery.min.js"></script>
    <script type="text/javascript" src="//cdn.jsdelivr.net/bootstrap/3.2.0/js/bootstrap.min.js"></script>

    <!-- BootstrapValidator JS -->
    <script type="text/javascript" src="//cdn.jsdelivr.net/jquery.bootstrapvalidator/0.5.0/js/bootstrapValidator.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
       <asp:GridView ID="gvwCategories"  runat="server"
                CssClass="table table-bordered table-striped" AutoGenerateColumns="false" OnRowCommand="gvw_RowCommand"
                ClientIDMode="Static" BorderWidth="1px"  
                BorderStyle="None" BorderColor="#DEBA84" HeaderStyle-CssClass="GridHeader" 
                 >
                <HeaderStyle  Font-Bold="True" BackColor="#428bca"></HeaderStyle>
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

                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                      
                            <asp:linkbutton id="Linkbutton1" Text="Edit"  ToolTip="Update Record" CommandName="EditRow" runat="server" CssClass="btn btn-primary"/> 
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
                </asp:GridView>

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
                                <asp:TextBox ID="txt_Code" CssClass="form-control" runat="server"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="rfv1" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtCode"
                                    ValidationGroup="edit">
                                   

                                </asp:RequiredFieldValidator> --%>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblDescription" runat="server" CssClass="col-sm-4 control-label" Text="Description"></asp:Label>
                            <div class="col-sm-8">
                                <asp:TextBox ID="txt_Description"  CssClass="form-control" runat="server"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="rfv2" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtDescription"
                                    ValidationGroup="edit"></asp:RequiredFieldValidator>--%>
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
 
    
        
       
        <script>
 
      $(document).ready(function () {

                
            
            $('#form1').bootstrapValidator({
              container:'tooltip',
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields: {
                     <%=txt_Code.UniqueID%>: {
                   
                        validators: {
                            notEmpty: {
                                message: 'The ID is required and cannot be empty'
                            }
                        }
                    },
                    <%=txt_Description.UniqueID%>: {
                      
                        validators: {
                           
                            notEmpty: {
                                message: 'Description cannot be empty',
                            }
                        }
                    }

                }
            }) 

      
        
        });




          
            function openModal() {
                $('#myEditModal').modal('show')
                $("#btnInsert").val("Update Record");
                 $("#myModalLabel").html("Update");

            }

        </script>
    </form>
</body>
</html>
