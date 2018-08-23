using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace WebApplication2
{
    public class Initial:DropCreateDatabaseIfModelChanges<Model1>
    {
        protected override void Seed(Model1 context)
        {
            Test[] suppliers = new Test[] { new Test{Name="xu"}
                                                    };

            context.Tests.AddRange(suppliers);
        }

    }
}