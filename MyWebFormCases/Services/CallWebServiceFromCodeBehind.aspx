<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CallWebServiceFromCodeBehind.aspx.cs" Inherits="MyWebFormCases.Services.CallWebServiceFromCodeBehind" 
   
    %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"  AsyncPostBackTimeout="2">
    </asp:ScriptManager>
        <script type="text/javascript" language="javascript">
    function TheJSTestfunc1()
    {
        console.log(new Date().toDateString())
        PageMethods.TestFunc1(onsuccess, function (a) { console.log(a)});
    }
    
    function onsuccess(value)
    {   
    document.getElementById('divResult').innerHTML+=value+"</br>";
        }

        
            TheJSTestfunc1();
        
    </script>
        <div>

             <input id="Button1" type="button" value="button" onclick="TheJSTestfunc1()" />
        <hr />
       
        The returns :<div id="divResult"></div>
        </div>
    </form>
</body>
</html>
