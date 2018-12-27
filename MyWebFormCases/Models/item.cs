namespace MyWebFormCases.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class item
    {
        [Key]
        public int item_id { get; set; }

        [Required]
        [StringLength(100)]
        public string item_name { get; set; }

        [StringLength(1000)]
        public string content { get; set; }
    }
}
