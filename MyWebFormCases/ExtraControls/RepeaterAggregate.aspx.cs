using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebFormCases.ExtraControls
{
    public partial class RepeaterAggregate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack){

                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["WebFormCases.Models.supplyModelConnectionString"].ConnectionString))
                {
                    using (SqlCommand com = new SqlCommand("select distinct Department from DummyTable order by Department;select * from DummyTable order by Batch_No,Department", con))
                    {

                        con.Open();

                        List<string> departments = new List<string>();

                   

                        List<Batch> list = new List<Batch>();
                        using (SqlDataReader reader = com.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                while (reader.Read())
                                {
                                    departments.Add(reader.GetString(0));
                                }


                                reader.NextResult();
                                //declare a variable to save the current BatchNo
                                // to decide whether to create a new Batch
                                string BatchNo = null;


                                // declare a variable to store the total qty
                                Double totalQty = 0;
                                // declare a variable to store the total value
                                Double totalValue = 0;

                                //declare a variable to save the current Batch
                                Batch batch = null;
                                while (reader.Read())
                                {
                                    totalQty += reader.GetDouble(4);
                                    totalValue += reader.GetDouble(5);

                                    if (BatchNo == null)
                                    {
                                        // set the Batch property
                                        batch = new Batch();
                                        batch.BatchNo = reader.GetString(1);
                                        BatchNo = batch.BatchNo;

                                        batch.Total_Qty = reader.GetDouble(2);
                                        if (reader.GetString(3) == departments[0])
                                        {
                                            batch.Dep1Qty = reader.GetDouble(4);
                                            batch.Dep1Value = reader.GetDouble(5);
                                        }
                                        if (reader.GetString(3) == departments[1])
                                        {
                                            batch.Dep2Qty = reader.GetDouble(4);
                                            batch.Dep2Value = reader.GetDouble(5);
                                        }
                                    }
                                    if (BatchNo != null && BatchNo != reader.GetString(1))
                                    {
                                        //create a new batch and add the old batch to the list
                                        batch.TotalQty = batch.Dep1Qty + batch.Dep2Qty;
                                        batch.TotalValue = batch.Dep1Value + batch.Dep2Value;
                                        list.Add(batch);
                                        batch = new Batch();
                                        batch.BatchNo = reader.GetString(1);
                                        BatchNo = batch.BatchNo;
                                        batch.Total_Qty = reader.GetDouble(2);
                                        if (reader.GetString(3) == departments[0])
                                        {
                                            batch.Dep1Qty = reader.GetDouble(4);
                                            batch.Dep1Value = reader.GetDouble(5);
                                        }
                                        if (reader.GetString(3) == departments[1])
                                        {
                                            batch.Dep2Qty = reader.GetDouble(4);
                                            batch.Dep2Value = reader.GetDouble(5);
                                        }

                                    }
                                    if (BatchNo != null && BatchNo == reader.GetString(1))
                                    {

                                        // only set the property of the batch
                                        batch.Total_Qty = reader.GetDouble(2);
                                        if (reader.GetString(3) == departments[0])
                                        {
                                            batch.Dep1Qty = reader.GetDouble(4);
                                            batch.Dep1Value = reader.GetDouble(5);
                                        }
                                        if (reader.GetString(3) == departments[1])
                                        {
                                            batch.Dep2Qty = reader.GetDouble(4);
                                            batch.Dep2Value = reader.GetDouble(5);
                                        }

                                    }

                                }

                                //add the last batch
                                batch.TotalQty = batch.Dep1Qty + batch.Dep2Qty;
                                batch.TotalValue = batch.Dep1Value + batch.Dep2Value;
                                list.Add(batch);


                                Repeater1.DataSource = list;
                                Repeater1.DataBind();


                                //get the footer of the reperter
                                Control footerControl = Repeater1.Controls[1 + list.Count];

                                // set the totalqty and total value
                                Literal literal = footerControl.FindControl("TotalQTY") as Literal;
                                literal.Text = totalQty.ToString();
                                literal = footerControl.FindControl("TotalValue") as Literal;
                                literal.Text = totalValue.ToString();



                            }



                        }
                    }

                }

            }

        }
        //define a model
        public class Batch
        {
            private string _BatchNo;
            public string BatchNo {
                get
                {
                    return _BatchNo;
                }
                set
                {
                    _BatchNo= value  ;
                }
            }

            private Double _Total_Qty;

            public  Double Total_Qty
            {
                get
                {
                    return _Total_Qty;
                }
                set
                {
                    _Total_Qty = value;
                }
            }

            private Double _Dep1Qty;
            public Double Dep1Qty
            {
                get
                {
                    return _Dep1Qty;
                }
                set
                {
                    _Dep1Qty = value;
                }
            }
            private Double _Dep1Value;
            public Double Dep1Value
            {
                get
                {
                    return _Dep1Value;
                }
                set
                {
                    _Dep1Value = value;
                }
            }

            private Double _Dep2Qty;
            public Double Dep2Qty
            {
                get
                {
                    return _Dep2Qty;
                }
                set
                {
                    _Dep2Qty = value;
                }
            }
     
           

            private Double _Dep2Value;
            public Double Dep2Value
            {
                get
                {
                    return _Dep2Value;
                }
                set
                {
                    _Dep2Value = value;
                }
            }

            private Double _TotalQty;
            public Double TotalQty
            {
                get
                {
                    return _TotalQty;
                }
                set
                {
                    _TotalQty = value;
                }
            }

            private Double _TotalValue;
            public Double TotalValue
            {
                get
                {
                    return _TotalValue;
                }
                set
                {
                    _TotalValue = value;
                }
            }

        }
    }
}