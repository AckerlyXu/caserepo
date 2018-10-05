using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.Mvc;

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
    }

    public class Model
    {
        public string TextBox1 { get; set; }
        public string  TextBox2 { get; set; }
    }
}