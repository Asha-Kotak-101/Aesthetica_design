<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Aesthetica_design.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Home
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <!-- Extra head content if needed -->
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Hero Section -->
    <section class="text-center mb-5">
        <%--<h2 class="fw-bold text-uppercase text-secondary">Professional</h2>
        <h1 class="display-5 fw-bold text-dark">Interior Design</h1>--%>
        <img src="Assets-1/Images/3.png" class="img-fluid rounded mt-4" alt="Interior Design Hero Image" />
    </section>

    <!-- Featured Designs -->
    <section class="row text-center mb-5">
        <div class="col-md-6 mb-4">
            <img src="Assets-1/Images/6.png" class="img-fluid rounded" alt="Modern Living Room" />
        </div>
        <div class="col-md-6 mb-4">
            <img src="Assets-1/Images/5.png" class="img-fluid rounded" alt="Classical Interior" />
        </div>
    </section>

    <!-- Services Section -->
    <section class="mb-5">
        <h2 class="text-center fw-bold mb-4">Services</h2>
        <p class="text-center mb-4">We offer a variety of tools and features to make your experience more enjoyable and efficient:</p>
        <div class="row g-4">
            <div class="col-md-4">
                <div class="p-3 border rounded shadow-sm h-100">
                    <h5>Interactive Blog Section</h5>
                    <p>Get tips, design ideas, and project advice from our blog to keep you inspired.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="p-3 border rounded shadow-sm h-100">
                    <h5>Style Selector</h5>
                    <p>Try different styles and find what suits your taste with our selector tool.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="p-3 border rounded shadow-sm h-100">
                    <h5>Budget Planner</h5>
                    <p>Plan and track expenses easily with our project-friendly budget planner.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="p-3 border rounded shadow-sm h-100">
                    <h5>Room Measurement Integration</h5>
                    <p>Input your room dimensions for better-fit design suggestions.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="p-3 border rounded shadow-sm h-100">
                    <h5>Live Chat</h5>
                    <p>Need help? Ask us instantly with our live support feature.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="p-3 border rounded shadow-sm h-100">
                    <h5>Careers</h5>
                    <p>Interested in joining? Explore job and internship openings now.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Newsletter -->
    <section class="bg-light p-4 rounded mt-5">
        <h3 class="text-center mb-3">Subscribe to Our Newsletter</h3>
        <p class="text-center mb-3">Stay updated with design tips and our latest blog posts.</p>
        <div class="row justify-content-center">
            <div class="col-md-6">
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control mb-2" placeholder="Enter your email" />
                <asp:Button ID="btnSubscribe" runat="server" CssClass="btn btn-dark w-100" Text="Subscribe" OnClick="btnSubscribe_Click" />
            </div>
        </div>
    </section>

</asp:Content>
