using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading;
using System.Threading.Tasks;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases
{
    public partial class a : System.Web.UI.Page
    {
        public event EventHandler But;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblValidate.Text = "";
        // WebRequest request=   WebRequest.Create("http://localhost:55466/api/values");
        //Task<WebResponse> task=  request.GetResponseAsync();
        //    task.Result.GetResponseStream();
       
       
            ThreadPool.QueueUserWorkItem(
    (obj) =>
    {
        
        var req = (HttpWebRequest)WebRequest.Create(string.Format("{0}", "http://localhost:55466/api/values"));
        var response = (HttpWebResponse)req.GetResponse();

    }, null);

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
          
        }
    }
}