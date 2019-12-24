using Portfolio.Model;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web.ModelBinding;

namespace Portfolio
{
    public partial class AdminPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddContact(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Contact contact = new Contact();
                TryUpdateModel(contact, new FormValueProvider(ModelBindingExecutionContext));
                using(DatabaseContext db = new DatabaseContext())
                {
                        db.Contacts.Add(contact);
                        db.SaveChanges();
                    
                    
                }
            }
        }
        protected void AddAboutMe(object sender , EventArgs e)
        {
            var image = Request.Files.GetMultiple("ctl00$ContentPlaceHolder1$Image");
            using(DatabaseContext db = new DatabaseContext())
            {
                AboutMe aboutme = new AboutMe();
                aboutme.Description = Desc.Value;
                aboutme.Email = Email.Value;
                aboutme.Image = Image.PostedFile.SaveImage(Server.MapPath("~/Image"));
                aboutme.PhoneNumber = phone.Value;
                var about = db.AboutMes.FirstOrDefault();
                if (about == null)
                {
                    ValidationContext v = new ValidationContext(aboutme);
                    ICollection<ValidationResult> result = new List<ValidationResult>();
                    if (Validator.TryValidateObject(aboutme, v, result))
                    {
                        db.AboutMes.Add(aboutme);
                        db.SaveChanges();
                    }

                }
                else
                {
                    about = aboutme;
                    db.SaveChanges();
                }


            }
        }
        protected void AddProject(object sender, EventArgs e)
        {
            var image = Request.Files.GetMultiple("ctl00$ContentPlaceHolder1$ProjectImage");
            using (DatabaseContext db = new DatabaseContext())
            {
                Project project = new Project { Description=Desc.Value,GithubLink=link.Value,ProjectName=ProjectName.Value };
                

                ValidationContext v = new ValidationContext(project);
                ICollection<ValidationResult> result = new List<ValidationResult>();
                if (Validator.TryValidateObject(project, v, result))
                {
                    db.Projects.Add(project);
                    foreach(var item in image)
                    {
                       db.ProjectImages.Add(new ProjectImage { Path = item.SaveImage(Server.MapPath("~/Image")), ProjectID = project.ID });

                    }
                    db.SaveChanges();
                }

            }
        }
        protected void AddService(object sender, EventArgs e)
        {
            using (DatabaseContext db = new DatabaseContext())
            {
                db.Services.Add(new Service { Description = servDesc.Value, Icon = Icon.Value, Title = ServTitle.Value });
                db.SaveChanges();
            }
        }
    }
}