using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ExtraControls3
{
    public partial class RepeaterLayout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                //List<string> data = new List<string>();
                //for (int i = 100; i <= 110; i++)
                //{
                //   data.Add("U" + i);
                //}


                //Repeater1.DataSource = data;
                //Repeater1.DataBind();
                List<Model> data = new List<Model>();
                for (int i = 1; i <=3; i++)  // divide to three rows
                {
                    int num = 100 + (i - 1) * 4;        //data of every row
                    Model model = new Model();
                    model.Cell1 = num  <= 110 ? "U" + (num + 0) : "";
                    model.Cell2 = num + 1 <= 110 ? "U" + (num + 1) : "";
                    model.Cell3 = num + 2 <= 110 ? "U" + (num + 2) : "";
                    model.Cell4 = num + 3 <= 110 ? "U" + (num + 3) : "";
                    data.Add(model);
                }
                GridView1.DataSource = data;
                GridView1.DataBind();
            }
           
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //the code to export excel.
            Response.Clear();
            Response.Buffer = true;
            Response.ClearContent();
            Response.ClearHeaders();
            Response.Charset = "utf-8";
            string FileName = DateTime.Now + ".xls";
            StringWriter strwritter = new StringWriter();
            HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "application/vnd.ms-excel";
            Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);


           
            //GridView1.DataSource = data;
            //Repeater1.DataBind();
          
            GridView1.RenderControl(htmltextwrtter);
            Response.Write(strwritter.ToString());
            Response.End();

        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            //required to avoid the runtime error "  
            //Control 'GridView1' of type 'GridView' must be placed inside a form tag with runat=server."  
        }
        public class Model
        {
            public string Cell1 { get; set; }
            public string Cell2 { get; set; }
            public string  Cell3 { get; set; }
            public string Cell4 { get; set; }
        }
    }
}