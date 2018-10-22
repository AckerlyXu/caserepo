using MVCLearning.Models;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace MVCLearning.Controllers
{
    public class StudyController : Controller
    {
        private int a;
        public ActionResult partialAddRow(int? i)
        {

         
            NameValueCollection col = Request.Params;
            foreach (var item in col.AllKeys)
            {
                string value = col[item];
            }
           
            a++;
            ViewBag.i = i;
            return PartialView();
        }
       
        public ActionResult Table()
        {
            ViewBag.flag = "flag";
            return View();
        }

       
        public ActionResult Parent()
        {
            return View();
        }
        public ActionResult Child()
        {
            return PartialView();
        }
        
        public ActionResult Join()
        {
            EntityDb1 db1 = new EntityDb1();
            EntityDb1 db2 = new EntityDb1();
            IEnumerable<Product> products = db1.Products;
            IEnumerable<Category> categories = db2.Categories;

            var result = from pro in products
                         join ca in categories
                         on pro.CategoryID equals ca.CategoryID

                         select
                         new JoinView
                         {
                             product = pro,
                             category=ca
                         };
           
            
            return View(result);
        }
    }

    public class Model
    {
        public string TextBox1 { get; set; }
        public string  TextBox2 { get; set; }
    }
}