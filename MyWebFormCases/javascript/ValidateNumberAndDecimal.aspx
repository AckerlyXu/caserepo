<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidateNumberAndDecimal.aspx.cs" Inherits="MyWebFormCases.javascript.ValidateNumberAndDecimal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        .error{
            color:red
        }
    </style>
    <script src="../Scripts/jquery-3.3.1.js"></script>
    <script src="../Scripts/jquery.validate.js"></script>
</head>
<body>
    <form id="EditWeight" runat="server">

        <div id="edit">


        </div>
      
        <input type="submit"  value="submit"  />

        <input type="button" value="addTextboxes" id="btn" />
        <script>


            $.validator.addMethod("regex", function (value, element, regexpr) {
               
                var regex = new RegExp(regexpr);
                console.log(regex);
                console.log(regex.test(value));
    return regex.test(value);
}, " enter valid Integer or Decimal number.");
           
            $("#EditWeight").validate({});

            $('#btn').on('click', function () {
                     var textboxes = "";
                   for (var i = 0; i < 4; i++) {

                       textboxes+= '<input type="text" name="Edit' + (i + 1) + 'Weight" value="" /><br />';
                }
                $("#edit").html(textboxes);
                 //adding rules for inputs with names ending with Weight
                   $("input[name$='Weight']").each(function () {
             
                    $(this).rules("add",
                        {
                            regex: "^[1-9]\\d{0,9}(\\.\\d{1,3})?%?$",
                            messages: {
                                regex: "<br />Please enter valid Integer or Decimal number."
                            }
                        });
                   });
                   
                if ($('#EditWeight').validate().form()) {
                    console.log("validates");
                } else {
                    console.log("does not validate");
                   }

            });
    </script>
    </form>
</body>


    
</html>
