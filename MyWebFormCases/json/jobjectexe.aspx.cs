using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.json
{
    public partial class jobjectexe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var abc = "{'Name':'sam','Id':12,'Designation':'tl','Location':'chennai'}";
            var jobjct = Newtonsoft.Json.JsonConvert.DeserializeObject(abc);
            JObject jobj = JObject.Parse(abc);
            JToken jToken = JToken.Parse(abc);
         
            string str ="";
            foreach (var item in jobj)
            {
                // use item.Value.Type==JTokenType.Integer to check whether item.Value is of type integer or not
                str += item.Key + "=" + (item.Value.Type==JTokenType.Integer?item.Value:("'"+item.Value+"'"))+"&" ;
            }
            Response.Write(str.TrimEnd('&'));
        }
    }
}