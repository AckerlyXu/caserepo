<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WithModalPopup.aspx.cs" Inherits="MyWebFormCases.gridView2.WithModalPopup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server"  >
          <div class="container ">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" >

            <Columns>
                <asp:TemplateField HeaderText="flag">
                    <ItemTemplate>
                          <asp:LinkButton ID = "imgPrint" runat = "server" CausesValidation = "false" CommandArgument = '<%# Eval("Flag")%>'
                                                                   OnCommand="imgPrint_Command"              CommandName = "Print" CssClass = "iconesTable icon_print"  ToolTip = "Print"  Text="show"/>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>

        </asp:GridView>
                </div >
        
        <div class="modal fade" id="myEditModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header bg-primary">
                    <button type="button" class="close" data-dismiss="modal">×</button>
                    <h4 class="modal-title " id="myModalLabel">edit </h4>
                </div>
                <div class="modal-body">
                    
                     <div class="container form-group col-md-12">
        <div class="row">
            <div class="form-inline">
            <div class="form-group col-md-3"></div>

            <div class="form-group col-md-5">
                <div class="clearfix"></div>
                <div class="form-group">
                    
                </div>
              
        
                <div class="panel panel-danger">
                    <div class="panel-heading"><img src="http://internet.sefaz.es.gov.br/imagens/topo_brasao.png" class="img-responsive center-block" alt="Cinque Terre"><h4 class="text-center">BNES SA</h4></div>
                    <h5 class="text-center"><strong>BNES CORPORATE</strong></h5>
                    <h5 class="text-center"><strong>Payment and Electronic Transfers</strong></h5>
                    <h5 class="text-center"><strong>PAYMENT: Deposit</strong></h5>
                   <%-- <form class="form-horizontal" action="/action_page.php">--%>
                        <div class="form-group">
                            <label class="control-label  col-sm-3 text-align: left " style="font-weight: normal">Holder: </label><asp:TextBox ID="input1" CssClass="form-control" runat="server"></asp:TextBox>
                           
                        </div>
                        <div class="form-group">
                            <label class="control-label  col-sm-3 text-align: left " style="font-weight: normal">
Bar code:</label>
                        </div>
                        <div class="form-group">

                            <label class="control-label  col-sm-3 text-align: left " style="font-weight: normal">
Payday:</label>  
                              <asp:TextBox ID="input2" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label class="control-label  col-sm-3 text-align: left " style="font-weight: normal">Document Value:</label>
                              <asp:TextBox ID="input3" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label class="control-label  col-sm-3 text-align: left " style="font-weight: normal">Protocol:</label>
                        </div>
                        <div class="form-group">
                           <label class="control-label  col-sm-3 text-align: left " style="font-weight: normal">Register:</label>
                        </div>
                        <div class="form-group">
                            <label class="control-label  col-sm-3 text-align: left " style="font-weight: normal">Emissao:</label>
                        </div>
                  <%--  </form>--%>
                    <div class="pull-right">
                    <button class="btn btn-success" id="btnImprimir" type="button"><p>PRINT <span class="glyphicon glyphicon-print"></span></p></button>
                </div>
                    </div>
                </div>

                
            </div>

            <div class="form-group col-md-3"></div>
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

     $(function () {
         $("#btnImprimir").click(
             function () {

                 $("#form1").attr("action", "/WebForm3.aspx");
                 $("#form1").submit();
               

             }
         )

     })

 </script>
    </form>
</body>
</html>
