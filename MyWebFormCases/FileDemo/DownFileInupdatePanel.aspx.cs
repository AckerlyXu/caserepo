using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.FileDemo
{
    public partial class DownFileInupdatePanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = new int[1];
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            Response.Clear();
            Response.ClearContent();
            Response.ClearHeaders();
            Response.Buffer = true;
            Response.ContentType = ("application/zip");
            Response.AddHeader("Content-Disposition", "attachment; filename=100.jpg"  );

            Response.WriteFile(Server.MapPath("/FileDemo/100.jpg"));
           // Response.TransmitFile(rutaCompleta.Trim());
 
            Response.Flush();
            Response.Close();
            Response.End();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.ClearContent();
            Response.ClearHeaders();
            Response.Buffer = true;
            Response.ContentType = ("application/zip");
            Response.AddHeader("Content-Disposition", "attachment; filename=100.jpg");

            Response.WriteFile(Server.MapPath("/FileDemo/100.jpg"));
            // Response.TransmitFile(rutaCompleta.Trim());

            Response.Flush();
            Response.Close();
            Response.End();
        }
    }
}