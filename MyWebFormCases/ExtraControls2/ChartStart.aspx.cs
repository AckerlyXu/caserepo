using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ExtraControls2
{
    public partial class ChartStart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable table = CreateDataTable();


            Chart1.ChartAreas[0].AxisX.Interval = 1;

           // Chart1.ChartAreas[0].AxisY.Interval = 4;
            //Chart1.DataSource = table;
            //Chart1.DataBind();
            //Chart1.Series[0].YValueMembers = "VolumeY";

            //Chart1.Series[0].XValueMember = "VolumeX";
            Chart1.ChartAreas[0].AxisX.Minimum = 1;
           // Chart1.Series[0].Points.AddXY(0, 0);
            Chart1.Series[0].Points.AddXY(12, 80);
            Chart1.Series[0].Points.AddXY(14, 70);
            Chart1.Series[0].Points.AddXY(18, 56);
            Chart1.Series[0].Points.AddXY(30, 25);
            Chart1.Series[0].Points.AddXY(35, 77);
            Chart1.Series[0].Points.AddXY(35, 70);
            Chart1.Series[0].Points.FirstOrDefault(p => p.XValue == 35&&p.YValues[0]==70).Color = System.Drawing.Color.DarkGray;

        }
        private DataTable CreateDataTable()

        {


            //DataTable dt = new DataTable(); dt.Columns.Add("VolumeY"); dt.Columns.Add("VolumeX");

            //DataRow dr;
            //for (int i = 1; i <= 69; i++)
            //{
            //    //create the first 69 points
            //    dr = dt.NewRow();
            //    dr["VolumeY"] = 0;
            //    dr["VolumeX"] = i;
            //    dt.Rows.Add(dr);
            //}



            //dr = dt.NewRow(); dr["VolumeY"] = 38; dr["VolumeX"] = 70; dt.Rows.Add(dr);
            //dr = dt.NewRow(); dr["VolumeY"] = 56; dr["VolumeX"] = 71; dt.Rows.Add(dr);
            //dr = dt.NewRow(); dr["VolumeY"] = 79; dr["VolumeX"] = 72; dt.Rows.Add(dr);
            //dr = dt.NewRow(); dr["VolumeY"] = 12; dr["VolumeX"] = 73; dt.Rows.Add(dr);
            //dr = dt.NewRow(); dr["VolumeY"] = 35; dr["VolumeX"] = 74; dt.Rows.Add(dr);
            //dr = dt.NewRow(); dr["VolumeY"] = 67; dr["VolumeX"] = 75; dt.Rows.Add(dr);

            return null;
            //return dt;

        }
    }
}