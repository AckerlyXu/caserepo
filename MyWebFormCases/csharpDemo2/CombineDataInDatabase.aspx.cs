using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.csharpDemo2
{
    public partial class CombineDataInDatabase : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["tag"].ConnectionString;

        public class Model
        {
            public string Start { get; set; }
            public string End { get; set; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {


            List<Model> models = new List<Model>();
          
            //retrieve data from database and store it in customized model   start
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand com = new SqlCommand("select * from StartEnd", con))
                {
                    
                        con.Open();
                    using (SqlDataReader reader=com.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                Model model = new Model();
                                model.Start = reader.GetString(1);
                                model.End = reader.GetString(2);
                                models.Add(model);
                            }
                        }
                    }

                }

            }
            //retrieve data from database and store it in customized model   end


            //create ordered sequence for every model and stroed them in a list  start  
            List<List<string>> data = new List<List<string>>();
            for (int i = 0; i < models.Count; i++)
            {
                if (i % 2 == 0)
                {
                    List<string> chars = new List<string>();
                    //convert  to char
                    char startChar = Convert.ToChar(models[i].Start);
                    char endChar = Convert.ToChar(models[i].End);
                    //please pay attention char could be add  for example if startChar=A endChar=E, this loop will create a list of {'A','B','C','D','E'}
                    for (char c = startChar; c <=endChar; c++)
                    {
                        chars.Add(c.ToString());
                    }
                    data.Add(chars);
                }
                else
                {
                    int numStart = Convert.ToInt32(models[i].Start);
                    int numEnd = Convert.ToInt32(models[i].End);
                    List<string> nums = new List<string>();
                    for (int n = numStart; n <= numEnd; n++)
                    {
                        nums.Add(n.ToString());
                    }
                    data.Add(nums);
                }
            }

            //create ordered sequence for every model  and stored them in a list  end


            var query = from str0 in data[0]          // join all the list together  simimar to  sql  select (what you want) from table1,table2,table3... 
                        from str1 in data[1]
                        from str2 in data[2]
                        from str3 in data[3]
                        select new { data= str0 + "0" + str1 + str2 + "0" + str3 };
            int count = 0;
            foreach (var item in query)
            {
                Response.Write(item.data+"&nbsp;&nbsp;");
                count++;
                if(count%(data[2].Count * data[3].Count) == 0)  //print <br/> to  format the data 
                {
                    Response.Write("<br/>");
                }
            }
            Response.Write(query.Count());






            //List<string> results1 = new List<string>();
            //List<string> results2 = new List<string>();
            //Model first = models[0];
            //char start = Convert.ToChar(first.Start);
            //char end = Convert.ToChar(first.End);

            //for (char s = start; s <= end; s++)
            //{
            //    results1.Add(s.ToString());
            //}

            //for (int i = 1; i < models.Count; i++)
            //{
            
            //    Model model = models[i];
            //    if (i % 2 == 0)
            //    {
            //        char start1 = Convert.ToChar(model.Start);
            //        char end1 = Convert.ToChar(model.End);
           
            //            if (results1.Count > results2.Count)
            //            {
            //                results2.Clear();
            //            for (char j = start; j <= end; j++)
            //            {
                            
            //                foreach (string item in results1)
            //                {
            //                    results2.Add(item + j);
            //                }
            //            }
            //        }
            //        else
            //            {
            //                results1.Clear();
            //            for (char j = start1; j <= end1; j++)
            //            {
                      
            //                foreach (string item in results2)
            //                {
            //                    results1.Add(item + j);
            //                }

            //            }
            //        }

            //    }
            //    else
            //    {
            //        int numStart = Convert.ToInt32(model.Start);
            //        int numEnd = Convert.ToInt32(model.End);
            //        if (results1.Count >= results2.Count)
            //        {
            //            results2.Clear();
            //            for (int k = numStart; k <= numEnd; k++)
            //            {
            //                foreach (string item in results1)
            //                {
            //                    results2.Add(item + "0"+k);
            //                }
            //            }
            //        }
            //        else
            //        {
            //            results1.Clear();
            //            for (int k = numStart; k <= numEnd; k++)
            //            {
            //                foreach (string item in results2)
            //                {
            //                    results2.Add(item + "0" + k);
            //                }
            //            }
            //        }

            //    }

            //}
            //foreach (var item in results2)
            //{
            //    Response.Write(item + "<br/>");
            //}
        }

       
    }
}