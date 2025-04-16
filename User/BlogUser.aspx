<%@ Page Title="Blog" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="BlogUser.aspx.cs" Inherits="Aesthetica_design.User.BlogUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .container {
            padding: 40px;
            max-width: 1200px;
            margin: auto;
        }

        .blog-title {
            font-size: 28px;
            margin-bottom: 20px;
            color: #1a1a1a;
            text-align: center; /* Center the title */
        }

        /* Featured Blog Section */
        .featured-blog {
            position: relative;
            overflow: hidden;
            border-radius: 8px;
            margin-bottom: 40px; /* Add some space below */
        }

        .featured-blog img {
            width: 100%;
            display: block;
            transition: opacity 0.3s ease;
            height: auto; /* Maintain aspect ratio */
            max-height: 400px; /* Optional: limit height */
            object-fit: cover; /* Cover the container */
        }

        .featured-blog .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.6); /* Semi-transparent black overlay */
            color: white;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            opacity: 0;
            transition: opacity 0.3s ease;
        }

        .featured-blog:hover img {
            opacity: 0.7;
        }

        .featured-blog:hover .overlay {
            opacity: 1;
        }

        .featured-blog .overlay strong,
        .featured-blog .overlay span {
            text-align: center;
            margin: 5px 15px; /* Add some horizontal padding */
            font-size: 1.2em;
            line-height: 1.4;
        }

        .featured-blog .overlay strong {
            font-size: 1.5em;
        }

        /* Blog Cards Section */
        .blog-cards {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); /* Responsive columns */
            gap: 30px;
            margin-top: 20px;
        }

        .card {
            background-color: #fafafa;
            border: 1px solid #ddd;
            border-radius: 8px;
            overflow: hidden;
            transition: box-shadow 0.3s;
            position: relative; /* For overlay positioning */
        }

        .card:hover {
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
        }

        .card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            display: block;
            transition: opacity 0.3s ease;
        }

        .card-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.6);
            color: white;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            opacity: 0;
            transition: opacity 0.3s ease;
            padding: 15px; /* Add some padding to the overlay text */
            text-align: center; /* Center text in overlay */
        }

        .card:hover .card-overlay {
            opacity: 1;
        }

        .card:hover img {
            opacity: 0.7;
        }

        .card-overlay .category {
            color: #e67e22;
            font-weight: bold;
            font-size: 1em;
            margin-bottom: 5px;
            z-index: 1; /* Ensure text is above overlay */
        }

        .card-overlay h3 {
            font-size: 1.3em;
            margin-bottom: 10px;
            z-index: 1;
        }

        .card-overlay p {
            font-size: 1em;
            line-height: 1.4;
            z-index: 1;
        }

        .card-content {
            padding: 15px;
            text-align: center; /* Center text below image */
        }

        .card-content .category {
            color: #e67e22;
            font-weight: bold;
            font-size: 0.9em;
            margin-bottom: 5px;
        }

        .card-content h3 {
            font-size: 1.1em;
            margin-bottom: 8px;
            color: #1a1a1a;
        }

        .card-content p {
            font-size: 0.9em;
            color: #666;
            line-height: 1.4;
        }
    </style>

    <div class="container">
        <div class="blog-title">Design Blog</div>

        <div class="featured-blog">
            <img src="../Assets-1/Images/blog1.jpg" alt="Featured Blog" />
            <div class="overlay">
                <strong>2024 Interior Design Trends You Need to Know</strong><br />
                <span>By Jane Johnson • 10 min read</span>
            </div>
        </div>

        <div class="blog-cards">
            <div class="card">
                <img src="../Assets-1/Images/blog2.png" alt="Small Space Solutions" />
                <div class="card-overlay">
                    <div class="category">Tip</div>
                    <h3>Small Space Solutions: Maximizing Your Home</h3>
                    <p>Discover clever ways to make the most of small spaces without losing style.</p>
                </div>
                <div class="card-content">
                    <div class="category">Tip</div>
                    <h3>Small Space Solutions: Maximizing Your Home</h3>
                    <p>Discover clever ways to make the most of small spaces without losing style.</p>
                </div>
            </div>

            <div class="card">
                <img src="../Assets-1/Images/blog3.jpg" alt="Color Psychology" />
                <div class="card-overlay">
                    <div class="category">Color Guide</div>
                    <h3>Color Psychology in Interior Design</h3>
                    <p>Learn how different colors can affect mood and atmosphere in your space.</p>
                </div>
                <div class="card-content">
                    <div class="category">Color Guide</div>
                    <h3>Color Psychology in Interior Design</h3>
                    <p>Learn how different colors can affect mood and atmosphere in your space.</p>
                </div>
            </div>

            <div class="card">
                <img src="../Assets-1/Images/blog4.jpg" alt="Scandinavian Design" />
                <div class="card-overlay">
                    <div class="category">Inspiration</div>
                    <h3>Scandinavian Design Elements</h3>
                    <p>Explore the key elements that make Scandinavian design so appealing.</p>
                </div>
                <div class="card-content">
                    <div class="category">Inspiration</div>
                    <h3>Scandinavian Design Elements</h3>
                    <p>Explore the key elements that make Scandinavian design so appealing.</p>
                </div>
            </div>

            </div>
    </div>
</asp:Content>