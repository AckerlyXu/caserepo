<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JqueryValidate.aspx.cs" Inherits="MyWebFormCases.javascript.JqueryValidate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>

        .error{
            color:red
        }
    </style>
    <script src="../Scripts/jquery-3.3.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">

     <asp:Label ID="Label1" runat="server" Text="firstName:" ></asp:Label>   <asp:TextBox ID="firstName" runat="server"></asp:TextBox>
       <div> <label  class="error" for='<%=firstName.UniqueID %>'></label></div>
       <asp:Label ID="Label2" runat="server" Text="lastName:" ></asp:Label>&nbsp;   <asp:TextBox ID="lastName" runat="server"></asp:TextBox>
        <div> <label  class="error" for='<%=lastName.UniqueID %>'></label></div>
          <asp:Label ID="Label3" runat="server" Text="userName:" ></asp:Label>  <asp:TextBox ID="userName" runat="server"></asp:TextBox>
        <div> <label  class="error" for='<%=userName.UniqueID %>'></label></div>
         <asp:Label ID="Label4" runat="server" Text="password:" ></asp:Label>&nbsp;  <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
        <div> <label  class="error" for='<%=password.UniqueID %>'></label></div>
        <asp:Button ID="Button1" runat="server" Text="submit" />
    </form>


   <script>
       $(function () {

$('#form1').validate(

           {
    rules: {
     <%=firstName.UniqueID%> : "required",
       <%=lastName.UniqueID%>: "required",
       <%=firstName.UniqueID%>: {
        required: true
        
      },
       <%=userName.UniqueID%>: {
        required: true,
        minlength: 3
      },
      <%=password.UniqueID%>: {
        required: true,
        minlength: 6
      }
    },
    messages: {
       <%=firstName.UniqueID%>: "please enter your firstname",
    <%=lastName.UniqueID%>: "please enter your lastname",
       <%=userName.UniqueID%>: {
        required: "username is required",
        minlength: "username should have more than two characters"
      },
   <%=password.UniqueID%>: {
        required: "plaese enter password",
        minlength: "password should have more than 5 characthers"
      }
     }
           }
       )
















       })

       

   </script>
</body>
</html>
