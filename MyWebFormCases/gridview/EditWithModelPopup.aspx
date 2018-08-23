<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditWithModelPopup.aspx.cs" Inherits="MyWebFormCases.gridview.EditWithModelPopup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
       <asp:GridView ID="gvwCategories"  runat="server"
                CssClass="table table-bordered table-striped" AutoGenerateColumns="false" OnRowCommand="gvwCategories_RowCommand"
                ClientIDMode="Static" BorderWidth="1px"  
                BorderStyle="None" BorderColor="#DEBA84" HeaderStyle-CssClass="GridHeader" 
                 >
                <HeaderStyle ForeColor="White" Font-Bold="True" BackColor="#428bca"></HeaderStyle>
                <Columns>
                    
                    <asp:BoundField DataField="EntryNo" HeaderText="EntryNo" InsertVisible="False" ItemStyle-CssClass="hiddencol" HeaderStyle-CssClass="hiddencol" />
                    <asp:BoundField HeaderText="Code" DataField="Code" />
                    <asp:BoundField HeaderText="Description" DataField="Description" />
                    <asp:BoundField HeaderText="Months" DataField="Months" />
                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("EntryNo") %>' />
                              <asp:Button id="btnEdit"  ToolTip="Update Record"  
                                CommandName="EditRecord"  runat="server" CssClass="btn btn-default" Text="edit" />
                      
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
                            <label for="Select" class="col-sm-4 control-label">NMS Months</label>
                            <div class="col-sm-4">
                                <asp:DropDownList ID="ddlMonths" runat="server"    CssClass="btn btn-default btn-sm">
                                <asp:ListItem Text="1" Value ="1"/>
                                <asp:ListItem Text="2" Value ="2"/>
                                <asp:ListItem Text="3" Value ="3"/>
                                <asp:ListItem Text="4" Value ="4"/>
                                <asp:ListItem Text="5" Value ="5"/>
                                <asp:ListItem Text="6" Value ="6"/>
                                <asp:ListItem Text="7" Value ="7"/>
                                <asp:ListItem Text="8" Value ="8"/>
                                <asp:ListItem Text="9" Value ="9"/>
                                <asp:ListItem Text="10" Value ="10"/>
                                <asp:ListItem Text="11" Value ="11"/>
                                <asp:ListItem Text="12" Value ="12"/>
                                </asp:DropDownList>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <div class="col-sm-4"></div>
                            <div class="col-sm-4">
                                <asp:Button ID="btnInsert" CssClass="btn btn-primary"  runat="server" class="btn btn-primary" Text=" Save "  ValidationGroup="eidt" OnClick="btnInsert_Click"></asp:Button>
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
    </form>
</body>
</html>
