namespace WebFormCase.models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class supplyModel : DbContext
    {
        public supplyModel()
            : base("name=supplyModel")
        {
        }

        public virtual DbSet<order> orders { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<order>()
                .Property(e => e.P_name)
                .IsFixedLength();

            modelBuilder.Entity<order>()
                .Property(e => e.ydd)
                .IsFixedLength();
        }
    }
}
