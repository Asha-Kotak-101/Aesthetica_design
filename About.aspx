<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Aesthetica_design.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .about-section {
            padding: 60px 0;
        }

        .about-section h2 {
            font-weight: bold;
        }

        .team-section {
            background-color: #f8f9fa;
            padding: 60px 0;
            text-align: center;
        }

        .team-member {
            border: 1px solid #ddd;
            border-radius: 6px;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0,0,0,0.05);
        }

        .team-member img {
            width: 100px;
            height: 100px;
            object-fit: cover;
            border-radius: 50%;
            margin-bottom: 15px;
        }

        .newsletter {
            padding: 60px 0;
        }

        .newsletter input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .newsletter button {
            margin-top: 10px;
            padding: 10px 20px;
            border: none;
            background-color: #000;
            color: white;
            border-radius: 4px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- About Section -->
    <section class="about-section container">
        <div class="row align-items-center">
            <div class="col-md-6 mb-4">
                <img src="Assets-1/Images/about.png" alt="About Us" class="img-fluid rounded shadow" />
            </div>
            <div class="col-md-6">
                <h2>About Us</h2>
                <p>
                    At Aesthetica, we go beyond aesthetics. Our platform offers an interactive blog section filled with expert tips on the latest trends, a style selector to match designs with your preferences, and a budget planner to keep your project on track. With our dynamic quotation generator and room measurement integration, you get accurate estimates and a hassle-free experience.
                </p>
            </div>
        </div>
    </section>

    <!-- Meet the Team Section -->
    <section class="team-section">
        <div class="container">
            <h3 class="mb-2 fw-bold">Meet Our Team</h3>
            <p class="text-muted mb-5">Dedicated to Design Excellence</p>
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="team-member">
                        <img src="Assets-1/Images/img3.png" alt="Architect" />
                        <h5 class="mt-2">Architect</h5>
                        <p>We believe in collaboration, creativity, and client satisfaction, making us the perfect choice for your next design endeavor.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="team-member">
                        <img src="Assets-1/Images/img2.png" alt="Developer" />
                        <h5 class="mt-2">Developer</h5>
                        <p>Innovative, passionate, and attention to detail are the cornerstones of our team’s success, allowing us to create powerful applications and deliver seamless designs.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="team-member">
                        <img src="Assets-1/Images/img1.png" alt="Project Manager" />
                        <h5 class="mt-2">Project Manager</h5>
                        <p>Describe the team member here. Write a brief description of their role and accomplishments, or share a short bio with a background summary.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Newsletter Section -->
    <section class="newsletter container">
        <div class="row justify-content-center">
            <div class="col-md-6 text-center">
                <h4 class="fw-bold">Subscribe to Our Newsletter</h4>
                <p class="text-muted">Stay updated with our latest blog posts and design tips.</p>
                <form>
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email" placeholder="Enter your email" />
                    <button type="submit" class="btn btn-dark">Subscribe</button>
                </form>
            </div>
        </div>
    </section>
</asp:Content>