using FluentNHibernate.Mapping;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebFormCaseDal
{
   public  class StudentMapping:ClassMap<Student>
    {
        public StudentMapping()
        {
            Id(s => s.Id);
            // //set column mapping
            Map(s => s.Name);
            Map(s => s.Age);
            ////set relationship ,because the relationship is many to one
            //so use the methed references
            References(s => s.Grade);
        }
    }
}
