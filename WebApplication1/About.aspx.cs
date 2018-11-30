using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
            WebRequest request = WebRequest.Create("http://localhost:55466/api/values");
     
           
            Task<WebResponse> task = request.GetResponseAsync();

            task.Result.GetResponseStream();

            HttpClient client = new HttpClient();
            string url = "http://localhost:55466/api/values";


            // Task<HttpResponseMessage>   data = client.GetAsync(url);
        Task<String> ta=    client.GetStringAsync("http://localhost:55466/api/values");
            string a = ta.Result;
        }
    }
}