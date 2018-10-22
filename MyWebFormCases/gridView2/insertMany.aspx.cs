using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.gridView2
{
    public partial class insertMany : System.Web.UI.Page
    {
     private static   String strConnString = ConfigurationManager.ConnectionStrings["EntityDb"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDummyDataToGrid();
            }

        }
         private void BindDummyDataToGrid()
        {
            using (SqlDataAdapter adapter = new SqlDataAdapter("select * from orderdetail", strConnString))
            {

                
                DataTable table = new DataTable();
                adapter.Fill(table);
                GridView1.DataSource = table;
                GridView1.DataBind();
            }
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection(strConnString);

            foreach (GridViewRow row in GridView1.Rows)
            {
                string a = ((Label)row.FindControl("LblDescription")).Text;
                string b = ((Label)row.FindControl("LBLPrice")).Text;
                string c = ((TextBox)row.FindControl("TXTQty")).Text;
                string d = ((Label)row.FindControl("LBLSubTotal")).Text;

                SqlCommand cmd121 = new SqlCommand("INSERT INTO OrderDetail ( Description,Price,Qty,Total ) values ( @Description,@Price,@Qty,@Total )", con);

                cmd121.Parameters.Add(new SqlParameter("@Description", a));
                cmd121.Parameters.Add(new SqlParameter("@Price", 2));
                cmd121.Parameters.Add(new SqlParameter("@Qty", c));
                cmd121.Parameters.Add(new SqlParameter("@Total", d));

                if (c == "0")
                {
                    Response.Write("<script> alert(' Quantity Zero ...! ');window.location.href='Test2.aspx';</script>");
                }
                else
                {
                    con.Open();
                    cmd121.ExecuteNonQuery();
                    con.Close();
                }



            }

            Response.Write("<script> alert(' Order Saved Successfully ...! ');window.location.href='Test2.aspx';</script>");

        }
    }
}