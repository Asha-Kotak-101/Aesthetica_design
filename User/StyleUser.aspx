
<%@ Page Title="Style" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="StyleUser.aspx.cs" Inherits="Aesthetica_design.User.StyleUser" %>

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
            text-align: center;
        }

        .style-cards {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
            margin-top: 20px;
        }

        .card {
            background-color: #fafafa;
            border: 1px solid #ddd;
            border-radius: 8px;
            overflow: hidden;
            transition: box-shadow 0.3s;
            position: relative;
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

        .card:hover img {
            opacity: 0.7;
        }

        .card-content {
            padding: 15px;
            text-align: left;
        }

        .card-content h3 {
            font-size: 1.2em;
            margin-bottom: 10px;
            color: #1a1a1a;
        }

        .card-content p {
            font-size: 0.95em;
            color: #666;
            line-height: 1.4;
        }

        .explore-link {
            color: #007bff;
            font-weight: 500;
            text-decoration: none;
            display: inline-block;
            margin-top: 10px;
        }

        .explore-link:hover {
            text-decoration: underline;
        }
    </style>

    <div class="container">
        <div class="blog-title">Find Your Style</div>

        <div class="style-cards">
            <!-- Modern Style Card -->
            <div class="card">
                <img src="../Assets-1/Images/image 31.png" alt="Modern Style" />
                <div class="card-content">
                    <h3>Modern</h3>
                    <p>Clean lines, minimal decor, and contemporary aesthetics.</p>
                    <a href="#" class="explore-link">Explore Style &rarr;</a>
                </div>
            </div>

            <!-- Classic Style Card -->
            <div class="card">
                <img src="../Assets-1/Images/image 32.png" alt="Classic Style" />
                <div class="card-content">
                    <h3>Classic</h3>
                    <p>Timeless elegance with traditional elements.</p>
                    <a href="#" class="explore-link">Explore Style &rarr;</a>
                </div>
            </div>

            <!-- Scandinavian Style Card -->
            <div class="card">
                <img src="../Assets-1/Images/image 28.png" alt="Scandinavian Style" />
                <div class="card-content">
                    <h3>Scandinavian</h3>
                    <p>Light, airy spaces with natural materials.</p>
                    <a href="#" class="explore-link">Explore Style &rarr;</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
