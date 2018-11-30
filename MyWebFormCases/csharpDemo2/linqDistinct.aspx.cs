using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.csharpDemo2
{
    public partial class linqDistinct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Category cat = new Category { Type = "A", Start = new DateTime(2018, 8, 15), End = new DateTime(2018, 8, 19) };
            Category cat1 = new Category { Type = "A", Start = new DateTime(2018, 8, 19), End = new DateTime(2018, 8, 30) };
            Category cat2 = new Category { Type = "A", Start = new DateTime(2018, 12, 15), End = new DateTime(2018, 12, 30) };
            Category cat3 = new Category { Type = "A", Start = new DateTime(2018, 8, 15), End = new DateTime(2018, 8, 19) };
            List<Category> list = new List<Category>();
            list.Add(cat);
            list.Add(cat1);
            list.Add(cat2);
            list.Add(cat3);
          list=  list.Distinct(new CateogyComparer()).ToList();

            Response.Write(list.Count());
           
        }
    }

    public class Category
    {
        public string Type { get; set; }
        public DateTime Start { get; set; }
        public DateTime End { get; set; }
    }

    public class CateogyComparer : IEqualityComparer<Category>
    {
        public bool Equals(Category x, Category y)
        {
        
            return x.Start.ToString() == y.Start.ToString() && x.End.ToString() == y.End.ToString();
        }


        public int GetHashCode(Category obj)
        {
            return 1;
        }
    }
}