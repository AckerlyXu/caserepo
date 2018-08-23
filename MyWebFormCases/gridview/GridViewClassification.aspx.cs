using MyWebFormCases.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFormCases.Models;

namespace MyWebFormCases.gridview
{
    public partial class GridViewClassification : System.Web.UI.Page
    {
        
        private string constr = ConfigurationManager.ConnectionStrings["WebFormCases.Models.supplyModelConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //create a list to store data
            List<Fruit> fruits = new List<Fruit>();

            //get the original data

            List<Fruit> originData = GetData()[0];
            //create the first data , make its BelognsTo the itemName of the fist row of original data to record the itemName
            Fruit fruit = new Fruit
            {
                BelongsTo = originData[0].ItemName
            };
           
            //add the data to the list
            fruits.Add(fruit);

            // group the original data by its itemName

            List<Fruit> groupedData = GetData()[1];
           
            //loop through the original data
            for (int i=0;i<originData.Count;i++)
            {
                if (originData[i].ItemName != fruit.BelongsTo)
              
                {
                    // if item.ItemName doesn't equal to recorded itemName
                    // it indicates a new group should be started
                    //so you should get the corresponding  grouped data from the variable query
                    // through  f.itemName == fruit.BelongsTo
                    for (int j = 0; j < groupedData.Count; j++)
                    {
                        if (groupedData[j].ItemName == fruit.BelongsTo)
                        {
                            Fruit tFruit = new Fruit { BelongsTo = "Total", Qunatity = groupedData[j].Qunatity };
                            fruits.Add(tFruit);
                        }
                    }
                  
                   

                    //add itemName to the start of the group
                    fruit = new Fruit
                    {
                        BelongsTo = originData[i].ItemName
                    };
                   
                    fruits.Add(fruit);
                  
                }
                //add the original data to the list 
                fruits.Add(originData[i]);

                
            }
            // add the last aggregate data
            
             for (int j = 0; j < groupedData.Count; j++)
                    {
                        if (groupedData[j].ItemName == originData[(originData.Count - 1)].ItemName)
                        {
                            Fruit last = new Fruit { BelongsTo = "Total", Qunatity = groupedData[j].Qunatity };
                            fruits.Add(last);
                        }
                    }
              
            //bind data
            GridView1.DataSource =fruits;
            GridView1.DataBind();
        }


        public SqlDataReader GetDataReader(string sql)
        {
            SqlConnection con = new SqlConnection(constr);
            using (SqlCommand com = new SqlCommand(sql, con))
            {
                try
                {
                   
                    con.Open();
                    
                    return com.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
                }
                catch (Exception)
                {
                    con.Close();
                    con.Dispose();

                    throw;
                }

            }
        }
        public List<List<Fruit>> GetData()
        {
            string sql = "select ItemName,BelongsTo,Qunatity from fruits;select itemName, sum(qunatity) from fruits group by itemName";
            List<List<Fruit>> list = new List<List<Fruit>>();
            List<Fruit> originalfruits = new List<Fruit>();
            List<Fruit> groupedFruits = new List<Fruit>();
            //add originalfruits and groupedFruits to the list
            list.Add(originalfruits);
            list.Add(groupedFruits);
            using (SqlDataReader reader = GetDataReader(sql))
            {
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        Fruit fruit = new Fruit();
                        fruit.BelongsTo = reader.GetString(1);
                        fruit.ItemName = reader.GetString(0);
                        fruit.Qunatity = reader.GetInt32(2);
                        originalfruits.Add(fruit);
                    }
                   

                }
                //get the second datasource
               if(reader.NextResult())
                {
                    while (reader.Read())
                    {
                        Fruit fruit = new Fruit();
                        fruit.BelongsTo = "Total";
                        fruit.ItemName = reader.GetString(0);
                        fruit.Qunatity = reader.GetInt32(1);
                        groupedFruits.Add(fruit);
                    }

                }
                return list;
            }

        }
        
            protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {

                Fruit drv = e.Row.DataItem as Fruit;
                // make apple and monge thicker
                if (drv.Qunatity==null)
                {
                    e.Row.Cells[0].Font.Bold = true;
                  
                    //make the second cell invisible
                    e.Row.Cells[1].Visible = false;
                  
                }
                if (drv.BelongsTo == "Total")
                {
                    //make  aggregate data thicker
                    e.Row.Cells[0].Font.Bold = true;
                    e.Row.Cells[1].Font.Bold = true;
                }
              
            }
        }
    }
}