using MVCLearning.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCLearning.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";
            ApplicationUser applicationUser = new ApplicationUser();
        
            return View();
        }

        public ActionResult GetSelection()
        {
            Company editcompany = new Company
            {
                num_id = 4,
                str_cmp_name = "com4",
              
                isParent = false,
                num_parent_id = 2

            };
            List<Company> allparentCompanies = new List<Company>
            {
                new Company{num_id=1,str_cmp_name="com1",isParent=true},
                new Company{num_id=2,str_cmp_name="com2",isParent=true},
                new Company{num_id=3,str_cmp_name="com3",isParent=true}
            };
            ViewBag.allparentCompanies = allparentCompanies;
            return View(editcompany);

           
        }
      
    
        

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

    }
    public class Company
    {
        public bool isParent { get; set; }
        public int num_id { get; set; }
        public string str_cmp_name { get; set; }
        public int? num_parent_id { get; set; }
    }
}