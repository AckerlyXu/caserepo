<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bootStrapValidationStart.aspx.cs" Inherits="MyWebFormCases.bootStrapValidationStart" %>

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

    <script src="Scripts/jquery-3.3.1.js"></script>


    <script type="text/javascript" src="//cdn.jsdelivr.net/bootstrap/3.2.0/js/bootstrap.min.js"></script>

    <!-- BootstrapValidator JS -->
    <script type="text/javascript" src="//cdn.jsdelivr.net/jquery.bootstrapvalidator/0.5.0/js/bootstrapValidator.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
         <div runat="server" class="form-horizontal" id="reg_form" method="post">
     <div class="register-page login-page">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="login-form">
                        <div class="main-div">
                            <div class="panel">
                                <img id="profile-img"
class="profile-img-card" src="images/linksOnImage.jpg" />
                                <p>Enter username and password</p>
                            </div>
                            <div id="Login">
                                <div class="form-group">
                                 <input class="form-control"
placeholder="Username" type="text" name="txt_username"
id="txt_username"  maxlength="25"  />
                                </div>
                                <div class="form-group">
                                    <input class="form-control"
placeholder="Password" type="password" name="txt_password"
id="txt_password"  maxlength="25"  />
                                </div>
                                <div class="forgot">
                                    <a href="#">Forgot password?</a>

                                </div>
                                
                                <asp:Button ID="Submit" runat="server"
class="btn btn-primary" Text="Login"  />

                                <h5>
                                    <asp:Label ID="lbl_msg"
runat="server" ForeColor="Red" ></asp:Label></h5>


                                  <a href="#" class="botto-text">New
User? Register Here</a>



                                 </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    </div>
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
            txt_username: {
                message: 'The username is not valid',
                validators: {
                    
                    notEmpty: {
                        message: 'The username is required and cannot be empty'
                    }
                }
            },
            //username end

            //email start
           txt_password: {
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
