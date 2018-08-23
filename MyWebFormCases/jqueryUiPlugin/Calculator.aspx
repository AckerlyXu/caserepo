<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="MyWebFormCases.jqueryUiPlugin.Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="calculator/jcalculator.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.3.1.js"></script>
    <script src="calculator/jcalculator.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <input type="text" name="name" value="" id="cal" />


    </form>
</body>
   <script>
       $(function () {
           //https://github.com/balajmarius/jcalculator
           //bind focus event to the input
           $("#cal").focus(
               //generate the calculator
               function () {
                   $("#cal").calculator(
                    {
                   theme: "dark",
                   onResult: function (result) {
                       alert(result);
                            }

                    }

                   )

                   //after user leave the calculator close the calculator
                   $(".jcalculator").mouseleave(
                       function () {
                           $(this).remove();
                       }
                   )

               }
           )
         
       })


   </script>
</html>
