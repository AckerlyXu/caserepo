<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="LoopThroghVBArr.aspx.vb" Inherits="VBWebForm.LoopThroghVBArr" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script runat="server">
        Dim ComputerName(4) As String
        Dim LastRunTime(4) As DateTime
        Dim LastTaskResult(4) As String

        Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load


            ComputerName(0) = "ComputerName1"
            ComputerName(1) = "ComputerName2"
            ComputerName(2) = "ComputerName3"
            ComputerName(3) = "ComputerName4"
            ComputerName(4) = "ComputerName5"


            LastRunTime(0) = DateTime.Now.AddDays(-5)


            LastRunTime(1) = DateTime.Now.AddDays(-4)
            LastRunTime(2) = DateTime.Now.AddDays(-3)
            LastRunTime(3) = DateTime.Now.AddDays(-2)
            LastRunTime(4) = DateTime.Now.AddDays(-1)


            LastTaskResult(0) = "LastTaskResult1"
            LastTaskResult(1) = "LastTaskResult2"
            LastTaskResult(2) = "LastTaskResult3"
            LastTaskResult(3) = "LastTaskResult4"
            LastTaskResult(4) = "LastTaskResult5"


        End Sub

    </script>
</head>
<body>
    <form id="form1" runat="server">
  

            <table>
                <%For index = 0 To ComputerName.Length - 1
%>
            <%-- end for loop and start to output html mark up --%>
               
                       <tr>
        <td height = "10" align="left" style="width: 25%"><span style="font-size: 8pt">
  <strong><%    Response.Write(ComputerName(index)) %></strong></span></td>
        <td height="10" align="right" style="width: 25%"><span style="font-size: 8pt">
  <strong><% Response.Write(LastRunTime(index)) %></strong></span></td>
        <td height="10" align="right" style="width: 25%"><span style="font-size: 8pt">

  <strong><% response.Write(LastTaskResult(index))  %></strong></span></td>
  
      </tr>
              
<%--  end  html mark and countinue you loop --%>

                  <%  Next %>
                </table>
     



      
    </form>
</body>
</html>
