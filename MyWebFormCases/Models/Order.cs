using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace MyWebFormCases.Models
{
    [Table("orders")]
    public class Order
    {
        [Key]
        public int order_id { get; set; }

        public string P_name { get; set; }
        public bool ostatus { get; set; }
        public string ydd { get; set; }
    }
}