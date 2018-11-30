using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ExtraControls2
{
    public partial class PieChartStart : System.Web.UI.Page
    {
        private static string constr = ConfigurationManager.ConnectionStrings["tag"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            List<string> xData = new List<string>() { "A", "B", "C"};
            List<int> yData = new List<int>();
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand com = new SqlCommand("select A,B,C from Data", con))
                {
                   

                        con.Open();
                    using (SqlDataReader reader=com.ExecuteReader() )
                    {
                        if (reader.HasRows)
                        {
                            reader.Read();
                            yData.Add(reader.GetInt32(0));
                            yData.Add(reader.GetInt32(1));
                            yData.Add(reader.GetInt32(2));
                        }
                    }
                   
                    

                }
            }

          
            Chart1.Series[0].ChartType = System.Web.UI.DataVisualization.Charting.SeriesChartType.Pie;
            Series series= Chart1.Series[0];
            series.ToolTip = "#VALX:#VALY"; //show tooltip #VALX represents A,B,C #VALY represents values of A,B,C

            //series.LegendToolTip = "#PERCENT"; // show data in  the format of percent

            //series.PostBackValue = "#INDEX";

            //series.LegendPostBackValue = "#INDEX";

            series.LegendText = "#VALX"; // use A,B,C as LegendText 

            series.Label = "#VALX[#PERCENT]"; //show data in the format of A:valueofA% , B:valueofB%

            Chart1.Series[0].IsValueShownAsLabel = true;
            Chart1.Series[0]["PieLabelStyle"] = "Outside";//move value outside the pie
            Chart1.Series[0]["PieLineColor"] = "Black";//draw a black line
            Chart1.Series[0].Points.DataBindXY(xData, yData); //bind data
        }
    }
}