namespace Portfolio.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class ini : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.AboutMes", "PhoneNumber", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.AboutMes", "PhoneNumber");
        }
    }
}
