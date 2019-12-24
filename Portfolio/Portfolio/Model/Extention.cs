using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace Portfolio.Model
{
    public static class Extention
    {
        public static string SaveImage(this HttpPostedFile file,string folder)
        {
            string imageame = Guid.NewGuid().ToString().Replace("-", "") + Path.GetExtension(file.FileName);
            file.SaveAs(Path.Combine(folder, imageame));
            return imageame;
        }
    }
}