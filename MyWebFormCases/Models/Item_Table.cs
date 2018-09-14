namespace MyWebFormCases.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Item_Table
    {
        public int ID { get; set; }

        [StringLength(250)]
        public string Item_Name { get; set; }

        [StringLength(50)]
        public string Unit { get; set; }

        public double? Qty { get; set; }

        public double? Rate { get; set; }
    }
}
