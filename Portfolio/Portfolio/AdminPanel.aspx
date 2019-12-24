<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="Portfolio.AdminPanel" %>


<asp:Content ID="adminpanel" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    
        <form runat="server">
    <section class="projects">
        <div class="container-fluid mb-5">
            <div class="row mb-5">
                <div class="AboutMe col-md-7 col-lg-6 col-12 text-center">
                    <h1 class="title">Add <span class="additional-style text-center">Conatct</span></h1>
                </div>
            </div>
        </div>
            <div class="container">
                <div class="row justify-content-between">
                    <div class="col-12 input-group mb-3">
                        <input type="text" class="form-control" placeholder="Contact" aria-label="Username"
                            aria-describedby="basic-addon1" name="Name">
                    </div>
                    <div class="col-12 input-group mb-3">
                        <input type="text" class="form-control" placeholder="Icon" aria-label="Username"
                            aria-describedby="basic-addon1" name="IconName">
                    </div>
                     <div class="col-12 input-group mb-3">
                        <input type="text" class="form-control" placeholder="Link" aria-label="Username"
                            aria-describedby="basic-addon1" name="Link">
                    </div>
                    <div class="col-12 d-flex justify-content-center">
                        <asp:Button ID="Button1" CssClass="btn btn-outline-warning pl-5 pr-5" runat="server" Text="Add" OnClick="AddContact"/>
                       <%-- <input type="submit" class="btn btn-outline-warning pl-5 pr-5" value="Add"  onserverclick="AddContact">--%>
                    </div>
                </div>
            </div>
    </section>
    <section>
        <div class="container mb-5">
            <div class="row mb-5">
                <div class="AboutMe col-12 col-lg-6">
                    <h1 class="title">Add about <span class="additional-style text-center">yourself</span></h1>
                </div>
            </div>
        </div>
            <div class="container">
                <div class="row justify-content-between">
                    <div class="col-12 input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="inputGroupFileAddon01">Upload</span>
                        </div>
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" id="Image" name="Image"
                                aria-describedby="inputGroupFileAddon0" runat="server" >
                            <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
                        </div>
                    </div>
                     <div class="col-12 input-group mb-3">
                        <input type="text" class="form-control" placeholder="Phone number" aria-label="Username"
                            aria-describedby="basic-addon1" name="PhoneNumber" id="phone"  runat="server"  >
                    </div>
                    <div class="col-12 input-group mb-3">
                        <input type="text" class="form-control" placeholder="Email" aria-label="Username"
                            aria-describedby="basic-addon1" name="Email" id="Email"  runat="server"  >
                    </div>
                    <div class="col-12 input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Description</span>
                        </div>
                        <textarea class="form-control" aria-label="With textarea"  id="Desc"  runat="server" ></textarea>
                    </div>

                    <div class="col-12 d-flex justify-content-center mt-5 mb-5">
                        <asp:Button ID="Button2" CssClass="btn btn-outline-warning pl-5 pr-5" runat="server" Text="Add" OnClick="AddAboutMe"/>
                     </div>
                </div>
            </div>
       
    </section>
   <section>
        <div class="container mb-5">
            <div class="row mb-5">
                <div class="AboutMe col-12 col-lg-6">
                    <h1 class="title">Add <span class="additional-style text-center">project</span></h1>
                </div>
            </div>
        </div>
            <div class="container">
                <div class="row justify-content-between">
                    <div class="col-12 input-group mb-3">
                        <input type="text" class="form-control" placeholder="Project name" aria-label="Username"
                            aria-describedby="basic-addon1" id="ProjectName" runat="server">
                    </div>
                    <div class="col-12 input-group mb-3">
                        <input type="text" class="form-control" placeholder="Github link" aria-label="Username"
                            aria-describedby="basic-addon1" id="link" runat="server">
                    </div>
                    <div class="col-12 input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Description</span>
                        </div>
                        <textarea class="form-control" aria-label="With textarea" id="projectDesc" runat="server"></textarea>
                    </div>
                    <div class="col-12 input-group mb-3 mt-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" >Upload</span>
                        </div>
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" id="ProjectImage"
                                aria-describedby="inputGroupFileAddon01" name="ProjectImage"  multiple runat="server">
                            <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
                        </div>
                    </div>

                    <div class="col-12 d-flex justify-content-center mt-5 mb-5">
                         <asp:Button ID="Button3" CssClass="btn btn-outline-warning pl-5 pr-5" runat="server" Text="Add" OnClick="AddProject"/>
                    
                    </div>
                </div>
            </div>
    </section>
     <section>
        <div class="container mb-5">
            <div class="row mb-5">
                <div class="AboutMe col-12 col-lg-6">
                    <h1 class="title">Add <span class="additional-style text-center">service</span></h1>
                </div>
            </div>
        </div>
            <div class="container">
                <div class="row justify-content-between">
                    <div class="col-12 input-group mb-3">
                        <input type="text" class="form-control" placeholder="Title" aria-label="Username"
                            aria-describedby="basic-addon1" id="ServTitle" runat="server">
                    </div>
                     <div class="col-12 input-group mb-3">
                        <input type="text" class="form-control" placeholder="Icon" aria-label="Username"
                            aria-describedby="basic-addon1" id="Icon" runat="server">
                    </div>
                    <div class="col-12 input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Description</span>
                        </div>
                        <textarea class="form-control" aria-label="With textarea" id="servDesc" runat="server"></textarea>
                    </div>


                    <div class="col-12 d-flex justify-content-center mt-5 mb-5">
                        <asp:Button ID="Button4" CssClass="btn btn-outline-warning pl-5 pr-5" runat="server" Text="Add" OnClick="AddService"/>
                    

                    </div>
                </div>
            </div>
    </section>
            </form>
</asp:Content>
