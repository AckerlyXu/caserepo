using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebFormCaseDal
{
   public  class Grade
    {
        public virtual int  Id { get; set; }
        public virtual string Name  { get; set; }
        public virtual IList<Student> Students { get; set; }


        public Grade()
        {
            Students = new List<Student>();
        }
    }
}
