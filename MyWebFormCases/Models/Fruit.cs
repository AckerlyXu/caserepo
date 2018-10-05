namespace MyWebFormCases.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Fruit
    {
        [StringLength(50)]
        public string ItemName { get; set; }

        [StringLength(50)]
        public string BelongsTo { get; set; }

        public int Qunatity { get; set; }

        [Key]
        public int itemid { get; set; }
    }
}
