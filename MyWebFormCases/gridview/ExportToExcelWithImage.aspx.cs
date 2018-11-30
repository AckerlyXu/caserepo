using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace MyWebFormCases.gridview
{
    public partial class ExportToExcelWithImage : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["bjhksjConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGridView();
        
        }

        public void BindGridView() {

            string sql = "select * from HKSJ_Clients";
            using (SqlDataAdapter adapter = new SqlDataAdapter(sql, constr))
            {


                DataTable table = new DataTable();
                adapter.Fill(table);
                GridView1.DataSource = table;
                GridView1.DataBind();
            }

        }



        private void Excel_Export()

        {
            Response.Clear();
            Response.Buffer = true;
           // Response.Charset = "UTF-8";
            //Response.ContentEncoding = System.Text.Encoding.GetEncoding("UTF-8");
           // Response.AppendHeader("content-disposition", "attachment;filename=\"" + System.Web.HttpUtility.UrlEncode("数据导出", System.Text.Encoding.UTF8) + ".xls\"");
           // Response.ContentType = "Application/ms-excel";

            System.IO.StringWriter oStringWriter = new System.IO.StringWriter();
       
          
            System.Web.UI.HtmlTextWriter oHtmlTextWriter = new System.Web.UI.HtmlTextWriter(oStringWriter);
         
                        
            this.GridView1.RenderControl(oHtmlTextWriter);
            //Response.Output.Write(oStringWriter.ToString());

            StreamWriter writer = new StreamWriter(Server.MapPath("/gridview/my.xls"),true);
              //  File.AppendText(Server.MapPath("/gridview/my.xls"));
        
            writer.WriteLine(oStringWriter);
            writer.Flush();
            writer.Close();
            Response.Flush();
            Response.End();

         
          
            // Response.Clear();
            // Response.Buffer = true;
            // Response.AddHeader("content-disposition", "attachment;filename=GridViewImage.xls");
            // Response.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
            //  Response.Charset = "gb2312";
            //// Response.Write("<meta http-equiv=Content-Type content='text/html;charset=GB2312/'>");
            // Response.ContentType = "application/vnd.ms-excel";
            // StringWriter sw = new StringWriter();
            // HtmlTextWriter hw = new HtmlTextWriter(sw);
            // this.BindGridView();
            // GridView1.AllowPaging = false;

            //for (int i = 0; i < GridView1.Rows.Count; i++)
            //{
            //    GridViewRow row = GridView1.Rows[i];
            //    row.Attributes.Add("class", "textmode");
            //}
            //GridView1.RenderControl(hw);
            //string style = @"<style> .textmode { mso-number-format:\@; } </style>";
            //Response.Write(style);
            //Response.Output.Write(sw.ToString());
            //Response.Flush();
            //Response.End();
        }

        protected string GetUrl(string imagepath)

        {
          

            string[] splits = Request.Url.AbsoluteUri.Split('/');

            if (splits.Length >= 2)

            {

                string url = splits[0] + "//";

                for (int i = 2; i < splits.Length - 1; i++)

                {

                    url += splits[i];

                    url += "/";

                }

                return url+ "/images/WingtipToys/" + imagepath;

            }

            return imagepath;

        }

        protected void export_Click(object sender, EventArgs e)
        {
            Excel_Export();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
           
        }
    }
}