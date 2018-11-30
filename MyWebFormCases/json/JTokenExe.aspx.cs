using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.json
{
    public partial class JTokenExe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
       String text=     File.ReadAllText(Server.MapPath("/json/user.json"));

          JToken token =  JToken.Parse(text);


            //JObject jObject = new JObject(new JProperty("id", 12), new JProperty("name", "name"), new JProperty("street", "street"), new JProperty("city", "city"), new JProperty("zipcode", 954));
            //((JArray)token).Add(jObject);



            // ((JArray)token).Remove(((JArray)token).Where(j => j["id"].ToString() == "123").Single());
            ((JArray)token).Where(j => j["id"].ToString() == "12").Single()["name"]="new name";
            File.WriteAllText(Server.MapPath("/json/user.json"), token.ToString());
            //    text= text.Replace("\r\n","");
            //JToken token=      JToken.Parse(text);
            //    token.SelectToken("orders[0]")
            //token.Children
        }
    }
}