<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CountWithReader.aspx.vb" Inherits="VBWebForm.CountWithReader" %>

<!DOCTYPE html>
<%@ Import Namespace="System.Data.SqlClient" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <script language="VB" runat="server" >

        Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
            Dim sqlConnection As New SqlConnection("Data Source=.;Initial Catalog=WebFormCases.Models.supplyModel;Integrated Security=True")

            Dim Cnt As Int32

            Dim querystring As String = "SELECT COUNT(*) FROM [suppliers]"

            sqlConnection.Open()
            Dim command1 As New SqlCommand(querystring, sqlConnection)
            Dim reader1 As SqlDataReader = command1.ExecuteReader()
            While reader1.Read()
                Cnt = reader1(0)
            End While
            Label1.Text = Cnt.ToString()
            sqlConnection.Close()


        End Sub

    </script>
  
</head>

<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
