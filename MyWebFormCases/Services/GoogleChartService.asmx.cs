using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace MyWebFormCases.Services
{
    /// <summary>
    /// Summary description for GoogleChartService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
     [System.Web.Script.Services.ScriptService]
    public class GoogleChartService : System.Web.Services.WebService
    {

        [WebMethod]
        public List<ArrayList> GetData()
        {
           
            //{ new Student { Name="stu1",Age=18,Address="address1"}, new Student { Name = "stu2", Age = 28, Address = "address2" },
            // new Student { Name = "stu3", Age = 13, Address = "address3" },new Student { Name = "stu4", Age = 18, Address = "address4" },new Student { Name = "stu5", Age = 15, Address = "address5" }};
            //
            List<ArrayList> list = new List<ArrayList>();
            for (int i = 0; i < 5; i++)
            {
                ArrayList arrayList = new ArrayList();
                arrayList.Add("stu" + i);
                arrayList.Add(10 + i);
                arrayList.Add("address" + i);
                list.Add(arrayList);
            }
            return list;
           
           
            //stus.Add(new Student { Name = "stu1", Age = 18, Address = "address1" });
            //stus.Add(new Student { Name = "stu3", Age = 13, Address = "address3" });
            //stus.Add(new Student { Name = "stu4", Age = 18, Address = "address4" });
            //return stus;
        }

        //public class Student
        //{
        //    public string Name { get; set; }
        //    public int Age { get; set; }
        //    public string Address { get; set; }
        //}
    }
}
