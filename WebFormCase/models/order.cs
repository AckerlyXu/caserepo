namespace WebFormCase.models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class order
    {
        [Key]
        public int order_id { get; set; }

        [StringLength(50)]
        public string P_name { get; set; }

        public bool? ostatus { get; set; }

        [StringLength(100)]
        public string ydd { get; set; }
    }
}
