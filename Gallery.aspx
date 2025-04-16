<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="Aesthetica_design.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .gallery-section {
            padding: 60px 0;
            text-align: center;
        }

        .gallery-section h2 {
            font-weight: 600;
            margin-bottom: 40px;
        }

        .gallery-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 30px;
            padding: 0 30px;
        }

        .gallery-grid img {
            width: 100%;
            height: auto;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            transition: transform 0.3s ease;
        }

        .gallery-grid img:hover {
            transform: scale(1.03);
        }

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
        .gallery-grid img {
    width: 100%;
    height: 250px; /* You can adjust height as needed */
    object-fit: cover;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    transition: transform 0.3s ease;
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

        @media (max-width: 768px) {
            .gallery-grid {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 576px) {
            .gallery-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="gallery-section">
        <h2>Gallery</h2>
        <div class="gallery-grid">
            <img src="Assets-1/Images/g1.jpg" alt="Gallery 1" />
            <img src="Assets-1/Images/g2.jpg" alt="Gallery 2" />
            <img src="Assets-1/Images/g3.jpg" alt="Gallery 3" />
            <img src="Assets-1/Images/g4.jpg" alt="Gallery 4" />
            <img src="Assets-1/Images/g1.jpg" alt="Gallery 5" />
            <img src="Assets-1/Images/g2.jpg" alt="Gallery 6" />
            <img src="Assets-1/Images/g3.jpg" alt="Gallery 7" />
            <img src="Assets-1/Images/g4.jpg" alt="Gallery 8" />
            <img src="Assets-1/Images/g1.jpg" alt="Gallery 9" />
        </div>
    </section>

    <section class="newsletter">
        <h3>Subscribe to Our Newsletter</h3>
        <p>Stay updated with our latest blog posts and design tips.</p>
        <form>
            <input type="email" placeholder="Enter your email" required />
            <button type="submit">Subscribe</button>
        </form>
    </section>
</asp:Content>