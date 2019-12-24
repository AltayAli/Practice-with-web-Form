<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MyWorks.aspx.cs" Inherits="Portfolio.MyWorks" %>
<%@ Import Namespace="System.IO" %>
<asp:Content ID="Mywork" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <form runat="server" action="ProjectDetail.aspx" >
         <main>
        <div class="container-fluid mb-5">
            <div class="row mb-5">
                <div class="AboutMe col-md-7 col-lg-6 col-12 text-center">
                    <h1 class="title">My <span class="additional-style text-center">Work</span></h1>
                    <p class="description">Check out some of my projects...</p>
                </div>
            </div>
            </div>
    </main>
         <section class="projects">
        <div class="container">
            <div class="row justify-content-between">
                 <div class="col-12"> 
                     <div class="row">
                         <%
                             using (Portfolio.Model.DatabaseContext db = new Portfolio.Model.DatabaseContext())
                             {
                                 var projects = db.Projects.ToList();
                                 int projectscount = projects.Count / 3 + 1;
                                 int loopCircle = (int)Math.Ceiling(Convert.ToDouble(projectscount));
                                 for (int i = 0; i < loopCircle; i++)
                                 {
                                     foreach (var item in projects.Skip(i * 3).Take(3).ToList()) {
                                         Response.Write("<div class=\"col-12 col-md-3 p-4\">" +
                                              "<div class=\"row mb-3\">" +
                                                  "<div class=\"col-12 project-main-img  p-0 overflow-hidden\">");

                                         var photo = db.ProjectImages.Where(x => x.ProjectID == item.ID).FirstOrDefault().Path;
                                         Response.Write($"<img src=\"{Path.Combine("/Image", photo)}\">" +
                                                         "<div class=\"project-img-overlay\"></div></div>" +
                                                            "</div>" +
                                                          "<div class=\"row goto-project pt-2 pb-2\">" +
                                                              "<div class=\"col-12\">");
                                         %>
                         
                         <%
                                     Response.Write("</div>" +
                                                     "</div>" +
                                                    "<div class=\"row goto-github pt-2 pb-2 mt-2\">" +
                                                    "<div class=\"col-12\">" +
                                                                 $"<a href=\"{item.GithubLink}\">GitHub</a>" +
                                                           "</div>" +
                                                       "</div>" +
                                                   "</div>");
                                 }
                             }
                         }
                            %>
                         </div>

            </div>
                </div>
        </div>
    </section>
    </form>
</asp:Content>
  