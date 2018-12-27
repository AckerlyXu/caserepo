using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
//using System.Net.Http;
//using System.Net.Http.Headers;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebFormCases.json
{
    public partial class JsonConvertTest : System.Web.UI.Page
    {
        protected async void Page_Load(object sender, EventArgs e)
        {
          //  var client = new HttpClient
          //  {
          //      BaseAddress = new Uri("http://localhost:55466/api/Values/1")
          //  };
          //  client.DefaultRequestHeaders.Accept.Clear();
          //  client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
          //  HttpResponseMessage response = await client.GetAsync("http://localhost:55466/api/Values/1");

          //  Hall hall = new Hall() { hall_id = 1, hall_name = "name" };
          //  List<Hall> halls = new List<Hall> { hall };
          //string abc=  JsonConvert.SerializeObject(halls);
          //  if (response.IsSuccessStatusCode)
          //  {
          //      var data = await response.Content.ReadAsStringAsync();
          //      //replace the 0,1,3 property with data0,data1,data3
          //      data = data.Replace("\"0", "\"data0").Replace("\"1", "\"data1").Replace("\"3", "\"data3").Replace("\\", "");
          //      data= data.Substring(1, data.Length - 2);



          //                                                                 // this generic method specify the type of object you want to convert to.
          //      IEnumerable<Hall> storydata = JsonConvert.DeserializeObject<IEnumerable<Hall>>(data);


          //       foreach (Hall item in storydata)
          //       {
          //           label1.Text += item.hall_name;
          //       }
          
          //  };

        }

        public class Hall
        {
            public int hall_id { get; set; }
            public int data0 { get; set; }
            public int site_id { get; set; }
            public int data1 { get; set; }
            public string hall_name { get; set; }
            public int is_active { get; set; }
            public int data3 { get; set; }
           
        }
    }
}