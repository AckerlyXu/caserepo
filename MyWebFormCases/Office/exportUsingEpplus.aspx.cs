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

                
                //DataTable table = new DataTable();
                //adapter.Fill(table);

               // foreach (DataRow row in table.Rows)
              //  {
                   // string[] rowData = new string[] { table.Rows[0].ToString() };
                    using (ExcelPackage pck = new ExcelPackage())
                    {
                    HttpContext.Current.Response.Clear();
                    HttpContext.Current.Response.ClearContent();
                    HttpContext.Current.Response.ClearHeaders();
                    HttpContext.Current.Response.Buffer = true;
                    HttpContext.Current.Response.ContentEncoding = System.Text.Encoding.UTF8;
                    HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    HttpContext.Current.Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                    HttpContext.Current.Response.AddHeader("content-disposition", "attachment;filename=GridData.xlsx");


                    string filename = "test.xlsx";
                        ExcelWorksheet ws = pck.Workbook.Worksheets.Add(filename);
                        DataTable table = new DataTable();
                        table.Columns.Add("No", typeof(int));
                        table.Columns.Add("Date", typeof(DateTime));
                        table.Rows.Add(1, DateTime.Now);
                        table.Rows.Add(2, DateTime.Now);
                        DataTable dt1 = table;
                        ws.Cells["A1"].LoadFromDataTable(dt1, true);
                        var ms = new System.IO.MemoryStream();
                    ws.Cells[2,2,3,2].Style.Numberformat.Format = "yyyy-MM-dd";//format the date
                
                  
                        pck.SaveAs(ms);

                       
               
                    ms.WriteTo(HttpContext.Current.Response.OutputStream);
                    HttpContext.Current.Response.Flush();
                        HttpContext.Current.Response.End();


                        //ExcelWorksheet ws = pck.Workbook.Worksheets.Add("Accounts");
                        //ws.Row(1).Style.Font.Bold = true;
                        //ws.Cells["A1"].LoadFromDataTable(table, true);
                        //var stream = new MemoryStream(pck.GetAsByteArray());
                        //stream.WriteTo(Response.OutputStream);
                        //Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                        //Response.AddHeader("Content-Disposition", "attachment;filename=file_export_" + DateTime.Now.ToString("yyyyMMdd") + ".xlsx");
                        //Response.End();
                        //Response.Flush();
                    }
              //  }
                
            }
        }
    }
}