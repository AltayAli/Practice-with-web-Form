using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Portfolio.Model
{
    public class DatabaseContext:DbContext
    {
        public DatabaseContext() : base("mydb") { }

        public DbSet<AboutMe> AboutMes { get; set; }
        public DbSet<Contact> Contacts { get; set; }
        public DbSet<Service> Services { get; set; }
        public DbSet<Project> Projects { get; set; }
        public DbSet<ProjectImage> ProjectImages { get; set; }
    }
}