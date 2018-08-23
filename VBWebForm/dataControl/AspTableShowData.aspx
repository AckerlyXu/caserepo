<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AspTableShowData.aspx.vb" Inherits="VBWebForm.AspTableShowData" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

    <script language="VB" runat="server" >

        Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
            Dim dv As DataView = DirectCast(SqlDataSource1.Select(DataSourceSelectArguments.Empty), DataView)
            'create the first row
            Dim firstRow As New TableRow()
            'the first cell
            Dim firstCell As New TableCell()
            firstCell.Text = "Date"
            firstRow.Cells.Add(firstCell)
            'the other cell
            For index = 1 To 48
                Dim cell As New TableCell()
                cell.Text = index
                firstRow.Cells.Add(cell)
            Next
            tblSchedual.Rows.Add(firstRow)

            'use a variable to record the date to decide whether to start a new row
            Dim rowDateText As String
            'loop through the datarow in the table of DataView
            'define an array to record all the data from start to end in a single date 
            Dim arr As Int32()
            For Each row As DataRow In dv.Table.Rows
                'get the data of current datarow
                Dim currentTime As String = CType(row.Item(0), DateTime).ToString("yyyy-MM-dd")

                ' if the rowDateText is null or a new data occurs, start a new row
                If (IsNothing(rowDateText) Or Not currentTime = rowDateText) Then

                    If Not IsNothing(rowDateText) Then
                        'if the rowDateText is null ,don't need to add a row to the table
                        ' because there is no data 
                        'else you should record all the data of last date
                        Dim tableRow As New TableRow()
                        Dim cell As New TableCell()
                        cell.Text = rowDateText
                        tableRow.Cells.Add(cell)
                        'loop through the array to get date 
                        For index = 0 To UBound(arr) - 1
                            cell = New TableCell()
                            'if the value of the current element equals 1 
                            'change the color (I record the data between start and end as 1 in the corresponding index of the array)
                            If arr(index) = 1 Then
                                cell.BackColor = Drawing.Color.Gray
                            End If
                            tableRow.Cells.Add(cell)
                        Next
                        tblSchedual.Rows.Add(tableRow)

                    End If
                    'initilize the arr
                    ReDim arr(48)

                End If

                For index = CInt(row.Item(1)) To CInt(row.Item(2))
                    'rocord the data from start and from of the current datarow into the array
                    arr(index - 1) = 1
                Next

                'record the current date the the datarow to use by next datarow
                rowDateText = currentTime

            Next

            'generate the last row of the table
            Dim tableRowLast As New TableRow()
            Dim celllast As New TableCell()
            celllast.Text = rowDateText
            tableRowLast.Cells.Add(celllast)
            For index = 0 To UBound(arr) - 1

                celllast = New TableCell()
                If arr(index) = 1 Then
                    celllast.BackColor = Drawing.Color.Gray
                End If
                tableRowLast.Cells.Add(celllast)
            Next
            tblSchedual.Rows.Add(tableRowLast)



        End Sub

    </script>




</head>
<body>
    <form id="form1" runat="server">
        <div>

           <asp:Table runat="server" ID="tblSchedual" CssClass="table table-bordered table-hover table-responsive"  >




           </asp:Table>
          
        </div>

          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bjhksjConnectionString %>" SelectCommand="SELECT [date], [start], [end] FROM [VBPlan] ORDER BY [date]"></asp:SqlDataSource>
           <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
    </form>
</body>
</html>
