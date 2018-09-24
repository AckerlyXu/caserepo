using System;
using System.Collections.Generic;
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
            a++;
            ViewBag.i = i;
            return PartialView();
        }
       
        public ActionResult Table()
        {
            return View();
        }
    }

    public class Model
    {
        public string TextBox1 { get; set; }
        public string  TextBox2 { get; set; }
    }
}