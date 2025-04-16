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
        }

        .featured-blog img {
            width: 100%;
            border-radius: 8px;
        }

        .featured-blog .overlay {
            margin-top: 10px;
            font-size: 16px;
        }

        .blog-cards {
            display: flex;
            justify-content: space-between;
            gap: 20px;
            margin-top: 40px;
            flex-wrap: wrap;
        }

        .card {
            flex: 1;
            background-color: #fafafa;
            border: 1px solid #ddd;
            border-radius: 8px;
            overflow: hidden;
            transition: box-shadow 0.3s;
            min-width: 280px;
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
    </style>

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
</asp:Content>
