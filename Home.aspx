<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Aesthetica_design.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">

    <style>
 .newsletter {
    background-color: #f8f8f8;
    padding: 50px 30px;
    margin-top: 60px;
    text-align: center;
}

.newsletter h3 {
    font-weight: 600;
}

.newsletter input[type="email"] {
    padding: 10px;
    width: 300px;
    max-width: 90%;
    margin-right: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}
.newsletter button {
    padding: 10px 20px;
    border: none;
    background-color: black;
    color: white;
    border-radius: 5px;
    cursor: pointer;
}

.newsletter button:hover {
    background-color: #333;
}
        .product-grid,
        .article-grid {
         display: grid;
         grid-template-columns: repeat(3, 1fr); /* 3 cards per row */
        gap: 30px;
        justify-content: center;
}
    </style>
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
<section class="newsletter">
<h3>Subscribe to Our Newsletter</h3>
<p>Stay updated with our latest blog posts and design tips.</p>
<form>
    <input type="email" placeholder="Enter your email" required />
    <button type="submit">Subscribe</button>
</form>

</asp:Content>
