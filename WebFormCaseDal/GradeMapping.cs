using FluentNHibernate.Mapping;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebFormCaseDal
{
    public class GradeMapping:ClassMap<Grade>
    {

        public GradeMapping()
        {
            //set id to automantically increment
            Id(g => g.Id);
            //set column mapping
            Map(g => g.Name);
            //set relationship ,because the relationship is one to many
            //so use the methed hasMany
            HasMany<Student>(g => g.Students);
        }
    }
}
