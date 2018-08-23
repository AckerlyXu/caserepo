<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bootStrapModalGridView.aspx.cs" Inherits="WebFormCases.bootstrap.bootStrapModalGridView"  EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous" />

    <title>bootstrap modal gridview</title>
</head>
<body>
    <form id="form1" runat="server" >

            <asp:ScriptManager runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            
            <ContentTemplate>


            
        <asp:GridView ID="GridView1" runat="server"  OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="false"
            CssClass="table table-borderless table-responsive-md" BorderStyle="None" >
            <Columns>

                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>

                         <%# Eval("Name") %>

                    </ItemTemplate>
                   
                    <EditItemTemplate>

                        <asp:TextBox ID="txtServiceName" runat="server" Text='<%#Eval("Name") %>' MaxLength="500" CssClass="form-control" TextMode="SingleLine"></asp:TextBox>

                    </EditItemTemplate>

                    


                </asp:TemplateField>


                <asp:TemplateField>
                    <ItemTemplate>

                         <%# Eval("City") %>

                    </ItemTemplate>
                   
                    <EditItemTemplate>

                        <asp:TextBox ID="txtServiceName" runat="server" Text='<%#Eval("City") %>' MaxLength="500" CssClass="form-control" TextMode="SingleLine"></asp:TextBox>

                    </EditItemTemplate>


                </asp:TemplateField>

                <asp:TemplateField ShowHeader="false">

                    <ItemTemplate>
                        <asp:Button runat="server" Text="Edit" CommandName="EditTreatment" CommandArgument='<%#Eval("SID") %>' ID="LinkButton1" 
               ></asp:Button>

                    </ItemTemplate>

                </asp:TemplateField>

              
            </Columns>

            


        </asp:GridView>
</ContentTemplate>
        </asp:UpdatePanel> 

  
          
        <div class="modal text-white bg-dark" id="myTreatmentModal">
<div class="modal-dialog modal-lg">
<div class="modal-content">

<!-- Modal Header -->
<div class="modal-header">
<h4 class="modal-title">Add a new treatment</h4> 
</div>

<!-- Modal body -->
<div class="modal-body">
<div class="container-fluid">

<div class="row">



      
    

<div class="col">
  



            <asp:Label ID="lblNewTreatmentName" runat="server" AssociatedControlID="txtNewTreatmentName" Text="Treatment name"></asp:Label>
<asp:RequiredFieldValidator ID="rqNewTreatmentName" runat="server" ErrorMessage="*" ForeColor="Red" ValidationGroup="vldNewTreatment" ControlToValidate="txtNewTreatmentName" Display="Dynamic"></asp:RequiredFieldValidator>
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">

        <ContentTemplate>
<asp:TextBox ID="txtNewTreatmentName" runat="server" CssClass="form-control" TextMode="SingleLine" ValidationGroup="vldNewTreatment"></asp:TextBox>
            
         </ContentTemplate>
          </asp:UpdatePanel>
<br />

              
</div>
</div></div>
</div>

<!-- Modal footer -->
<div class="modal-footer"> 
<div class="container-fluid">
<div class="row">
    
<div class="col">
      <asp:UpdatePanel ID="UpdatePanel3" runat="server">

        <ContentTemplate>
<asp:Button ID="btnAddServ" runat="server" CssClass="btn-outline-light mx-auto"  ValidationGroup="vldNewTreatment" Text="" />


         
  
<asp:Button ID="btnCancelProdSize" runat="server" Text="Cancel" data-dismiss="modal" CssClass="btn-outline-light mx-auto" />
     </ContentTemplate>
          </asp:UpdatePanel>
    </div> 



    </div>
    </div>
</div> 
          
</div>
             
   </div>
    </div>
           </div>
           

       
</form>
</body>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>

</html>






