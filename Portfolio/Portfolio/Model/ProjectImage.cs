using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Portfolio.Model
{
    public class ProjectImage
    {
        public int ID { get; set; }
        public string Path { get; set; }
        public Project Project { get; set; }
        public int ProjectID { get; set; }
    }
}