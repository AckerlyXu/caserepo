<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JqueryValidator.aspx.cs" Inherits="MyWebFormCases.javascript.JqueryValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      
    <script src="../Scripts/jquery-1.10.2.min.js"></script>
     <script src="../Scripts/jquery.validate.js"></script>
  
 
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <div class=""tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
                            <asp:Label ID="lbl_Inf" runat="server" CssClass="col-sm-4 control-label" Text="Inf"></asp:Label>
                            <div class="col-sm-5">
                                <asp:TextBox ID="txt_Inf"  CssClass="form-control" runat="server"></asp:TextBox>

                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-4"></div>
                            <div class="col-sm-5">
                                <asp:Button ID="btnInsert" CssClass="btn btn-primary"  runat="server" class="btn btn-primary" ValidationGroup="One" Text=" Save Record" onclick="btnInsert_Click"></asp:Button>
                            </div>
                        </div>
                    </div>
                </div>        
            </div>
        </div>
    </div>

         <script type="text/javascript" charset="utf-8">
        $(document).ready(function () {
         
            $("#form1").validate({
                rules: {
                    <%=txt_Code.UniqueID %>: {
                        minlength: 2,
                        required: true
                    },
                    <%=txt_Inf.UniqueID %>: {                       
                         required: true
                     }
                }, messages: {}
            });


          

          
             })
    </script>

    </form>
</body>
</html>
