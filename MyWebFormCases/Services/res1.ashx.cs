using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Script.Serialization;

namespace MyWebFormCases.Services
{
    /// <summary>
    /// Summary description for res1
    /// </summary>
    public class res1 : IHttpHandler
    {
        private static string constr = ConfigurationManager.ConnectionStrings["WingtipToysConnectionString2"].ConnectionString;
        public void ProcessRequest(HttpContext context)
        {
           
            context.Response.ContentType = "application/json";
          
            Thread.Sleep(3000);
            SqlConnection con = new SqlConnection(constr);
            using (SqlCommand com = new SqlCommand("select * from products where CategoryId=@id", con))
            {
                com.Parameters.AddWithValue("id", context.Request["id"]);
                    con.Open();
                List<Product> list = new List<Product>();
                using (SqlDataReader reader=com.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Product pro = new Product();
                        pro.Description = reader.GetString(2);
                        pro.Id = reader.GetInt32(0);
                        pro.ProductName = reader.GetString(1);
                        pro.ImagePath = reader.GetString(3);
                        pro.UnitPrice = reader.GetDouble(4);
                        list.Add(pro);     
                    }
                }   ;
                JavaScriptSerializer serializer = new JavaScriptSerializer();
                context.Response.Write(serializer.Serialize(list));


                    con.Close();
                    con.Dispose();
               
            }

         
        }

        public class Product
        {
            public int Id { get; set; }
            public string ProductName { get; set; }
            public string  Description { get; set; }
            public string  ImagePath { get; set; }
            public double UnitPrice { get; set; }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}