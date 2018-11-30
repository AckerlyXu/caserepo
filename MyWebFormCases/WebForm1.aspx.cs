using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases
{
    public partial class WebForm1 : System.Web.UI.Page
    {
         
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Response.Write("your last visited address:" + Request.UrlReferrer);
                //Session["url"] = Request.UrlReferrer.ToString();
             
                       string excelConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + "" + ";Extended Properties=\"Excel 8.0;HDR=No;IMEX=1\";";
          

                OleDbConnection cnnExcel = new OleDbConnection(excelConnectionString);
                OleDbCommand command = new OleDbCommand("select * from [Sheet1$]", cnnExcel);
                cnnExcel.Open();
            }
          
        }

        protected void Bola(object sender, EventArgs e)
        {
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // ensure that the user's last visited page is in your application
            if (Session["url"].ToString().StartsWith("https://localhost:44328/"))
            {
                Response.Redirect(Session["url"].ToString());
            }
           
        }
    }
}