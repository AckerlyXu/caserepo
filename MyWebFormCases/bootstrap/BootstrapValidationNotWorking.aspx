<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BootstrapValidationNotWorking.aspx.cs" Inherits="MyWebFormCases.bootstrap.BootstrapValidationNotWorking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
       <script type="text/javascript" charset="utf-8">
        $(document).ready(function () {
            $('#form1').bootstrapValidator({
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields: {
                    txt_Code: {
                        validators: {
                            notEmpty: {
                                message: 'The ID is required and cannot be empty'
                            }
                        }
                    },
                    txt_Description: {
                        validators: {
                            notEmpty: {
                                message: 'cannot be empty'
                            }
                        }
                    }

                }
            });
        });
    </script>

    <button type="button" id="btnAdd" class="btn btn-primary" data-toggle="modal" data-target="#myAddModal">Add New</button><br /><br />

  
    <div class="modal fade" id="myAddModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header bg-primary">
                    <button type="button" class="close" data-dismiss="modal">×</button>
                    <h4 class="modal-title " id="myModalLabel">Add New </h4>
                </div>
                <div class="modal-body">
                    <div class="form-horizontal" role="form">
                        <div class="form-group">
                            <asp:Label ID="lbl_Code" runat="server" CssClass="col-sm-4 control-label" Text="Code"></asp:Label>
                            <div class="col-sm-4">
                                <asp:TextBox ID="txt_Code" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lbl_Description" runat="server" CssClass="col-sm-4 control-label" Text="Inflator"></asp:Label>
                            <div class="col-sm-5">
                                <asp:TextBox ID="txt_Description"  CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-4"></div>
                            <div class="col-sm-5">
                                <asp:Button ID="btnInsert" CssClass="btn btn-primary"  runat="server" class="btn btn-primary" ValidationGroup="One" Text=" Save Record" OnClick="btnInsert_Click" ></asp:Button>
                            </div>
                        </div>
                    </div>
                </div>        
            </div>
        </div>
    </div>


    </form>
</body>
</html>
