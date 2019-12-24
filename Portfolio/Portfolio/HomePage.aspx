<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Portfolio.HomePage" %>
<%@ Import Namespace="System.IO" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="//cdn.materialdesignicons.com/4.7.95/css/materialdesignicons.min.css">
    <link href="../Content/style.css" rel="stylesheet" />
</head>
<body  class=" h-100 w-100 d-flex align-items-center p-0 m-0 " id="home">
    <form id="form1" runat="server">
        <nav class="overlay">
            <i class="mdi mdi-menu menu-icon"></i>
            <div class="container-fluid menu-part  h-100 m-0 p-0">
                <div class="row h-100 p-0 m-0 overflow-hidden">
                    <div class="col-md-6 col-12 menu-left-part  ">
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
                    <div class="col-md-6 col-12 menu-right-part ">
                        <ul class="navigation">
                             <li><a href="HomePage.aspx">Home</a></li>
                        <li><a href="AboutMePage.aspx">About Me</a></li>
                        <li><a href="MyWorks.aspx">My Works</a></li>
                        <li><a href="ContactWithMe.aspx">How To Reach Me</a></li>
                        </ul>
                    </div>
                </div>
            </div>

        </nav>
        <div class="AboutMe">
            <h1 class="title">Altay <span class="additional-style">Ali</span></h1>
            <p class="description">Web developer</p>
            <ul>
                <%
                    using(Portfolio.Model.DatabaseContext db = new Portfolio.Model.DatabaseContext())
                    {
                        List<Portfolio.Model.Contact> a= db.Contacts.ToList();
                        foreach(var item in a)
                        {
                        Response.Write($" <li><a href=\"{item.Link}\"><i class=\"mdi mdi-{item.IconName}\"></i></a></li>");
                        }
                    }

                    %>
               
            </ul>
        </div>
    </form>
    <script src="../Scripts/jquery-3.4.1.slim.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/menu-button.js"></script>
</body>
</html>
