<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loopForATable.aspx.cs" Inherits="WebFormCases.use_loop_code_in_a_page.loopForATable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
            <%foreach (var item in computers)
                {%>

                   <tr>
        <td height="10" align="left" style="width: 25%"><span style="font-size: 8pt">
  <strong><% Response.Write(item.ComputerName); %></strong></span></td>
        <td height="10" align="right" style="width: 25%"><span style="font-size: 8pt">
  <strong><% Response.Write(item.LastRunTime.ToString()); %></strong></span></td>
        <td height="10" align="right" style="width: 25%"><span style="font-size: 8pt">
  <strong><% Response.Write(item.LastTaskResult); %></strong></span></td>
        <%--<td height="10" align="center" style="width: 25%"><span style="font-size: 8pt">
  <strong><% Response.Write(item.ComputerName); %></strong></span></td>
  --%>
      </tr>
                
                   
               <% } %>

         
</table>
        </div>
    </form>
</body>
</html>
