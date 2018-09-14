using MyWebFormCases.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.gridView2
{
    public partial class FitnessCenter : System.Web.UI.Page
    {
        UserItemDb dbContext = new UserItemDb();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //select  records  in this month of this year  (and other conditions)
             GridView1.DataSource=   dbContext.FitnessCenters.Where(c => c.isAuto && !c.isExported && c.selectDate.Month == DateTime.Now.Month && c.selectDate.Year == DateTime.Now.Year).ToList();
                GridView1.DataBind();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename="+DateTime.Now.ToString()+".xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);

            List<int> list = new List<int>();
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    //select the checked checkbox
                    if ((row.FindControl("box") as CheckBox).Checked)
                    {
                        //record  id of the row
                        list.Add(Convert.ToInt32(row.Cells[0].Text));
                        int id= Convert.ToInt32(row.Cells[0].Text);
                        //change the isExported to true
                        dbContext.FitnessCenters.Where(c => c.id == id).First().isExported = true;
                    }    
                }
            }

            //save changes to database
            dbContext.SaveChanges();

            // bind the selected row to the gridview to export them
            GridView1.DataSource = dbContext.FitnessCenters.Where(C => list.Contains(C.id)).ToList();
            GridView1.DataBind();

            
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

        //don't forget this , or it will not be able to export
        public override void VerifyRenderingInServerForm(Control control)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView1.DataSource = dbContext.FitnessCenters.Where(c => c.isAuto && !c.isExported && c.selectDate.Month == DateTime.Now.Month && c.selectDate.Year == DateTime.Now.Year).ToList();
            GridView1.DataBind();

        }
    }
}