namespace MyWebFormCases.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class SupplyModel : DbContext
    {
        public SupplyModel()
            : base("name=SupplyModel")
        {
        }

        public virtual DbSet<Contact> Contacts { get; set; }
        public virtual DbSet<Supplier> Suppliers { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Supplier>()
                .HasMany(e => e.Contacts)
                .WithOptional(e => e.Supplier)
                .HasForeignKey(e => e.Supplier_SID);
        }
    }
}
