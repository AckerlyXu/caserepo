using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.DataBase
{
    public partial class InsertToAnotherDataBase : System.Web.UI.Page
    {
        private static string constrSql = ConfigurationManager.ConnectionStrings["EntityDb"].ConnectionString;
        private static string constrMySql = ConfigurationManager.ConnectionStrings["mySqlConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GetDataFromStagingDatabase("Customer");
        }

        private int GetDataFromStagingDatabase(string sRecord)
        {
            SqlConnection  con= new SqlConnection(constrSql);
            SqlCommand sqlCommand;
            SqlDataReader sqlDataReader;

            switch (sRecord)
            {
                case "Customer":
                    sqlCommand = new SqlCommand("select * from customer", con);
                    con.Open();
                    sqlDataReader = sqlCommand.ExecuteReader();
                    InsertCustomer(sqlDataReader);
                  
                    break;
                case "Receipt":
                    con.Open();
                    break;
                case "Order":
                    con.Open();
                    break;
            }

            return 0;
        }

        private int InsertCustomer(SqlDataReader sqlDataReader)
        {

            using (MySqlConnection conMysql = new MySqlConnection(constrMySql))  //open connection to another database
            {
                using (SqlConnection con = new SqlConnection(constrSql))  //open connection to original database
                {
                   
               
                using (MySqlCommand comMySQL = new MySqlCommand("insert into customer (name,age) values(@name,@age)", conMysql )) // initialize the commond to insert data to another database
                    {
                        con.Open(); //open con
                        using (SqlCommand com = new SqlCommand("update customer set flaginserted=9 where id=@id", con))  // prepare the commond to update  flaginserted field of original database
                        {
                          

                        conMysql.Open();  //open mysqlCon

                    while (sqlDataReader.Read())
                    {
                        if (sqlDataReader.IsDBNull(3))  // check whether the field flaginserted is null
                                {
                       
                            int id = sqlDataReader.GetInt32(0);  // get the id field
                            string name = sqlDataReader.GetString(1);  //get the name field
                            int age = sqlDataReader.GetInt32(2);  // get the age field
                            comMySQL.Parameters.AddWithValue("name", name);
                            comMySQL.Parameters.AddWithValue("age", age);
                            if (comMySQL.ExecuteNonQuery() == 1)  // check whether insert successfully
                            {
                                        com.Parameters.AddWithValue("id", id); // set the id parameter
                                       
                                        com.ExecuteNonQuery();
                                       
                                        com.Parameters.Clear();  // clear the parameter , it is necessary
                                      
                                    }
                           comMySQL.Parameters.Clear();  // clear the parameter , it is necessary
                                }
                       
                    }

                            
                        }  //sqlCom

                    }

                } // sqlCon
            }// mysqlCon
          

            return 0;
        }

    }
}