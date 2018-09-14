<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JqueryToRowJavascript.aspx.cs" Inherits="MyWebFormCases.javascript.JqueryToRowJavascript" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      
        <span class="currency">currency1</span>
         <span class="excludeCurrency">excludeCurrency1</span>
         <span class="excludeCurrency">excludeCurrency2</span>
         <span class="currency">currency2</span>
         <script>
           var cArray= document.getElementsByClassName("currency");
             var eArray = document.getElementsByClassName("excludeCurrency");
         
             Array.prototype.forEach.call(cArray, function (currentValue,index,arr) {

                   currentValue.style.color = "red";
             })
               Array.prototype.forEach.call(eArray, function (currentValue,index,arr) {

                  currentValue.style.color = "green";
             })

             //cArray.forEach(function (currentValue,index,arr) {

             //    currentValue.style.color = "red";
             //})
             // eArray.forEach(function (currentValue,index,arr) {

             //    currentValue.style.color = "green";
             //})
    </script>
    </form>

   
</body>
</html>
