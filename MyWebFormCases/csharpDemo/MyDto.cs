using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyWebFormCases.csharpDemo
{
    public class MyDto
    {
        [NeedCheck(true)]
        public string Prop1 { get; set; }
        [NeedCheck(false)]
        public int? Prop2 { get; set; }
        [NeedCheck(true)]
        public bool? Prop3 { get; set; }
        [NeedCheck(false)]
        public Guid Prop4 { get; set; }
    }
}