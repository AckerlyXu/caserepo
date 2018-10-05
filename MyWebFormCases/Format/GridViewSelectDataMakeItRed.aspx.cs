
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.Format
{
    public partial class GridViewSelectDataMakeItRed : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
           


        }
        
        protected void gridView1_DataBound(object sender, EventArgs e)
        {
            //simulate data from database and format the data to string
            string[] dates = new string[]
            {
                new DateTime(2018,11,2).ToString("d-MM - yyyy"),
                new DateTime(2018,12,16).ToString("d-MM - yyyy"),
                new DateTime(2018,10,10).ToString("d-MM - yyyy"),
                new DateTime(2018,9,05).ToString("d-MM - yyyy"),
                new DateTime(2018,8,20).ToString("d-MM - yyyy"),
                new DateTime(2018,11,25).ToString("d-MM - yyyy"),
                new DateTime(2019,01,15).ToString("d-MM - yyyy"),
                new DateTime(2019,07,20).ToString("d-MM - yyyy")
            };

            // generate colors
            System.Drawing.Color[] colors = new System.Drawing.Color[]
            {
                System.Drawing.Color.Red,
                System.Drawing.Color.Green,
                System.Drawing.Color.Red,
                System.Drawing.Color.HotPink,
                System.Drawing.Color.Blue,


            };
            //  use a dictionary to replace english month with number
            Dictionary<string, string> keyValuePairs = new Dictionary<string, string>();
            keyValuePairs.Add("August", "08");
            keyValuePairs.Add("September", "09");
            keyValuePairs.Add("October", "10");
            keyValuePairs.Add("November", "11");
            keyValuePairs.Add("December", "12");
            keyValuePairs.Add("January", "01");
            keyValuePairs.Add("February", "02");
            keyValuePairs.Add("March", "03");
            keyValuePairs.Add("April", "04");
            keyValuePairs.Add("May", "05");
            keyValuePairs.Add("June", "06");
            keyValuePairs.Add("July", "07");
            gridView1.HeaderRow.Parent.Controls.RemoveAt(0);

            Random random = new Random();
            //loop through rows in gridview
            for (int i = 0; i < gridView1.Rows.Count; i++)
            {
                // get the month string of first column
                string month = gridView1.Rows[i].Cells[0].Text.Split(new char[] { '-' }, StringSplitOptions.RemoveEmptyEntries)[0].Trim();
         
                for (int j = 1; j < gridView1.Rows[i].Cells.Count; j++)
                {

                // generate the data string
                    string dataText = gridView1.Rows[i].Cells[j].Text + "-" + gridView1.Rows[i].Cells[0].Text;
                    //replace english month with number
                    string formattedDataText = dataText.Replace(month, keyValuePairs[month]);
                // check whether current date is in the array of booking date
                    if (dates.Contains(formattedDataText))
                    {
                        // change the color of the cell
                        gridView1.Rows[i].Cells[j].BackColor = colors[random.Next(0,colors.Length)];
                    }
                    
                } 
            }
           
        
        }
    }
}