<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JqueryDataTableNotWorkAfterUpdatePanelUpdate.aspx.cs" Inherits="MyWebFormCases.jqueryUiPlugin.JqueryDataTableNotWorkAfterUpdatePanelUpdate" %>

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
        <div class="col-md-12">
            <div class="form-group">
                <div class="table-responsive">
                    
                    <asp:ScriptManager ID="ScriptManager" runat="server" />
                    <asp:UpdatePanel ID="upnlUsers" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="true">
                        <ContentTemplate> 
                            <div class="form-group row">
                                <label for="lblInflator" class="col-sm-1 col-form-label">Inflator :</label>
                                <div class="col-sm-2">
                                    <asp:TextBox ID="txtInflator" CssClass="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfv1" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtInflator"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="ltxtDeflator" class="col-sm-1 col-form-label">Deflator :</label>
                                <div class="col-sm-2">
                                    <asp:TextBox ID="txtDeflator" CssClass="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfv2" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtDeflator"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-1"></div>
                                <div class="col-sm-2">
                                    <asp:Button ID="btnInsert" CssClass="btn btn-primary"  runat="server" class="btn btn-primary" Text=" Save " OnClick="btnInsert_Click" ></asp:Button>
                                </div>
                            </div>
                            </br>
                            <asp:GridView ID="gvwInflator" runat="server"   AutoGenerateColumns="false" AllowSorting="true" Font-Size="9pt"
                                BackColor="LightGoldenrodYellow" BorderColor="Tan"  ForeColor="Black" GridLines="none"
                                CssClass="table table-bordered table-striped" ClientIDMode="Static" BorderWidth="1px" 
                                CellPadding="3" CellSpacing="2" BorderStyle="None"  HeaderStyle-HorizontalAlign="Center" 
                                EmptyDataText="No Records Found!" EmptyDataRowStyle-ForeColor="Red" EmptyDataRowStyle-CssClass ="gvEmpty" >
                                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                <Columns>
                                    <asp:BoundField DataField="SID" HeaderText="SID" InsertVisible="False" ItemStyle-CssClass="hiddencol" HeaderStyle-CssClass="hiddencol" />
                                    <asp:BoundField HeaderText="Inflator" DataField="Name" />
                                    <asp:BoundField HeaderText="Deflator" DataField="City" />
                                    <asp:TemplateField HeaderText="Action">
                                        <ItemTemplate>
                                           <asp:ImageButton ID="ibtnDelete" runat="server" imageUrl="~/images/icons/cut.png"
                                              OnClientClick="javascript:return confirm('Do you want to delete it?');"  />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="btnInsert" EventName="Click" />
                        </Triggers>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
    </div>

    </form>
    <script>
        $(function () {
            $("<thead></thead>").append($("#gvwInflator tr:first")).prependTo($("#gvwInflator"));
            $('#gvwInflator').dataTable();

            var prm = Sys.WebForms.PageRequestManager.getInstance();
    if (prm != null) {
        prm.add_endRequest(function (sender, e) {
            if (sender._postBackSettings.panelsToUpdate != null) {
               //  $("<thead></thead>").append($("#gvwInflator tr:first")).prependTo($("#gvwInflator"));
               //$('#gvwInflator').dataTable();
            }
        });
    };
        });
    </script>
</body>
</html>
