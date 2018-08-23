using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.DataBase
{
    public partial class CarouselWithAdo : System.Web.UI.Page
    {

        //pass data to the aspx page
      public  DataTable Imgtable;
        private static string constr = ConfigurationManager.ConnectionStrings["supplyModel"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            string sql = "select * from  WebDataSetting where section='Carousel' order by ImgOrder  ";
            using (SqlDataAdapter adapter = new SqlDataAdapter(sql, constr))
            {

                Imgtable = new DataTable();
                adapter.Fill(Imgtable);
         
            }
        }
    }
}