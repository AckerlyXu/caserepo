using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCLearning.Controllers
{
    public class DataTableController : Controller
    {
        // GET: DataTable
        public ActionResult Index()
        {
            return View();
        }
        public JsonResult getColumns() {

            ArrayList array = new ArrayList();
            array.Add(new { variable = "column1" } );
            array.Add( new { variable = "column2" });
            array.Add(new { variable = "column3" });
            return Json(array, JsonRequestBehavior.AllowGet);

        }

        public JsonResult ConvertDataTabletoString()
        {
            
            ArrayList array = new ArrayList();
            array.Add(new {column1="11",column2="2020/1/1",column3="13" });
            array.Add(new {column1= "21", column2 = "2018/10/6", column3 = "23" });
            array.Add(new {column1="31",column2="2018/12/4",column3="33" });
            return Json(array, JsonRequestBehavior.AllowGet);
        }
    }
}