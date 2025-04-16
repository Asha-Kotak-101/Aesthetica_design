<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="Aesthetica_design.Blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .product-grid,
        .article-grid {
            display: grid;
            gap: 30px;
        }

        .product-grid {
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            margin-bottom: 60px;
        }

        .article-grid {
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
        }

        .product-card,
        .article-card {
            background-color: #fff;
            border: 1px solid #ddd;
            padding: 15px;
            border-radius: 6px;
            box-shadow: 0 0 10px rgba(0,0,0,0.05);
        }

        .product-card img,
        .article-card img {
            width: 100%;
            border-radius: 5px;
            margin-bottom: 10px;
        }

        .product-card h6,
        .article-card h6 {
            font-weight: 600;
        }

        .article-meta {
            font-size: 0.875rem;
            color: #777;
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
        img {
    width: 100%;
    height: auto;
    border-radius: 6px;
}

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
        <!-- Featured Products -->
        <h3 class="mb-4 fw-bold text-center">Featured Products</h3>
        <div class="product-grid">
            <div class="product-card">
                <img src="Assets-1/Images/image 10.png" alt="Sofa Set" />
                <h6>Elegance Sofa Set</h6>
                <p><strong>$999</strong></p>
            </div>
            <div class="product-card">
                <img src="Assets-1/Images/image 11.png" alt="Coffee Table" />
                <h6>Luxury Coffee Table</h6>
                <p><strong>$299</strong></p>
            </div>
            <div class="product-card">
                <img src="Assets-1/Images/image 12.png" alt="Rug" />
                <h6>Soft Shaggy Rug</h6>
                <p><strong>$149</strong></p>
            </div>
            <div class="product-card">
                <img src="Assets-1/Images/image 10.png" alt="Sofa Set" />
                <h6>Elegance Sofa Set</h6>
                <p><strong>$999</strong></p>
            </div>
            <div class="product-card">
                <img src="Assets-1/Images/image 11.png" alt="Coffee Table" />
                <h6>Luxury Coffee Table</h6>
                <p><strong>$299</strong></p>
            </div>
            <div class="product-card">
                <img src="Assets-1/Images/image 12.png" alt="Rug" />
                <h6>Soft Shaggy Rug</h6>
                <p><strong>$149</strong></p>
            </div>
        </div>

        <!-- Latest Articles -->
        <h3 class="mb-4 fw-bold text-center">Latest Articles</h3>
        <div class="article-grid mb-5">
            <div class="article-card">
                <img src="Assets-1/Images/image 10.png" alt="Paint Colors" />
                <h6>8 Mood-Boosting Paint Colors</h6>
                <p class="article-meta">By <strong>Anna Lee</strong></p>
            </div>
            <div class="article-card">
                <img src="Assets-1/Images/image 10.png" alt="New Color Trends" />
                <h6>Parrow & Ball Unveils 12 New Colors</h6>
                <p class="article-meta">By <strong>Jacobson</strong></p>
            </div>
            <div class="article-card">
              <img src="Assets-1/Images/image 10.png" alt="Paint Colors" />
              <h6>8 Mood-Boosting Paint Colors</h6>
               <p class="article-meta">By <strong>Anna Lee</strong></p>
              </div>
        </div>
    </div>

    <!-- Newsletter -->
     <section class="newsletter">
     <h3>Subscribe to Our Newsletter</h3>
     <p>Stay updated with our latest blog posts and design tips.</p>
     <form>
         <input type="email" placeholder="Enter your email" required />
         <button type="submit">Subscribe</button>
     </form>
 </section>
</asp:Content>