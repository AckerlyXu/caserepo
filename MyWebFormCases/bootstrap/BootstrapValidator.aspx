<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BootstrapValidator.aspx.cs" Inherits="MyWebFormCases.bootstrap.BootstrapValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 
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
    <form id="form1" runat="server" class="form-inline">


         <div class="form-group">
        <label class="col-3">Username</label>
             <asp:TextBox ID="username" runat="server" CssClass="form-control col-6" ></asp:TextBox>
     
    </div>

    <div class="form-group">
        <label class="col-3">Email address</label>
        <asp:TextBox ID="email" runat="server"  CssClass="form-control col-6"></asp:TextBox>

    </div>
        
        
         <asp:Button runat="server" Text="submit" CssClass="btn btn-primary"/>




         <script>

        $(document).ready(function() {
    $('#<%=form1.ClientID%>').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            //username start
            username: {
                message: 'The username is not valid',
                validators: {
                    
                    notEmpty: {
                        message: 'The username is required and cannot be empty'
                    },
                    stringLength: {
                        min: 6,
                        max: 30,
                        message: 'The username must be more than 6 and less than 30 characters long'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9_]+$/,
                        message: 'The username can only consist of alphabetical, number and underscore'
                    }
                }
            },
            //username end

            //email start
            email: {
                validators: {
                    notEmpty: {
                        message: 'The email is required and cannot be empty'
                    },
                    emailAddress: {
                        message: 'The input is not a valid email address'
                    }
                }
            }
            //email end
        }
    });
});

    </script>
    </form>
   
</body>
    


   
</html>
