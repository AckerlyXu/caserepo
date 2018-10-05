using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.csharpDemo
{
    public partial class RegularExpressionExe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

         List<List<string>> list=  getTotal();
            // Response.Write(IsDecimalRange("1111.1"));
        }

        public  bool IsDecimalRange(string input)
        {
            return Regex.IsMatch(input, @"^[1-9]\d{0,2}(\.\d+)?$|^0(\.\d+)?$");
        }

        public List<List<String>> getTotal()
        {
            List<List<string>> total = new List<List<string>>();

            List<string> blob_images = new List<string>();
            List<string> desc_images = new List<string>();

            blob_images.Add("image1");  //blob_images.push($('#desc_image_3').val());
            desc_images.Add("desc-image1"); //desc_images.push($('#desc_image_1').val());

            List<List<int>> list2;

            total.Add(blob_images);
            total.Add(desc_images);
            return total;
        }
    }
}