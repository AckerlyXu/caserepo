<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LazyLoad.aspx.cs" Inherits="MyWebFormCases.javascript.LazyLoad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script src="../Scripts/jquery-3.3.1.js"></script>
   <%-- <script src="start.js"></script>--%>
       <script src="http://ajax.microsoft.com/ajax/beta/0911/Start.js"></script>

    <script>
//         Sys.loader.defineScripts(null,  
//[  
//    {  
//        name: "MyLibrary",  
//        releaseUrl: "/Scripts/test.js",  
//      debugUrl: "/Scripts/test.debug.js",  
//      executionDependencies: ["jQuery"],  
//        isLoaded: !!window.Alert
//    }
//]);  
           

                          
       

    </script>
  <%--  <script>
        Sys.require(Sys.scripts.MyLibrary);
      
    </script>--%>
   

</head>
<body>
  <form id="form1" runat="server">
       <a href="#">Click Me</a>
    </form>
     <script type="text/javascript">

         Sys.loader.defineScript({
                                name: "MyLibrary",
                               releaseUrl: "/Scripts/test.js", 
                               
                                dependencies:
                                  ["jQuery"],
                                isLoaded: !!(window.Alert)
                            });
                                Sys.require(Sys.scripts.MyLibrary);  
            $(document).ready(
            function () {
                $("a").click(
                    function () {
                        try {
                           
                            Alert();

                        } catch (e) {
                            alert(e);
                        }
                    });
            });

     
       
    </script>
</body>
</html>
