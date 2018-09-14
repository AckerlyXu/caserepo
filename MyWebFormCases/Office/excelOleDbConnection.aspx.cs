using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.Office
{
    public partial class excelOleDbConnection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OleDbConnection connection = new OleDbConnection();
            
                string path = Server.MapPath("~") + "/upload/Data.xls";
                string excelConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path + ";Extended Properties=\"Excel 8.0;HDR=Yes;IMEX=1\";";

                connection.ConnectionString = excelConnectionString;
                OleDbCommand command = new OleDbCommand("select * from [Data$]", connection);
                connection.Open();
                DbDataReader dr = command.ExecuteReader();
                if (dr.HasRows)
                {
                while (dr.Read())
                {
                    string m_DocNo = dr[0].ToString();
                    string m_Name = dr[1].ToString();
                   
                }
                  

                }
           
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}