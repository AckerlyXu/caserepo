namespace MyWebFormCases.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("MyUserItem")]
    public partial class MyUserItem
    {
        [Key]
        public int UserItemId { get; set; }

        public int UserId { get; set; }

        [StringLength(50)]
        public string Initials { get; set; }

        public int? ItemId { get; set; }

        public int? ItemTyped { get; set; }
    }
}
