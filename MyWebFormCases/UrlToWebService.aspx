<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UrlToWebService.aspx.cs" Inherits="MyWebFormCases.UrlToWebService" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-3.3.1.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text=''></asp:Label>
       <%=ResolveClientUrl("/Services/myWebService.asmx/getData") %>
        </div>
      
      
      
    </form>
</body>
    <script>
     
        //$.post(
        //    "http://localhost:57504/Services/myWebService.asmx/getData",
        //    {value:"item1"},
        //    function (data) {
        //        $("#Label1").html('date from web service: '+data);
        //    },
            
        //    "text"  //change  "text"  to "json" if your data is in json format

        //)
        //$.ajax(
        //    {
        //        url: "/Services/ArrayData.asmx/GetData",
        //        contentType: "application/json; charset=utf-8",
        //        type:"post",
        //        //dataType: "json",
        //        success: function (d,a,c) {
        //            console.log(d, a, c)
        //            console.log(d.name);
        //        },
        //        error: function (d,a,c) {
        //            console.log(d,a,c)
        //        }
        //    }

        //)
         $.ajax(
            {
                url: "/Data.ashx",
             
                type:"post",
                dataType: "xml",
                 success: function (d, a, c) {
                     console.log(typeof d);
                     console.log(d, a, c);
                    console.log(d.name);
                },
                error: function (d,a,c) {
                    console.log(d,a,c)
                }
            }

        )

    </script>
</html>
