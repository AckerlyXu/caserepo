using MVCLearning.Models;
using Newtonsoft.Json;
using Newtonsoft.Json.Serialization;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using static MVCLearning.Controllers.Test1Controller;

namespace MVCLearning.Controllers
{
    public class Test1Controller : Controller
    {
        // GET: Test1
        public ActionResult Index()
        {
            var courses = new[]
   {
new CourseVm {Number = "CREA101", Name = "Care of Magical Creatures", Instructor = "Rubeus Hagrid"},
new CourseVm {Number = "DARK502", Name = "Defence Against the Dark Arts", Instructor = "Severus Snape"},
new CourseVm {Number = "TRAN201", Name = "Transfiguration", Instructor = "Minerva McGonagall"},
};
            var settings = new JsonSerializerSettings { ContractResolver = new CamelCasePropertyNamesContractResolver() };
            var serializedCourses = JsonConvert.SerializeObject(courses, Formatting.None, settings);
           
            return View((Object)serializedCourses);
        }
        public ActionResult UploadFiles()
        {
            return null;
        }
        PartionDb db = new PartionDb();
        public ActionResult ShowPation()
        {
            var query1 = from t in db.pations
                      
                        let Agerange = (

                                     t.age >= 1 && t.age < 5 ? "age from to 5" :
                                     t.age >= 5 && t.age < 15 ? "age from 5 to 15 " :
                                     t.age >= 15 && t.age < 25 ? "age from 15 to 25" :
                                     t.age >= 25 && t.age < 45 ? "age from 25 to 45" :
                                     "45+")
                           
                        group new { t.age,t.sex,Agerange} by new { t.date.Year, t.date.Month,Agerange } into g
                      
                        select g;
   

            var query2 = from g in query1.OrderBy(i => i.Key.Year).ThenBy(i => i.Key.Month).ThenByDescending(i => i.Key.Agerange) //sort the data let it in the order of Agerange
                       
                        select new { mycount = g.Count(),g.Key.Year,g.Key.Month,g.Key.Agerange };  //select count of every group


            var query3 = from i in query2                               //group every agerange in the according to the year
                         group i by new { i.Year, i.Month } into g
                         select g;

          
            Dictionary<string,List< UserRange>> dic = new Dictionary<string, List<UserRange>>();// fill the dictionary using the final data
            foreach (var item in query3)
            {
              
                foreach (var item1 in item)
                {
                    if (!dic.ContainsKey(item.Key.Month + "/" + item.Key.Year))
                    {

                        dic[item.Key.Month + "/" + item.Key.Year] = new List<UserRange>();
                      
                    }
                    dic[item.Key.Month + "/" + item.Key.Year].Add(new UserRange { Count = item1.mycount, Agerange = item1.Agerange });
                   
                }
                dic[item.Key.Month + "/" + item.Key.Year] = dic[item.Key.Month + "/" + item.Key.Year].OrderByDescending(i => i.Agerange).ToList();
            }
         
            return View(dic);



        }
       

        public class CourseVm
        {
            public string Number { get; set; }
            public string Name { get; set; }
            public string Instructor { get; set; }
        }
    }
    public class UserRange
    {
        public string Agerange { get; set; }
        public int Count { get; set; }

    }
}