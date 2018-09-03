using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.csharpDemo
{
    public partial class sortArrayDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] originalArr = new string[] {
                "UPS 2nd Day Air AM®, 20.87",
                "UPS 2nd Day Air®, 19.11",
                "UPS 3 Day Select®, 11.48",
                "UPS Next Day Air Saver®, 27.98",
                "UPS Next Day Air® Early, 62.61",
                "UPS Next Day Air®, 30.21",
                "UPS® Ground, 8.12"
            };

            string[] newArray = originalArr.Select(str => new
            {
                //split the string into Ups and price
                Ups = str.Split(new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries)[0],
                
                Price = Convert.ToDouble(str.Split(new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries)[1].Trim())

            }).OrderBy(obj => obj.Price)  //use  OrderByDescending(obj => obj.Price) if you want opposite order
            .Select(obj => obj.Ups + ',' + obj.Price).ToArray();

            var query =
               from str in originalArr
                   select new
                   {
                       ups = str.Split(new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries)[0],
                       price = Convert.ToDouble(str.Split(new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries)[1].Trim())
                   };
            string[] newStrs =
                (from item in query
                 orderby item.price    //use   orderby item.price descending if you want opposite order.
                 select item.ups + "," + item.price).ToArray();
            

                

            foreach (var item in newArray)
            {
                Response.Write(item + "<br/>");
            }
        }
      
    }
}