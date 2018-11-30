using MyWebFormCases.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.Compilation;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.csharpDemo
{
    public partial class SortFile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

       List<Type> list=     typeof(Category).Assembly.GetTypes()
              .Where(b => b.Namespace == "MyWebFormCases.Models")
              .ToList();
            foreach (Type clazz in list)
            {
                Response.Write("<div style='background-color:yellow'>fullNameofClass:"+clazz.FullName + "</div>");
                Response.Write("<div style='background-color:pink'>propertise:");
                foreach (var pro in clazz.GetProperties())
                {
                    Response.Write(pro.Name + ",");
                }
                Response.Write("</div><br/>");
            }


          string[] lines=  File.ReadAllLines(Server.MapPath("/csharpDemo/highscores.txt"));
            // if you are not familiar with Server.MapPath,you only need to konw File.ReadAllLines 
            // accept the path of your highscores.txt 
          lines=  lines.OrderByDescending(f => Convert.ToInt32(f.Split(new char[] { ':' })[1]))  .ToArray();
          string[] a=  "abc:a".Split(new char[] { ':' });
            //   f  in lines.OrderBy () represents the element of the array lines
            // in your case it will be  Tom:23 , Barry:34 , Luis:34 and so on
            //  at the right hand of the => , you get the element of the array lines
            // use Tom:23 as an example:
            // f.split(new char[]{":"}) will return ["Tom","23"]  and I get 23 and convert it to int32
            // this means  Convert.ToInt32(f.Split(new char[] { ':' })[1]) will return the score of everyone
            // and the method OrderBy will sort the array lines according to the score (desc not asc if you want to asc just use OrderBy).


            // write the sorted array to a file , I assume you alreay have the file highscoresScored.txt,
            // if not , you should create one by your own  or just cover your original file.
            File.WriteAllLines(Server.MapPath("/csharpDemo/highscoresScored.txt"), lines);
        }
    }
}