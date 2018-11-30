<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="MyWebFormCases.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  

    <script src="Scripts/jquery-3.3.1.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
     <asp:UpdatePanel ID="UpdatePanel1" runat="server">

            <ContentTemplate>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <input type="button"  value="abc" id="in"/>
                      <asp:Button ID="Button1" runat="server" Text="Button" />
            </ContentTemplate>
        </asp:UpdatePanel>
  
	
    </form>

   <script>
        function myFunction() {

             $("#ctl00_ContentPlaceHolder1_TxtRate,#ctl00_ContentPlaceHolder1_TxtSale_Qty").blur(function () {
                var rate = parseFloat($("#ctl00_ContentPlaceHolder1_TxtRate").val());
                var qty = parseFloat($("#ctl00_ContentPlaceHolder1_TxtSale_Qty").val());
                if (!isNaN(rate * qty)) {      
                    $("#ctl00_ContentPlaceHolder1_TxtAmount").text(rate * qty);
                }
               
            })
            $("#ctl00_ContentPlaceHolder1_TxtDiscount").blur(function () {

                $("#ctl00_ContentPlaceHolder1_Label15").text(parseFloat($("#ctl00_ContentPlaceHolder1_TxtAmount").text()) * parseFloat($("#ctl00_ContentPlaceHolder1_TxtDiscount").val()) / 100);
                    
                    $("#ctl00_ContentPlaceHolder1_TextBox2").val(parseFloat($("#ctl00_ContentPlaceHolder1_TxtAmount").text()) - parseFloat($("#ctl00_ContentPlaceHolder1_Label15").text()));
                    
                    var Tax = parseFloat($("#ctl00_ContentPlaceHolder1_TextBox2").val())
                     if (Tax < 1000) {
                    $("#ctl00_ContentPlaceHolder1_TextBox5").val(parseFloat($("#ctl00_ContentPlaceHolder1_TextBox2").val()) * 5 / 100);           
                    }
                    else if (Tax > 1000) {
                     $("#ctl00_ContentPlaceHolder1_TextBox5").val(parseFloat($("#ctl00_ContentPlaceHolder1_TextBox2").val()) * 18 / 100);           
                    }
                    else{
                     $("#ctl00_ContentPlaceHolder1_TextBox5").val(parseFloat($("#ctl00_ContentPlaceHolder1_TextBox2").val()) * 18 / 100);        
                    }
                    
                    
                    var a1 = parseFloat($("#ctl00_ContentPlaceHolder1_TextBox5").val());
                    var b1 = parseFloat($("#ctl00_ContentPlaceHolder1_TextBox2").val());
                    var c1 = parseFloat($("#ctl00_ContentPlaceHolder1_TxtRO").val());
 
                   $("#ctl00_ContentPlaceHolder1_TxtNet_Pay").text(a1 + b1);
                   
//                   if (c1 < 0) {
//                    $("#ctl00_ContentPlaceHolder1_Txt_Fin_Value").val(parseFloat($("#ctl00_ContentPlaceHolder1_TextBox2").val());
//                   }
                   
               $("#ctl00_ContentPlaceHolder1_TxtRO").blur(function () {
                    var k1 = parseFloat($("#ctl00_ContentPlaceHolder1_TxtNet_Pay").text());
                    var k2 = parseFloat($("#ctl00_ContentPlaceHolder1_TxtRO").val());
               
               
                $("#ctl00_ContentPlaceHolder1_Txt_Fin_Value").val(k1 - k2);

})

            })

        }


        $(
            function () {
               myFunction();
               var prm = Sys.WebForms.PageRequestManager.getInstance();

            prm.add_endRequest(function (e) {
              myFunction();
            });

            }
          
        )

    </script>




    <script>
        function bindEventTest() {
            $("#in").click(function () {
                $("#Label1").css("background-color", "red");
            })
        }
        $(function () {

            bindEventTest();
            var prm = Sys.WebForms.PageRequestManager.getInstance();

            prm.add_endRequest(function (e) {
              bindEventTest();
            });
        })

        

    </script>

</body>
</html>
