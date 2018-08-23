<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JSValidate.aspx.cs" Inherits="MyWebFormCases.javascript.JSValidate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>

/* */
        [data-valmsg-replace=true]{
            color:red
        }
    </style>
    <script src="../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../Scripts/jquery.validate.js"></script>

<script src="../Scripts/jquery.validate.unobtrusive.js"></script>
    </head>
<body>
    <form id="form1" runat="server">
       
        <input id="txt_fullName" runat="server" class="md-input" name="txt_fullName" required title="تاكد من ادخال اسم الشركة- عربي" type="text" data-parsely-required="true" />


              <asp:Label ID="Label1" runat="server" Text="required"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" data-val="true" data-val-required="the text couldn't be empty"></asp:TextBox>
        <span data-valmsg-for="TextBox1" data-valmsg-replace="true"></span><br />



        <asp:Label ID="Label2" runat="server" Text="email"></asp:Label>&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="TextBox2" runat="server" data-val="true" data-val-email="the format of your email is not right"></asp:TextBox>
        <span data-valmsg-for="TextBox2" data-valmsg-replace="true"></span><br />
   

        <asp:Label ID="Label3" runat="server" Text="date"></asp:Label>&nbsp;&nbsp; &nbsp; &nbsp;
        <asp:TextBox ID="TextBox3" runat="server"  data-val="true" data-val-date="the format of your date is not right"></asp:TextBox>
          <span data-valmsg-for="TextBox3" data-valmsg-replace="true"></span><br />
       

            <asp:Label ID="Label4" runat="server" Text="digit"></asp:Label>&nbsp;&nbsp; &nbsp; &nbsp;
        <asp:TextBox ID="TextBox4" runat="server"  data-val="true" data-val-digits="the format of your date is not right"></asp:TextBox>
         <span data-valmsg-for="TextBox4" data-valmsg-replace="true" ></span><br />

         <asp:Label ID="Label5" runat="server" Text="number"></asp:Label>&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" data-val="true" data-val-number="the format of your date is not right"></asp:TextBox>
            <span data-valmsg-for="TextBox5" data-valmsg-replace="true" ></span><br />


        <asp:Label ID="Label6" runat="server" Text="equalTo"></asp:Label>&nbsp;
        <asp:TextBox ID="TextBox6" runat="server" data-val="true" data-val-equalto="your content doesn't equal to the number" data-val-equalto-other="TextBox5"></asp:TextBox>
         <span data-valmsg-for="TextBox6" data-valmsg-replace="true" ></span><br />


        <asp:Label ID="Label7" runat="server" Text="range"></asp:Label>&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="TextBox7" runat="server" data-val="true" data-val-length-max="100" data-val-length-min="6" data-val-length="the length of your content must bigger than 5" ></asp:TextBox>
        <span data-valmsg-for="TextBox7" data-valmsg-replace="true"></span><br />



        <asp:Label ID="Label8" runat="server" Text="Label">myOwn</asp:Label> 
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <span id="myOwnShow"  style="display:none">you couldn't enter false</span><br />
       <button type="submit" id="btn_add" class="md-btn md-btn-primary" runat="server" onserverclick="btn_add_ServerClick">btn</button>
        



        <asp:Button ID="Button1" runat="server" Text="Button" />
    </form>

</body>
    <script>
        $(function () {

            $("#Button1").click(function () {

                if ($("#TextBox8").val() == "false") {
                    $("#myOwnShow").show();
                    return false;
                }

            })

        })
     
    </script>
</html>
