using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Video : System.Web.UI.Page
    {
        public string  FileName { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //get the posted file
            HttpPostedFile file = FileUpload1.PostedFile;

            // rename the file
            string name = "/File/" + Guid.NewGuid().ToString() + ".mp4";
            // save the file , you should call Server.MapPath method to get the absolute path of the file
            file.SaveAs(Server.MapPath( name));
            Label1.Text = name;


            //store the name and path in database
            string sql = "insert into Video (name,videopath) values(@name,@videoPath)";
            SqlParameter[] sqlParameters = new SqlParameter[] {
                new SqlParameter("@name",System.Data.SqlDbType.Char,50){Value=VideoName.Text},
                new SqlParameter("@videoPath",System.Data.SqlDbType.Char,100){Value=name}
            };
            string connstr = "data source=localhost;initial catalog=bjhksj;integrated security=True";
         
                using (SqlConnection con = new SqlConnection(connstr))
                {
                    using (SqlCommand com = new SqlCommand(sql, con))
                    {
                        
                        com.Parameters.AddRange(sqlParameters);
                        con.Open();
                        com.ExecuteNonQuery();
                    }
                }
            

        }
    }
}