using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ListViewDemo
{
    public partial class listViewClassification : System.Web.UI.Page
    { 
    private static string constr = ConfigurationManager.ConnectionStrings["EntityExe"].ConnectionString;
        private DataTable table;
    protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                // get all the perfumes from database
                using (SqlDataAdapter adapter = new SqlDataAdapter("select * from perfume", constr))
                {
                   table = new DataTable();
                    adapter.Fill(table);

                    //get distinct marca
                    perfumeList.DataSource = table.AsEnumerable().Select(row => new { marca = row["marca"] }).Distinct();
                    perfumeList.DataBind();
                }


            }


        }

        protected void perfumeList_ItemDataBound(object sender, ListViewItemEventArgs e)
        {
            //find the nested listview
            System.Web.UI.WebControls.ListView listView=   e.Item.FindControl("ListView1") as System.Web.UI.WebControls.ListView;
            // find the name of current marca
          Label label=  e.Item.FindControl("Label1") as Label;
            //get all the perfumes with the current marca
            //here I use linq , you could use other ways only if you could get the perfumes having the current marca
            listView.DataSource = table.AsEnumerable().Where(row => row["marca"] as string  == label.Text).Select(row=>new {name=row["name"],price=row["price"] }).ToList();
            listView.DataBind();
        }
    }
}