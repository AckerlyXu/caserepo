using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Runtime.InteropServices;
using Microsoft.Office.Interop.Excel;

namespace MyWebFormCases.Office
{
    public partial class EditExcelInSpecifiedRange : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Microsoft.Office.Interop.Excel.Application xlApp = new Application();
            //open the excel
            Workbook xlWorkbooK = xlApp.Workbooks.Open(@"d:\range3.xlsx");
            //get the first sheet of the excel
            Worksheet xlWorkSheet = (Worksheet)xlWorkbooK.Worksheets.get_Item(1);
            Range range = xlWorkSheet.UsedRange;
            int rowCount = range.Rows.Count;
            int columnCount = range.Columns.Count;
            // specify the rows
            for (int i = 1; i <=20; i++)
            {
                //specify the columns
                for (int j= 1; j <=5; j++)
                {
                 
                    Range cell = range.Cells[i, j] as Range;
                 
                    if ((string)cell.Value2 == "hi")
                    {
                     // change the cell which has value "hi"
                        cell.Value = "abc";
                    }
                }
            }
            xlWorkbooK.Save();
            //release the resource
            xlApp.Quit();
            Marshal.ReleaseComObject(xlWorkSheet);
            Marshal.ReleaseComObject(xlWorkbooK);
            Marshal.ReleaseComObject(xlApp);
        }
    }
}