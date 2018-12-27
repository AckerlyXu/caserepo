using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.gridview3
{
   
    public partial class SaveDatatableInSession : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["WingtipToysConnectionString2"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<ProductOrder> list = new List<ProductOrder>();
                list.Add(new ProductOrder { Commants = "commit1", Meter = 1, Id = 1, ProductID = 23, Quantity = 3, Total = 100, WOM = 231 });
                list.Add(new ProductOrder { Commants = "commit2", Meter = 2, Id = 2, ProductID = 12, Quantity = 9, Total = 200, WOM = 123 });
                list.Add(new ProductOrder { Commants = "commit3", Meter = 3, Id = 3, ProductID = 10, Quantity = 12, Total = 300, WOM = 156 });

                list.Add(new ProductOrder { Commants = "commit4", Meter = 4, Id = 4, ProductID = 7, Quantity = 15, Total = 400, WOM = 67 });
                list.Add(new ProductOrder { Commants = "commit5", Meter = 5, Id = 5, ProductID = 4, Quantity = 20, Total = 500, WOM = 23 });
              
                Session["addToCart"] = list;
                GridView1.DataSource = list;
                GridView1.DataBind();

            }
        }
        //method to bind data and return the new data
        //private DataTable BindGridView()
        //{
        //    using (SqlDataAdapter adapter = new SqlDataAdapter("select * from productBak ", constr))
        //    {


        //        DataTable table = new DataTable();
        //        adapter.Fill(table);
        //        GridView1.DataSource = table;
        //        GridView1.DataBind();
        //        return table;
        //    }
        //}

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            List<ProductOrder> list = Session["addToCart"] as List<ProductOrder>;
            if(list != null)
            {
                foreach (ProductOrder item in list) //loop through all the productorder
                {                                              
                 if  (    item.Id == (int)e.Keys[0]) // convert id from object to int 
                    {    
                        list.Remove(item); // delete the item  (if the item is deleted from the list, the gridview and session's item will both be deleted)
                        break;
                    }
                }
                GridView1.DataSource = list; // rebind data
                GridView1.DataBind();
            }
           






        }

        public class ProductOrder
        {
            public int Id { get; set; }
            public int ProductID { get; set; }
            public double Meter { get; set; }
            public double Quantity { get; set; }
            public double WOM { get; set; }
            public double Total { get; set; }
            public string Commants { get; set; }
        }

    }
}