<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="responsivePageProblem.aspx.cs" Inherits="MyWebFormCases.bootstrap.responsivePageProblem" %>

<!DOCTYPE html>

<html> 
    <head>
	   <title>Email Preferences</title>
       
        <link href="Styles/cookiedelivery.css" rel="stylesheet" />
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
       <meta name="viewport" content="width=device-width,initial-scale=0.67" />
        
        <style>
           
            @media screen and (min-width: 0px) and (max-width: 576px) {
              .alignText{text-align:left;}
            }
            @media screen and (min-width: 576px) {
              .alignText{text-align:right;}
            }
            
            .bottomSpace{
                padding-bottom:15px;
            }
        </style>
    </head>
  	    
    <body align="center" style="position: absolute;left: 0px;height: 100%;width: 100%;background-image: url('../Images/background-image.jpeg');background-repeat: no-repeat;background-position-x: center;">

 	   
	   		<div class="container text-center"  style="font-family: Gotham-book;Helvetica; color: #444444; height:auto;padding:20px;background-color:rgba(255,255,255,.96);border:2px solid #2a318a;border-radius:1px; position: absolute;top: 50%;left: 50%;transform: translate(-50%,-50%);-moz-transform: translate(-50%,-50%);-ms-transform: translate(-50%,-50%);
-webkit-transform: translate(-50%,-50%);">
            
			   <img class="clsLogo" alt="Tiff's Treats" border="0" src="../Images/Warning.jpg" width="200" align="center" style="padding: 30px 0px 0px 0px; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%; -ms-interpolation-mode: bicubic;" />
				                
             
                <div >
                    <div class="container text-center">
                        <div class="row ">
                            <div class="col-12 text-center" style="font-size: 30px; color: #444444; font-weight: lighter; text-align: center; font-family: Gotham-bold;Helvetica, Arial, serif; line-height: 30px; vertical-align: middle; padding: 0px 30px 15px 30px">
                                THE STANDARD LOREM IPSUM PASSAGE!
                            </div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="col-12 text-center" style="font-size: 17px; color: #444444; font-weight: lighter; text-align: center; font-family: Gotham-book;Helvetica, Arial, serif; line-height: 17px; vertical-align: middle; padding: 0px 10px 10px 10px">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
                        </div>
                    </div>
                    <form method="post" action="" runat="server" >	
                        <div class="container">
                            <div class="row bottomSpace">
	                            <div class="col-sm-4 formLabel small-label alignText">Address:&nbsp;</div>
                                <div class="col-sm-8" style="text-align:left">                                                        
                                    <asp:Label ID="lblAddress"  runat="server" CssClass="form-control controlWidth">
                                        
                                    </asp:Label>                                
                                </div>
                            </div>
                            <div class="row bottomSpace">
	                            <div class="col-sm-4 formLabel small-label alignText">Building:</div>
                                <div class="col-sm-8" style="text-align:left">                              
                                     <asp:TextBox ID="TextBox1"   runat="server"  CssClass="form-control controlWidth"></asp:TextBox>                               
                                </div>
                            </div>
                            <div class="row bottomSpace">
	                            <div class="col-sm-4 formLabel small-label alignText">Phone:</div>
                                <div class="col-sm-8" style="text-align:left">                              
                                     <asp:TextBox ID="TextBox2"   runat="server"  CssClass="form-control controlWidth"></asp:TextBox>                               
                                </div>
                            </div>
                            <div class="row bottomSpace">
	                            <div class="col-sm-4 formLabel small-label alignText">Cell:</div>
                                <div class="col-sm-8" style="text-align:left">                              
                                     <asp:TextBox ID="TextBox3"   runat="server"  CssClass="form-control controlWidth"></asp:TextBox>                               
                                </div>
                            </div>
                            <div class="row bottomSpace">
	                            <div class="col-sm-4 formLabel small-label alignText">Instructions:</div>
                                <div class="col-sm-8" style="text-align:left; ">                              
                                     <asp:TextBox ID="TextBox4"   runat="server" height="100px" Multiline="true" CssClass="form-control controlWidth"></asp:TextBox>                               
                                </div>
                            </div>
                            <div class="row bottomSpace">
	                            <div class="col-sm-4 formLabel small-label alignText">Date:</div>
                                <div class="col-sm-8" style="text-align:left">                              
                                     <asp:TextBox ID="TextBox5"   runat="server"  CssClass="form-control controlWidth"></asp:TextBox>                               
                                </div>
                            </div>
                            <div class="row bottomSpace">
	                            <div class="col-sm-4 formLabel small-label alignText">Time:</div>
                                <div class="col-sm-8" style="text-align:left">                              
                                     <asp:TextBox ID="TextBox6"   runat="server"  CssClass="form-control controlWidth"></asp:TextBox>                               
                                </div>
                            </div>
                        </div>
                        
                        <div class="container text-center">
                            <table align="center" bgcolor="#ffffff" width="100%" border="0" cellpadding="0" cellspacing="0" role="presentation" style="border: 0px solid #0073bb; padding: 10px 30px 10px 20px; text-align: center;" width="100%">
                                <tbody>
                                    <tr>
                                        <td style="font-size: 15px; color: #444444; font-weight: lighter; text-align: center; font-family: Helvetica, Arial, serif; line-height: 18px; vertical-align: middle">
				  			                <input type="submit" id="btnConfirm"  runat="server" action="submit" value="Confirm Delivery" class="cta btn btn-lg"  style="background-color: #2A318A; color: white; border: #2A318A solid 1px; padding: 10px 40px;" />
                            			    <input type="hidden" name="ri_string" value="$ri_string$" >
                                            <%--<asp:Button ID="btnTest" Text="Test" runat="server" OnClick="btnTest_Click" />--%>
						                </td>
                                    </tr>											
                                </tbody>
                            </table>		 						   
                        </div>
                    </form>						   
                </div>
                <br><br />
            </div>

	</body>
</html>