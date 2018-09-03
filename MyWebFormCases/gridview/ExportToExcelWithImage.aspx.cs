using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace MyWebFormCases.gridview
{
    public partial class ExportToExcelWithImage : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["NorthWindConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGridView();
               
           
        }

        public void BindGridView() {

            string sql = "select * from categories";
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
            Response.AddHeader("content-disposition", "attachment;filename=GridViewImage.xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            this.BindGridView();
            GridView1.AllowPaging = false;

            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                GridViewRow row = GridView1.Rows[i];
                row.Attributes.Add("class", "textmode");
            }
            GridView1.RenderControl(hw);
            string style = @"<style> .textmode { mso-number-format:\@; } </style>";
            Response.Write(style);
            Response.Output.Write(sw.ToString());
            Response.Flush();
            Response.End();
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