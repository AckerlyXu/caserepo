<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MakeTableFullOfScreen.aspx.cs" Inherits="MyWebFormCases.bootstrap.MakeTableFullOfScreen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous" />
</head>
<body>
    <form id="form1" runat="server">
     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel runat="server" ID="updatePanel">
    <ContentTemplate>
        <div class="row">
        
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_title">
                <h3>Maintain Categories </h3>
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" onclick="clearTextBox();">Add New</button><br /><br />
            </div>
            <div>
                <table id="stdform1tbl">
                            <tr>
                                <td>
                                    <label class="control-label" for="Deescription"><b>Description</b><span class="reqField">*</span></label>
                                    <asp:TextBox runat="server" ValidationGroup="client" ID="txtDescription" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="Please enter name." ValidationGroup="client" Display="None" ControlToValidate="txtDescription" runat="server" />
                                </td>
                        </table>
                        <p class="stdformbutton" style="margin-left: 140px">
                            <asp:Button OnClick="btnSave_Click" CssClass="btn btn-primary" OnClientClick="applyCSS()" Text="Register" ValidationGroup="client" ID="btnSave" runat="server" />

                        </p>
            </div>
            <asp:HiddenField ID="hfSelectedRecord" runat="server" />
                <table class="table table-striped">
                    <tr>
                        <td><b>Sno</b></td>
                        <td><b>Code</b></td>
                        <td><b>Name</b></td>
                        <td><b>Actions</b></td>
                    </tr>


                                            <asp:ListView ID="lvwCategories"  runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%#Container.DataItemIndex+1 %></td>
                                <td><%#Eval("Name") %></td>
                                <td><%#Eval("City") %></td>
                                <td>
                                    <asp:ImageButton ID="imgBtnEdit" CommandName="Edt" ToolTip="Edit a record." CommandArgument='<%#Eval("Name") %>'
                                        runat="server" ImageUrl="~/images/icons/edit_add.png" />
                                    <asp:ImageButton ToolTip="Delete a record." ID="imgBtnDelete" OnClientClick="return confirmDelete()"
                                        CommandName="Del" CommandArgument='<%#Eval("Name") %>' runat="server"
                                        ImageUrl="~/images/icons/cancel.png" />
                                    
                                </td>
                            </tr>

                        </ItemTemplate>
                    </asp:ListView>
                  
                </table>
   
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="H1">Add Store Category</h4>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="form-group">
                                <label for="Name">Description</label>
                                <input type="text" class="form-control" id="Text2" placeholder="Description"/>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" id="Button1" onclick="btnInsert_Click;">Save</button>

                    </div>
                </div>
            </div>       
        </div>
    </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btnSave" />


        </Triggers>
    </asp:UpdatePanel>


    </form>
     <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
</body>
</html>
