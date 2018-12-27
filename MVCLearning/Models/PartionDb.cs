namespace MVCLearning.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class PartionDb : DbContext
    {
        public PartionDb()
            : base("name=PartionDb")
        {
        }

        public virtual DbSet<pation> pations { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }
    }
}
