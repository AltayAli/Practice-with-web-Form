<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="AboutMePage.aspx.cs" Inherits="Portfolio.AboutMePage" %>
<%@ Import Namespace="System.IO" %>
<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <main>
        <div class="container-fluid mb-5">
            <div class="row mb-5">
                <div class="AboutMe col-md-7 col-lg-6 col-12 text-center">
                    <h1 class="title">About <span class="additional-style text-center">Me</span></h1>
                    <p class="description">Let me tell you a few things...</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-12 d-flex justify-content-center align-items-center">
                    <div class="main-img">
                          <%
                            using(Portfolio.Model.DatabaseContext db = new Portfolio.Model.DatabaseContext())
                            {
                                var item = db.AboutMes.FirstOrDefault();
                                if(item!=null)
                                Response.Write($"<img src=\"{Path.Combine("Image",item.Image)}\" alt=\"\">");
                            }
                            %>
                        <div class="img-overlay"></div>
                    </div>
                </div>
                <div class="col-md-6 col-12 ">
                    <div class="bio">
                        <h2 class="title"><span class="additional-style">BIO</span></h2>
                        <%
                            using(Portfolio.Model.DatabaseContext db = new Portfolio.Model.DatabaseContext())
                            {
                                var item = db.AboutMes.FirstOrDefault();
                                if(item!=null)
                                Response.Write($"<p class=\"description\">{item.Description}</p>");
                            }
                            %>
                        <p class="description"></p>

                    </div>
                </div>
            </div>
    </main>
    <section class="services">
        <div class="container">
            <div class="row justify-content-between">
                
                    <%
                        using(Portfolio.Model.DatabaseContext db = new Portfolio.Model.DatabaseContext())
                        {
                            var services = db.Services.ToList();
                            int servicescount = services.Count / 3+1;
                            int loopCircle = (int)Math.Ceiling(Convert.ToDouble(servicescount));
                            for(int i = 0; i<loopCircle;i++)
                            {
                                foreach(var item in services.Skip(i*3).Take(3).ToList())
                                {Response.Write($" <div class=\"col-12 col-md-3 p-3\">");
                                    Response.Write($" <div class=\"service row\">" +
                                        $"<div class=\"col-2 m-auto\"><i class=\"mdi mdi-{item.Icon}\"></i></div>" +
                                                                "<div class=\"col-12 m-auto\">" +
                                                                    $" <p class=\"my-service  text-center\">{item.Title}</p>" +
                                                                  "</div>" +
                                                                   "<div class=\"col-12 pt-3 pb-3\">" +
                                                                       $"<p class=\"my-service-desc\">{item.Description}</p>" +
                                                                  "</div></div>");
                                    
                                Response.Write("</div>");
                                }
                            }

                        }
                            %>
                   
                </div>
            </div>
        </div>
    </section>
</asp:Content>
