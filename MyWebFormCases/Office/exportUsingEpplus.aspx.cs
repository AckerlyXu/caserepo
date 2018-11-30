using OfficeOpenXml;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.Office
{
    public partial class exportUsingEpplus : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

          
            using (SqlDataAdapter adapter = new SqlDataAdapter("select address,postalCode ,fax from  customers", constr))
            {

                
                DataTable table = new DataTable();
                adapter.Fill(table);

                foreach (DataRow row in table.Rows)
                {
                    string[] rowData = new string[] { table.Rows[0].ToString() };
                    using (ExcelPackage pck = new ExcelPackage())
                    {
                        ExcelWorksheet ws = pck.Workbook.Worksheets.Add("Accounts");
                        ws.Row(1).Style.Font.Bold = true;
                        ws.Cells["A1"].LoadFromDataTable(table, true);
                        var stream = new MemoryStream(pck.GetAsByteArray());
                        stream.WriteTo(Response.OutputStream);
                        Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                        Response.AddHeader("Content-Disposition", "attachment;filename=file_export_" + DateTime.Now.ToString("yyyyMMdd") + ".xlsx");
                        Response.End();
                        Response.Flush();
                    }
                }
                
            }
        }
    }
}