namespace Portfolio.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class i : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.AboutMes",
                c => new
                    {
                        ID = c.Byte(nullable: false),
                        Image = c.String(nullable: false),
                        Description = c.String(nullable: false, maxLength: 500),
                    })
                .PrimaryKey(t => t.ID);
            
            CreateTable(
                "dbo.Contacts",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(nullable: false),
                        IconName = c.String(nullable: false),
                        Link = c.String(),
                        IsSocial = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.ProjectImages",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        Path = c.String(),
                        ProjectID = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.ID)
                .ForeignKey("dbo.Projects", t => t.ProjectID, cascadeDelete: true)
                .Index(t => t.ProjectID);
            
            CreateTable(
                "dbo.Projects",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        ProjectName = c.String(),
                        Description = c.String(),
                        GithubLink = c.String(),
                    })
                .PrimaryKey(t => t.ID);
            
            CreateTable(
                "dbo.Services",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        Title = c.String(),
                        Description = c.String(),
                    })
                .PrimaryKey(t => t.ID);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.ProjectImages", "ProjectID", "dbo.Projects");
            DropIndex("dbo.ProjectImages", new[] { "ProjectID" });
            DropTable("dbo.Services");
            DropTable("dbo.Projects");
            DropTable("dbo.ProjectImages");
            DropTable("dbo.Contacts");
            DropTable("dbo.AboutMes");
        }
    }
}
