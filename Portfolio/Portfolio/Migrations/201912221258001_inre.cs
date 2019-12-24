namespace Portfolio.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class inre : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Services", "Icon", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.Services", "Icon");
        }
    }
}
