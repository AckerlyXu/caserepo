using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.gridview
{
    public partial class UploadFile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileStream fs = new System.IO.FileStream(Server.MapPath("/images/WingtipToys/carearly.png"), FileMode.Open, FileAccess.Read);
            BinaryReader br = new BinaryReader(fs);
            byte[] photo;
            try
            {
                photo = br.ReadBytes((int)fs.Length);

                string sql = "update categories set image=@image where categoryid=6";
                SqlParameter sqlParameter = new SqlParameter("image", System.Data.SqlDbType.VarBinary) { Value = photo };

                ExcuteNunQuery(sql, sqlParameter);
            }
            finally
            {
                br.Close();
                fs.Close();
            }
        }
           private static string constr = ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString;

        public static int ExcuteNunQuery(string sql, params SqlParameter[] sqlParameters)
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand com = new SqlCommand(sql, con))
                {
                    com.Parameters.AddRange(sqlParameters);
                    con.Open();
                    return com.ExecuteNonQuery();
                }
            }
        }
    }
      
    
}