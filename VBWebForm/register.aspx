<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="register.aspx.vb" Inherits="VBWebForm.Register" %>


<!doctype html>  
<html lang="en">
<head runat="server">

<title>register</title>
<meta name="description" content="website description" />
<meta name="keywords" content="website keywords, website keywords" />
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />

<link href="css/js-image-slider.css" rel="stylesheet" type="text/css" />
<link href="css/generic.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script src="js/js-image-slider.js" type="text/javascript"></script>

       <style>

      .noMatch {
                 
          color: #0ac2ff;
          font-family: Candara;
          text-align: center;
          border: 1px solid #FFFF00;
          -webkit-border-radius: 1em;
          border-radius: 1em;
          padding: 1.5em;
          margin: 4em 10em 0 3em; /* adjust to push away from "Send"*/   
          display: block;
          width: 100%;
      }

        </style>

    </head>

  <body>

    <!-- date -->

    <asp:Label ID="LblDate" runat="server" CssClass="labelStyle" Text="Label"></asp:Label>

    <!-- end date -->

 <div id="main">
    <header>
    <div id="logo">
        <div id="logo_text">
              <p style="float: left;"><img src="images/dimaHeader1.jpg" alt="Header" /></p>

           <h2 class="specialh2"><a href="register.aspx">Register</a> | <a href="logon.aspx">Log-in</a></h2>
        
        </div>
      <!-- <p style="float: right; padding-top: 75px;"><img src="images/twitter32.png" alt="twitter" />&nbsp;<img src="images/facebook32.png" alt="facebook" />&nbsp;<img src="images/Google32.png" alt="google" /></p> -->
      </div>
      <nav>
        <ul class="sf-menu" id="nav">
          <li class="selected"><a href="index.aspx">Home</a></li>
          <li><a href="portfolio.aspx">Portfolio</a></li>
          <li><a href="twitter.aspx">Twitter</a></li>
          <li><a href="contact.aspx">Contact</a></li>
        </ul>
      </nav>
    </header>
    <div id="site_content">
      <div id="sidebar_container">
        <div class="gallery">            
         <div id="sliderFrame">
          <div id="slider">

            <img src="/Images/image-slider-1.jpg" width="450" height="450" alt="" />    
            <img src="/Images/image-slider-2.jpg" width="450" height="450" alt="" />
            <img src="/Images/image-slider-3.jpg" width="450" height="450" alt="" />
            <img src="/Images/image-slider-4.jpg" width="450" height="450" alt="" />
            <img src="/Images/image-slider-5.jpg" width="450" height="450" alt="" />
            <img src="/Images/image-slider-6.jpg" width="450" height="450" alt="" />      
            <img src="/Images/image-slider-7.jpg" width="450" height="450" alt="" />
            <img src="/Images/image-slider-8.jpg" width="450" height="450" alt="" />
            <img src="/Images/image-slider-9.jpg" width="450" height="450" alt="" />
            <img src="/Images/image-slider-10.jpg" width="450" height="450" alt="" />

    </div>
       </div>
          </div>          
             </div>      
     
         <div id="content">    
                          
          <!-- <h1>Register</h1> -->

            <h1><img src="images/register.jpg" width="166" height="82" alt="Contact" /></h1>

                <form id="register" runat="server">
                      
                    <div class="form_settings">                                  

                       <p style="color: #a6e6f4; font-family:'Segoe UI'; font-size:1.1em; text-align:center">Create a new account</p>

                        <p><asp:Label ID="Reg_username" runat="server" Text="Username"></asp:Label>
                        <asp:TextBox ID="username" runat="server"></asp:TextBox></p>
                        <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator1" runat="server" controlToValidate="username" validationgroup="PersonalInfoGroup" ForeColor="#FF6666" ErrorMessage="Please complete the Username field"></asp:RequiredFieldValidator>

                        <p><asp:Label ID="Reg_password" runat="server" Text="Password"></asp:Label>
                        <asp:TextBox id="password" cols="50" rows="5" runat="server" TextMode="Password"></asp:TextBox></p>
                        <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator2" runat="server" controlToValidate="password" validationgroup="PersonalInfoGroup" ForeColor="#FF6666" ErrorMessage="Please complete the Password field"></asp:RequiredFieldValidator>

                        <p><asp:Label ID="Reg_ConfirmPassword" runat="server" Text="Confirm Password"></asp:Label>
                        <asp:TextBox id="ConfirmPassword" cols="50" rows="5" runat="server" TextMode="Password"></asp:TextBox></p>
                        <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator3" runat="server" controlToValidate="ConfirmPassword" validationgroup="PersonalInfoGroup" ForeColor="#FF6666" ErrorMessage="Please confirm your password"></asp:RequiredFieldValidator>
                        <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The passwords do not match" CssClass="noMatch" />
                        
                        <p><asp:Label ID="Reg_strEmail" runat="server" Text="Email"></asp:Label>
                        <asp:TextBox ID="strEmail" runat="server"></asp:TextBox></p><br />
                        <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator4" runat="server" controlToValidate="strEmail" validationgroup="PersonalInfoGroup" ForeColor="#FF6666" ErrorMessage="Please complete the Email field"></asp:RequiredFieldValidator>

                      

                      </div>
                </form>
                     </div>
        </div>
    <footer>
            <p><a href="index.aspx">home</a> | <a href="portfolio.aspx">portfolio</a> | <a href="twitter.aspx">twitter</a> | <a href="contact.aspx">contact</a></p>
            <p>&copy; 2015 Dima Dayoub | All Rights Reserved</p>
        </footer>
  </div>

  <p>&nbsp;</p>

   </body>
</html>



