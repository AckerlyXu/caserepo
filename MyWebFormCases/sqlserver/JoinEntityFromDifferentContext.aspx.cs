using MyWebFormCases.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.sqlserver
{
    public partial class JoinEntityFromDifferentContext : System.Web.UI.Page
    {
        EntityDb1 entityDb1 = new EntityDb1();
        EntityDb2 entityDb2 = new EntityDb2();
        protected void Page_Load(object sender, EventArgs e)
        {
          DbSet<Product> products=  entityDb1.Products;
            DbSet<Category> categories = entityDb2.Categories;
         
            var result = from pro in products
                         join ca in categories
                         on pro.CategoryID equals ca.CategoryID
                         into sw
                         select
                         new
                         {
                             pro = pro,
                             ca = sw
                         };
            foreach (var item in result)
            {
                Response.Write(item.pro.ProductName);
               // Response.Write(item.ca.WeekID);
            }

        }
    }
}