using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.Office
{
    public partial class GridViewToExcel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDate();
            }
        }
        public void BindDate()
        {
            //Populate dummy data
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[3] { new DataColumn("ITEMID"), new DataColumn("DSC"), new DataColumn("ACTIVE") });
            dt.Rows.Add("1", "Desc111111111111111111111111111111111", "Active22222222222222222222222222222222222222222222222222222222222222222");
            dt.Rows.Add("2", "Desc2", "InActive");
            dt.Rows.Add("3", "Desc3", "Active");
            dt.Rows.Add("4", "Desc4", "Active");
            dt.Rows.Add("5", "Desc6", "InActive");
            dt.Rows.Add("6", "Desc9", "InActive");
            dt.Rows.Add("7", "Desc9", "InActive");
            dt.Rows.Add("8", "Desc9", "InActive");
            dt.Rows.Add("89", "Desc9", "InActive");
            dt.Rows.Add("9", "Desc9", "InActive");
            dt.Rows.Add("1", "Desc9", "InActive"); dt.Rows.Add("6", "Desc9", "InActive");
            dt.Rows.Add("67", "Desc9", "InActive");
            dt.Rows.Add("60", "Desc9", "InActive");
            dt.Rows.Add("64", "Desc9", "InActive");

            ItemGridView.DataSource = dt;
            ItemGridView.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //the code to export excel.
            Response.Clear();
            Response.Buffer = true;
            Response.ClearContent();
            Response.ClearHeaders();
            Response.Charset = "utf-8";
            string FileName =  DateTime.Now + ".xls";
            StringWriter strwritter = new StringWriter();
            HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "application/vnd.ms-excel";
            Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
           
            ItemGridView.AllowPaging = false;
            this.BindDate();
            ItemGridView.HeaderStyle.BackColor = System.Drawing.Color.White;
          
            ItemGridView.HeaderStyle.Font.Bold = true;
      
            ItemGridView.RenderControl(htmltextwrtter);
            Response.Write(strwritter.ToString());
            Response.End();

        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            //required to avoid the runtime error "  
            //Control 'GridView1' of type 'GridView' must be placed inside a form tag with runat=server."  
        }
    }
}