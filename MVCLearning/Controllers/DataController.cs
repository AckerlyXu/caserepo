using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCLearning.Controllers
{
    public class DataController : Controller
    {
       

        // GET: Data
        public JsonResult Index(int id)
        {
                ModelMetadata
            return Json(getTraResDesMed(id),JsonRequestBehavior.AllowGet);
        }

        public class Entry
        {
           
            public string  Code { get; set; }
            public string  Description { get; set; }
        }
        public static List<Entry> getTraResDesMed(int id)
        {
            List<Entry> list = new List<Entry>();
            SqlConnection  con = new SqlConnection(ConfigurationManager.ConnectionStrings["EntityExe"].ToString());
            SqlCommand cmd = new SqlCommand();
            try
            {
                cmd.Connection = con;
               
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.CommandText = "entity_pro";
                cmd.Parameters.AddWithValue("@ID", id);
         
                con.Open();
                SqlDataReader rdr;
                rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    Entry entry = new Entry();
                    entry.Code = rdr["Code"].ToString();
                 entry.Description = rdr["Description"].ToString();
                    list.Add(entry);
                }
                return list;
            }
            catch (Exception ex)
            {
             
                return list;
            }
            finally
            {
                con.Close();
            }

        }


    }
}