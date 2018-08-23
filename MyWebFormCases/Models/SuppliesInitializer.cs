using MyWebFormCases.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace WebFormCases.Models
{
    public class SuppliesInitializer: DropCreateDatabaseIfModelChanges<SupplyModel>
    {
        protected override void Seed(SupplyModel context)
        {
            Supplier[] suppliers = new Supplier[] { new Supplier { Name = "supplier1", City = "Lodon" },
                                                    new Supplier{ Name="supplier2",City="Tokyo"} ,
                                                      new Supplier{Name="supplier3",City="Bend" },
                                                         new Supplier{Name="supplier4",City="Pairs" },
                                                        new Supplier{Name="supplier5",City="Boston" } };

            context.Suppliers.AddRange(suppliers);
        }
    }
}