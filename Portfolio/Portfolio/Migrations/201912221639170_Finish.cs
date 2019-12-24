namespace Portfolio.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Finish : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.AboutMes", "Email", c => c.String());
            DropColumn("dbo.Contacts", "IsSocial");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Contacts", "IsSocial", c => c.Boolean(nullable: false));
            DropColumn("dbo.AboutMes", "Email");
        }
    }
}
