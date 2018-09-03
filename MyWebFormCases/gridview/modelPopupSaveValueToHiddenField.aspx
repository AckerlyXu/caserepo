<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modelPopupSaveValueToHiddenField.aspx.cs" Inherits="MyWebFormCases.gridview.modelPopupSaveValueToHiddenField" %>

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
                CssClass="table table-bordered table-striped" AutoGenerateColumns="false" 
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
                    <asp:TemplateField HeaderText="TextBoxColumn">
                       
                        <ItemTemplate>
                            <asp:HiddenField ID="HiddenField1"  runat="server" />
                             <asp:HiddenField ID="HiddenField2"  runat="server" Value="minValue" />
                             <asp:TextBox runat="server"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
                </asp:GridView>

        <div class="modal fade" id="myEditModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header bg-primary">
                    <button type="button" class="close" data-dismiss="modal">×</button>
                    <h4 class="modal-title " id="myModalLabel">please choose</h4>
                </div>
                <div class="modal-body">

                    
                   min <input type="radio" name="name" value="minValue" checked="checked" id="radio1" /> &nbsp;  max<input type="radio" name="name" value="maxValue" id="radio2" />
                </div>        
            </div>
        </div>
    </div>
 
    
        
       
        <script>


           //set a global variable to get the input which is being edited
            var $input = null;
          
            $(document).ready(function () {

                  $("#myEditModal :radio").change(
                      function () {
                          console.log($(this));
                    if ($(this).prop("checked") && $(this).val() == "maxValue") {
                   //set the hidden field to the value
                        $input.siblings(":eq(0)").val($input.val());
                         $input.siblings(":eq(1)").val($(this).val());
                        $('#myEditModal').modal('hide');
                        //change the value of radio back to min
                        $("#radio1").prop("checked", true);
                    }
                }
            )
                
                $("#gvwCategories tr ").each(function () {
                    // bind keypress event to each input 
                    $(this).find("td:eq(3) input[type=text]").keyup(
                        function () {
                            if ($(this).val().length == 1) {

                                  if ($(this).siblings(":eq(1)").val() == "maxValue") {

                                $("#radio2").prop("checked", true);
                            } else {
                                $("#radio1").prop("checked", true);
                            }
                    openModal();
                    //set variable $input to  the input which is being edit to use in the radio's change event 
                            $input = $(this);
                        }
                        }
                    )
                     $(this).find("td:eq(3) input[type=text]").blur(
                        function () {
                            if ($(this).siblings(":eq(1)").val() == "maxValue") {

                                $("#radio2").prop("checked", true);
                            } else {
                                $("#radio1").prop("checked", true);
                            }
                                ;
                    openModal();
                    //set variable $input to  the input which is being edit to use in the radio's change event 
                            $input = $(this);
                        }
                        
                    )
                })


                function openModal() {
                    $('#myEditModal').modal('show')
                   
                }
            })
        </script>
    </form>
</body>
</html>