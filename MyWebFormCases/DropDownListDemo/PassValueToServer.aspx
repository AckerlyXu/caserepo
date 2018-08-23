<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PassValueToServer.aspx.cs" Inherits="MyWebFormCases.DropDownListDemo.PassValueToServer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-group">
            <label for="ddlUploader" class=" control-label">Select </label>
         <asp:DropDownList ID="ddlUploader" runat="server"  CssClass="btn btn-default btn-sm" >
                <asp:ListItem>item1</asp:ListItem>
                <asp:ListItem>item2</asp:ListItem>
            </asp:DropDownList>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
          </div>
        <select size="3"  multiple="multiple" >

            <option>1</option>
             <option>2</option>
             <option>3</option>
               <option>4</option>
        </select>
        
    </form>
</body>


<script src="../Scripts/jquery-3.3.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>

    <script>

        $(function () {
            function afterSuccess(data) {
                $("#Label1").html(data);
            
            }
              $("#ddlUploader").change(function () {
              $.ajax({

                      type: "POST",
                      url: "http://localhost:57504/Services/myWebService.asmx/getData",
                      data:{ value: $("#ddlUploader").val() },
                      success: afterSuccess,
                      dataType:"text"

                  })

            })

           
        }
        )
      
    </script>
</html>
