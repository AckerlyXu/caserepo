<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModalClosedPostBack.aspx.cs" Inherits="MyWebFormCases.bootstrap.ModalClosedPostBack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1"   EnablePageMethods="true"   EnablePartialRendering="true" runat="server" />
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#brandmodel">
  Launch brandmodel
</button>

<div class="modal fade" id="brandmodel" tabindex="-1" role="dialog" aria-labelledby="brandmodelLabel" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog modal-md" role="document">
        <asp:UpdatePanel runat="server">
                        <ContentTemplate>
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="brandmodelLabel">Select Brand</h5>             
            </div>
            <div class="modal-body">
               <div class="modal-body">     
                    
            <asp:DropDownList ID = "ddlbrands" runat="server" autopostback="true"  OnSelectedIndexChanged="ddlbrands_SelectedIndexChanged">
               
                <asp:ListItem Value="first">first</asp:ListItem>
               
                 <asp:ListItem Value="second">second</asp:ListItem>
                 <asp:ListItem Value="third">third</asp:ListItem>
           </asp:DropDownList>  
                          
           <asp:Label ID="labelMessage" runat="server" ></asp:Label>          
        </div>
            </div>
            <div class="modal-footer">              
                <asp:button id="btnSearchBr" runat="server" type="button" class="btn btn-primary" Text="Confirm"  OnClick="btnSearchBr_Click" UseSubmitBehavior="false" data-dismiss="modal" ></asp:button>
            </div>
        </div>
        
    </div>
                              </ContentTemplate>
                        </asp:UpdatePanel>
</div>

         <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
    </form>
</body>
</html>
