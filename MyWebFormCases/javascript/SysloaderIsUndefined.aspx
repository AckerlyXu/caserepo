<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SysloaderIsUndefined.aspx.cs" Inherits="MyWebFormCases.javascript.SysloaderIsUndefined" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-3.3.1.js"></script>
       <script src="http://ajax.microsoft.com/ajax/beta/0910/Start.js" ></script>
</head>

<body>

    <form id="form1" runat="server">
               <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        
      <a href="#">click</a>
 <script type="text/javascript">
     console.log(Sys.loader)
        function execute() {
            alert("hi");
        }
        $(document).ready(
            function () {                
                $("a").click(
                    function () {
                        if (window.Sys && Sys.loader) {
                            Sys.loader.registerScript("MyScript", null, execute);
                            alert("Lazy loading");
                        }
                        else {
                            execute();
                        }
                    });
            });
    </script>

       
    </form>

   
</body>
</html>
