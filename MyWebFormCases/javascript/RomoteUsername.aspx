<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RomoteUsername.aspx.cs" Inherits="MyWebFormCases.javascript.RomoteUsername" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-3.3.1.js"></script>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server" class="form-inline">
        <div>

           
         <div class="form-group">
        <label class="col-3">Username</label>
             <asp:TextBox ID="username" runat="server" CssClass="form-control col-6" ></asp:TextBox>
     
    </div>

    <div class="form-group">
        <label class="col-3">Email address</label>
        <asp:TextBox ID="email" runat="server"  CssClass="form-control col-6"></asp:TextBox>

    </div>
        
         <asp:Button runat="server" Text="submit" CssClass="btn btn-primary"/>
        </div>


     <script>
         $("#<%=username.ClientID%>").blur(function () {
           
              $.ajax({
            
                    url: '/Services/myWebService.asmx/getUsername',
                    type: "post",
                    dataType: "json",
                  contentType: "application/json; charset=utf-8",
                  data: '{ "username":"'+$(this).val()+'" }',
                  success: function (data) {
                      console.log(data);
                          if (data.d == "No") {
                     alert("do you want to add a user who has exsited");
                 }
                    }
                });
       
             //$.post("/services/mywebservice.asmx/getUsername", { username: $(this).val() }, function (data) {
             //    console.log(data);
             //    if (data.d == "no") {
             //        alert("do you want to add a user who has exsited");
             //    }

             //}, "json")

         })
     </script>
    </form>
</body>
</html>
