<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="BlogUser.aspx.cs" Inherits="Aesthetica_design.User.BlogUser" %>
<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <title>Aesthetica | Blog</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', sans-serif;
        }

        body {
            background-color: #fff;
            color: #333;
        }

        /* Header */
        .user-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 40px;
            background-color: #f7f7f7;
            border-bottom: 1px solid #ccc;
        }

        .user-header .logo {
            font-weight: bold;
            font-size: 20px;
            border: 1px solid #000;
            padding: 5px 10px;
        }

        .user-header .nav-links a {
            margin: 0 10px;
            text-decoration: none;
            color: #333;
        }

        .user-header .header-right {
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .user-header input[type="text"] {
            padding: 6px 12px;
            border-radius: 20px;
            border: 1px solid #ccc;
            outline: none;
            width: 200px;
        }

        /* Blog Page */
        .container {
            padding: 40px;
            max-width: 1200px;
            margin: auto;
        }

        .blog-title {
            font-size: 28px;
            margin-bottom: 20px;
            color: #1a1a1a;
        }

        .featured-blog img {
            width: 100%;
            border-radius: 8px;
        }

        .featured-blog .overlay {
            margin-top: 10px;
            font-size: 16px;
        }

        /* Blog Cards */
        .blog-cards {
            display: flex;
            justify-content: space-between;
            gap: 20px;
            margin-top: 40px;
        }

        .card {
            flex: 1;
            background-color: #fafafa;
            border: 1px solid #ddd;
            border-radius: 8px;
            overflow: hidden;
            transition: box-shadow 0.3s;
        }

        .card:hover {
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }

        .card img {
            width: 100%;
            height: 180px;
            object-fit: cover;
        }

        .card-content {
            padding: 15px;
        }

        .card-content .category {
            color: #e67e22;
            font-weight: bold;
            font-size: 13px;
            margin-bottom: 5px;
        }

        .card-content h3 {
            font-size: 16px;
            margin-bottom: 10px;
            color: #1a1a1a;
        }

        .card-content p {
            font-size: 13px;
            color: #666;
        }

        /* Footer */
        .user-footer {
            background-color: #000;
            color: #fff;
            padding: 40px;
            margin-top: 60px;
        }

        .footer-top {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }

        .footer-columns {
            display: flex;
            gap: 60px;
        }

        .footer-column h4 {
            margin-bottom: 10px;
        }

        .footer-column a {
            display: block;
            margin: 4px 0;
            text-decoration: none;
            color: #ccc;
            font-size: 14px;
        }

        .footer-column p {
            font-size: 14px;
            color: #ccc;
        }

        .footer-bottom {
            margin-top: 30px;
            border-top: 1px solid #555;
            padding-top: 15px;
            display: flex;
            justify-content: space-between;
            font-size: 13px;
        }

        .footer-bottom a {
            color: #ccc;
            margin: 0 5px;
            text-decoration: none;
        }

        .footer-bottom a:hover {
            color: #fff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Header -->
        <header class="user-header">
            <div class="logo">Aesthetica</div>
            <nav class="nav-links">
                <a href="#">Blog</a>
                <a href="#">Styles</a>
                <a href="#">Budget</a>
                <a href="#">Measure</a>
                <a href="#">Careers</a>
            </nav>
            <div class="header-right">
                <input type="text" placeholder="🔍 Search designs, styles, tip..." />
                <span>🔔</span>
                <span>👤</span>
            </div>
        </header>

        <!-- Blog Content -->
        <div class="container">
            <div class="blog-title">Design Blog</div>

            <div class="featured-blog">
                <img src="https://images.unsplash.com/photo-1615874959474-d609969a1cf3" alt="Featured Blog" />
                <div class="overlay">
                    <strong>2024 Interior Design Trends You Need to Know</strong><br />
                    <span>By Jane Johnson • 10 min read</span>
                </div>
            </div>

            <div class="blog-cards">
                <div class="card">
                    <img src="https://images.unsplash.com/photo-1600585154340-be6161a56a0c" />
                    <div class="card-content">
                        <div class="category">Tip</div>
                        <h3>Small Space Solutions: Maximizing Your Home</h3>
                        <p>Discover clever ways to make the most of small spaces without losing style.</p>
                    </div>
                </div>
                <div class="card">
                    <img src="https://images.unsplash.com/photo-1587502537685-4a76a0b15b88" />
                    <div class="card-content">
                        <div class="category">Color Guide</div>
                        <h3>Color Psychology in Interior Design</h3>
                        <p>Learn how different colors can affect mood and atmosphere in your space.</p>
                    </div>
                </div>
                <div class="card">
                    <img src="https://images.unsplash.com/photo-1567016432779-094069958ea5" />
                    <div class="card-content">
                        <div class="category">Inspiration</div>
                        <h3>Scandinavian Design Elements</h3>
                        <p>Explore the key elements that make Scandinavian design so appealing.</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer -->
        <footer class="user-footer">
            <div class="footer-top">
                <div class="logo">Aesthetica</div>
                <div class="footer-columns">
                    <div class="footer-column">
                        <h4>Quick Links</h4>
                        <a href="#">Home</a>
                        <a href="#">About Us</a>
                        <a href="#">Blog</a>
                        <a href="#">Gallery</a>
                        <a href="#">Career</a>
                        <a href="#">Contact us</a>
                    </div>
                    <div class="footer-column">
                        <h4>Services</h4>
                        <a href="#">Stay Updated with Our Blog</a>
                        <a href="#">Design Your Space</a>
                        <a href="#">Plan Your Budget</a>
                        <a href="#">Get an Instant Quote</a>
                        <a href="#">Measure Your Room</a>
                        <a href="#">Chat with Us Live</a>
                        <a href="#">Join Our Team</a>
                    </div>
                    <div class="footer-column">
                        <h4>Get in touch</h4>
                        <p>📍 123 Main Street<br>Your City, State Country.</p>
                        <p>📞 (123) 456-7890</p>
                        <p>✉️ aesthetica@gmail.com</p>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <p>© 2025 Interior Design Blog. All Rights Reserved.</p>
                <div>
                    <a href="#">Privacy Policy</a> |
                    <a href="#">Terms of Use</a>
                </div>
            </div>
        </footer>
    </form>
</body>
</html>
