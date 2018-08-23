using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.sqlserver
{
    public partial class datatablehasdatawhennodata : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["supplyModel"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //SqlCommand sqlCommand = new SqlCommand("Select COUNT(*) from [Locations] where [Code]=@Location", con);
            ////con.Open();
            //sqlCommand.Parameters.AddWithValue("@Location", Loc);
            //{

            //    SqlDataAdapter ad = new SqlDataAdapter(sqlCommand);
            //    DataTable dt = new DataTable();
            //    ad.Fill(dt);
            //    if (dt.Rows.Count > 0)
            //    {
            //    }
            //    else
            //    {
            //        InsertInfo(Location, description);
            //    }

            //}
        }
    }
}