using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace test_5_class
{
    public class newclassy
    {
        public string class_time { get; set; }

        public string DoSomething()
        {
            DateTime localDate = DateTime.Now;
            return string.Format("newclassy: {0}", localDate.ToString());

        }

    }
}