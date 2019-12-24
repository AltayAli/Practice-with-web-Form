<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="ReachWithMe.aspx.cs" Inherits="Portfolio.ReachWithMe" %>

<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="Portfolio.Model" %>
<asp:Content ID="reachwithme" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
     <main>
        <div class="container-fluid mb-5">
            <div class="row mb-5">
                <div class="AboutMe col-md-7 col-lg-6 col-12 text-center">
                    <h1 class="title">Contact <span class="additional-style text-center">Me</span></h1>
                    <p class="description">This is how you can reach me...</p>
                </div>
            </div>
    </main>
     <section class="contacts">
        <div class="container-fluid">
           <div class="row  justify-content-around mb-5">
               <%
                   using(DatabaseContext db = new DatabaseContext())
                   {
                       List<Model> model = new List<Model>();
                       var aboutMain = db.AboutMes.FirstOrDefault();
                       model.Add(new Model { Key = "Email", Value = aboutMain.Email });
                       model.Add(new Model { Key = "Phone", Value = aboutMain.PhoneNumber });
                       model.Add(new Model { Key = "Adress", Value = aboutMain.Adress });


                       foreach(var item in model)
                       {
                           Response.Write($"<div class=\"col-12 col-md-4 contact \">" +
                                                    $"<p><span class=\"additional-style mb-5 ml-3 \">{item.Key} : </span>  {item.Value}</p>" +
                                         "</div>");
                       }
                   }
                   %>
           </div>
        </div>
    </section>

</asp:Content>