<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="scrollToExe.aspx.cs" Inherits="MyWebFormCases.javascript.scrollToExe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-3.3.1.js"></script>
</head>
<body>
    <form id="form1" runat="server">
         <div id = "DV" style="overflow-y: scroll; overflow-x: hidden; height: 400px; width: 900px;">
FIRST<br />
This is sample text<br />This is sample text<br />This is sample text<br />This is sample text<br />
This is sample text<br />This is sample text<br />This is sample text<br />This is sample text<br />
This is sample text<br />This is sample text<br />This is sample text<br />This is sample text<br />
This is sample text<br />This is sample text<br />This is sample text<br />This is sample text<br />
This is sample text<br />This is sample text<br />This is sample text<br />This is sample text<br />
This is sample text<br />This is sample text<br />This is sample text<br />This is sample text<br />
This is sample text<br />This is sample text<br />This is sample text<br />This is sample text<br />
This is sample text<br />This is sample text<br />This is sample text<br />This is sample text<br />
This is sample text<br />This is sample text<br />This is sample text<br />This is sample text<br />
This is sample text<br />This is sample text<br />This is sample text<br />This is sample text<br />
This is sample text<br />This is sample text<br />This is sample text<br />This is sample text<br />
This is sample text<br />This is sample text<br />This is sample text<br />This is sample text<br />
This is sample text<br />This is sample text<br />This is sample text<br />This is sample text<br />
This is sample text<br />This is sample text<br />This is sample text<br />This is sample text<br />
LAST
</div>



      <%-- <table id="table">
           <tr><td>fjaieljfalifjlaifjalfji</td></tr>
             <tr><td></td></tr>
             <tr><td></td></tr>
             <tr><td></td></tr>

             <tr><td></td></tr>
       </table>
        <input type="button"  id="btn" value="button"/>
        <div style="border:1px solid red;height:1000px">

        </div>--%>
    </form>
</body>

   <script>
       $(function () {

           //$("#btn").click(function () {
           //    window.scrollTo(0,$("body").outerHeight() - $(window).outerHeight());
         
              

           //})
           //$("#table tr").each(function () {

           //    console.log($(this).index());
           //})

             $(window).keyup(function (e) {
                var keyCode = window.event ? e.keyCode : e.which;
                //End Key
                if (keyCode == 35) {
                    $('#DV').animate({ scrollTop: $(document).height() }, 1200);
                }
                //Home Key
                if (keyCode == 36) {
                    $('#DV').animate({ scrollTop: 0 }, 1200);
                }
            });


       })
   </script>

</html>
