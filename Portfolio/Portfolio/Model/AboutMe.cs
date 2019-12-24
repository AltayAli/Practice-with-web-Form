using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Portfolio.Model
{
    public class AboutMe
    {
        public byte ID { get; set; }
        [Required]
        public string Image { get; set; }
        [Required]
        [StringLength(500,MinimumLength =3)]
        public string Description { get; set; }
        public string PhoneNumber { get; set; }
        public string Adress { get; set; }
        public string Email { get; set; }

    }
}