using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Office.Interop.Excel;


namespace WebFormCases.Office
{
    public partial class excel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Application xlApp;
            Workbook xlWorkBook;
            Worksheet xlWorkSheet;
            Range range;

            int rCnt;
            int rw = 0;
            int cl = 0;

            xlApp = new Application();
            //open the excel
            xlWorkBook = xlApp.Workbooks.Open(@"d:\csharp-Excel.xlsx");
            //get the first sheet of the excel
            xlWorkSheet = (Worksheet)xlWorkBook.Worksheets.get_Item(1);

            range = xlWorkSheet.UsedRange;
            // get the total row count
            rw = range.Rows.Count;
            //get the total column count
            cl = range.Columns.Count;

            List<MyRow> myRows = new List<MyRow>();
            // traverse all the row in the excel
            for (rCnt = 1; rCnt <= rw; rCnt++)
            {
                if (rCnt % 5 == 1)
                {//get rows which ABC or XYZ is in
                   
                    for (int col = 2; col <= cl; col++)
                    {//traverse columns (the first column is not included)
                        
                        for (int rowABCD = rCnt+1; rowABCD <= rCnt+4; rowABCD++)
                        {//traverse the following four rows after ABC row or XYZ row
                            MyRow myRow = new MyRow();
                            //get ABC or XYZ
                            myRow.Col1 = (string)(range.Cells[rCnt, 1] as Range).Value2.ToString();
                            // get  value of  cells of current column  in ABC row or XYZ row
                            myRow.Col2= (string)(range.Cells[rCnt, col] as Range).Value2.ToString();

                        // get the value of the first column in the current row
                            myRow.Col3= (string)(range.Cells[rowABCD, 1] as Range).Value2.ToString();
                            //get the value of the current column in the current row
                            myRow.Col4 = (string)(range.Cells[rowABCD, col] as Range).Value2.ToString();
                            // add the newly created myRow to the list
                            myRows.Add(myRow);
                        }
                    }

                }
               
            }

            GridView1.DataSource = myRows;
            GridView1.DataBind();
               
                
    
            //release the resources
            xlWorkBook.Close(true, null, null);
            xlApp.Quit();
            Marshal.ReleaseComObject(xlWorkSheet);
            Marshal.ReleaseComObject(xlWorkBook);
            Marshal.ReleaseComObject(xlApp);

        }
    }

    // my customized model
    public class MyRow
    {
        public string Col1 { get; set; }
        public string Col2 { get; set; }
        public string Col3 { get; set; }
        public string Col4 { get; set; }
    }
}