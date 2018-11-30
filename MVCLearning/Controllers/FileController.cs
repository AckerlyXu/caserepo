using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCLearning.Controllers
{
    public class FileController : Controller
    {
        // GET: File
        [HttpPost]
        public ActionResult UploadAttendeeFile(HttpPostedFileBase myfile)
        {
            // Why HttpPostedFileBase is giving NULL Value always
            //// ?????
            if (myfile == null)
            {
                return JavaScript("alert('failure')");

            }
            else
            {
                return JavaScript("alert('success')");
            }
           
        }
        [HttpGet]
        public ActionResult UploadAttendeeFile()
        {
            // Why HttpPostedFileBase is giving NULL Value always
            //// ?????

            return View();
        }
    }
}