<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jqueryWithCheckbox.aspx.cs" Inherits="MyWebFormCases.javascript.jqueryWithCheckbox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script src="../Scripts/jquery-3.3.1.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
       <table  id="table" class="table table-bordered">

           <thead>
<tr>
    <th>check</th><th>IDT</th><th>ProductCode</th><th>LoanAmt.</th>
</tr>
           </thead>

          <tbody>
              
              <tr>
                  <td>
                      <input type="checkbox"  /></td><td>1</td><td> 103214</td><td> 6700.00</td>
              </tr>
              
              <tr>
                  <td>
                      <input type="checkbox"  /></td><td>2</td><td> 117339</td><td> 7700.00</td>
              </tr>
              

              <tr>
                  <td>
                      <input type="checkbox"  /></td><td>3</td><td> 117307</td><td> 10000.00</td>
              </tr>
              
              <tr>
                  <td>
                      <input type="checkbox"  /></td><td>4</td><td> 117308</td><td> 14000.00</td>
              </tr>
              
              <tr>
                  <td>
                      <input type="checkbox"  /></td><td>5</td><td> 106657</td><td> 12900.00</td>
              </tr>
              
              <tr>
                  <td>
                      <input type="checkbox"  /></td><td>6</td><td>118208</td><td>14200.00</td>
              </tr>
              
              <tr>
                  <td>
                      <input type="checkbox"  /></td><td>7</td><td>116893</td><td>13900.00</td>
              </tr>
              
              <tr>
                  <td>
                      <input type="checkbox"  /></td><td>8</td><td>116399</td><td>15000.00</td>
              </tr>
              
              <tr>
                  <td>
                      <input type="checkbox"  /></td><td>9</td><td>117171</td><td>21000.00</td>
              </tr>

             
          </tbody>
       </table>

         IDTSum:  <span id="idt"></span>   &nbsp;&nbsp;&nbsp;&nbsp;  LoanAmtSum: <span id="loan"></span> &nbsp;&nbsp;&nbsp;&nbsp;
        

        <script>

            $(function () {

                $("#table :checkbox").on('change', function () {
                    var idtSum = "";
                    var loanAmtSum = 0;
                    $("#code").html("");
                    $("#table :checkbox:checked").each(
                        function () {
                            var row = $(this).parent().parent();
                            idtSum += row.children(":eq(1)").html().trim()+",";
                            loanAmtSum += parseFloat(row.children(":eq(3)").html().trim());
                          
                        }

                    )

                    $("#idt").html(idtSum.slice(0, idtSum.lastIndexOf(",")));
                    $("#loan").html(loanAmtSum);
                })


            })

        </script>
    </form>
<script>
      <%--  
            $(function () {
                $('[id*=cbx_cgl]').on('change', function () {
                    var value = 0;
                    $('[id*=cbx_cgl]:checked').each(function () {
                        var row = $(this).closest('tr').closest('tr').closest('tr').closest('tr');
                        value = value + parseInt(row.find('[id*=lblValue]').html());
                    });
                    $('[id*=lbl_sum').html(value);
                });
            });--%>

        </script>  
</body>
</html>
