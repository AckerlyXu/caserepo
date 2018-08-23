namespace WebFormIdentity.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class first1 : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.AspNetUsers", "supplierId", c => c.Int(nullable: false));
            AddColumn("dbo.AspNetUsers", "supplierName", c => c.String());
            AddColumn("dbo.AspNetUsers", "firstLogin", c => c.String());
            AddColumn("dbo.AspNetUsers", "WebStatus", c => c.String());
            AddColumn("dbo.AspNetUsers", "LastLogDateTime", c => c.DateTime(nullable: false, precision: 7, storeType: "datetime2"));
        }
        
        public override void Down()
        {
            DropColumn("dbo.AspNetUsers", "LastLogDateTime");
            DropColumn("dbo.AspNetUsers", "WebStatus");
            DropColumn("dbo.AspNetUsers", "firstLogin");
            DropColumn("dbo.AspNetUsers", "supplierName");
            DropColumn("dbo.AspNetUsers", "supplierId");
        }
    }
}
