using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Portfolio.Model
{
    public class Project
    {
        public Project()
        {
            Images = new List<ProjectImage>();
        }
        public int ID { get; set; }
        public string ProjectName { get; set; }
        public string Description { get; set; }
        public string GithubLink { get; set; }
        public ICollection<ProjectImage> Images { get; set; }
    }
}