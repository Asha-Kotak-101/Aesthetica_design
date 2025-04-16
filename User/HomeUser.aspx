
<%@ Page Title="Home" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="HomeUser.aspx.cs" Inherits="Aesthetica_design.User.HomeUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
            line-height: 1.6;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .section {
            margin-bottom: 60px;
        }

        .section-title {
            font-size: 2.5rem;
            color: #2c3e50;
            margin-bottom: 40px;
            text-align: center;
        }

        /* --- Design Blog Section --- */
        .design-blog {
            background-color: #ffffff;
        }

        .blog-post {
            margin-bottom: 30px;
        }

        .featured-post-image {
            width: 100%;
            border-radius: 8px;
            margin-bottom: 20px;
            height: 400px;
            object-fit: cover;
        }

        .featured-post-content {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .featured-post-title {
            font-size: 2rem;
            color: #2c3e50;
            margin-bottom: 15px;
        }

        .featured-post-excerpt {
            font-size: 1.1rem;
            color: #666;
            margin-bottom: 20px;
        }

        .blog-post-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }

        .blog-post-card {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .blog-post-card:hover {
            transform: translateY(-5px);
        }

        .blog-post-image {
            width: 100%;
            border-radius: 8px 8px 0 0;
            height: 250px;
            object-fit: cover;
        }


        .blog-post-title {
            font-size: 1.5rem;
            color: #2c3e50;
            margin: 15px 0;
            padding: 0 10px;
        }

        .blog-post-excerpt {
            font-size: 1rem;
            color: #666;
            padding: 0 10px;
        }

        .read-more-link {
            display: inline-block;
            margin-top: 15px;
            color: #0078d7;
            text-decoration: none;
            padding: 0 10px;
        }

        .read-more-link:hover {
            text-decoration: underline;
        }


        /* --- Find Your Style Section --- */
/*        .container {
    padding: 40px;
    max-width: 1200px;
    margin: auto;
}*/

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

        /* --- Budget Planner Section --- */
/*        .container {
    padding: 40px;
    max-width: 1200px;
    margin: auto;
}*/

.budget-title {
    font-size: 28px;
    margin-bottom: 30px;
    color: #1a1a1a;
}

.budget-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 30px;
}

.box {
    background-color: #f9f9f9;
    border: 1px solid #ddd;
    border-radius: 10px;
    padding: 25px;
    box-shadow: 0 2px 6px rgba(0,0,0,0.05);
}

.box h3 {
    font-size: 18px;
    margin-bottom: 20px;
    font-weight: bold;
}

.overview-item {
    display: flex;
    justify-content: space-between;
    margin-bottom: 15px;
    font-size: 16px;
}

.budget-total {
    color: #007bff;
}

.budget-remaining {
    color: #f39c12;
}

.slider-section {
    margin-bottom: 25px;
}

.slider-label {
    display: flex;
    justify-content: space-between;
    margin-bottom: 8px;
    font-weight: 500;
}

input[type="range"] {
    width: 100%;
}

.amount {
    font-weight: bold;
}


        /* --- Room Measurement Section --- */
       .room-measurement-container {
    display: flex;
    flex-wrap: wrap;
    gap: 40px;
    padding: 40px;
    align-items: center;
    justify-content: center;
}

.room-image {
    flex: 1;
    min-width: 300px;
}

.room-image img {
    width: 100%;
    border-radius: 10px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.1);
}

.form-box {
    flex: 1;
    min-width: 300px;
    background: #f9f9f9;
    padding: 30px;
    border-radius: 12px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.05);
}

.form-box h3 {
    margin-bottom: 25px;
    font-size: 20px;
    font-weight: 600;
    color: #333;
}

.form-box input[type="text"] {
    width: 100%;
    padding: 12px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 8px;
    font-size: 16px;
}

.form-box button {
    width: 100%;
    padding: 14px;
    font-size: 16px;
    background-color: #2c2c44;
    color: white;
    border: none;
    border-radius: 8px;
    cursor: pointer;
}

.form-box button:hover {
    background-color: #1f1f33;
}

.result {
    margin-top: 20px;
    font-size: 18px;
    color: #007bff;
    font-weight: 500;
}

        /* --- Join Our Team Section --- */
       .team-section {
    padding: 40px;
    background: #f9fbfd;
    margin:40PX;
}

.team-title {
    font-size: 28px;
    font-weight: bold;
    color: #2c3e75;
    margin-bottom: 30px;
}

.job-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(400px, 1fr));
    gap: 20px;
}

.job-card {
    background: white;
    padding: 20px;
    border-radius: 12px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.05);
    transition: transform 0.2s ease;
}

.job-card:hover {
    transform: translateY(-5px);
}

.job-title {
    font-weight: 600;
    font-size: 18px;
    margin-bottom: 12px;
}

.job-detail {
    font-size: 14px;
    color: #555;
    margin: 4px 0;
    display: flex;
    align-items: center;
}

.job-detail i {
    margin-right: 8px;
    color: #3a3a60;
}

.view-link {
    margin-top: 10px;
    display: inline-block;
    color: #0a3fa5;
    font-weight: 500;
    text-decoration: none;
}

.view-link:hover {
    text-decoration: underline;
}


        /* --- Responsive Adjustments --- */
        @media (max-width: 768px) {
            .measurement-content {
                flex-direction: column;
            }

            .measurement-image-container,
            .measurement-form-container {
                flex: 1;
                margin-right: 0;
                margin-bottom: 20px;
            }

            .team-locations {
                flex-direction: column;
            }

            .location-column {
                margin-right: 0;
                margin-bottom: 30px;
            }

            .featured-post-content {
                padding: 10px;
            }

            .featured-post-title {
                font-size: 1.5rem;
            }
        }

        @media (max-width: 480px) {
            .budget-overview {
                flex-direction: column;
            }

            .budget-details {
                margin-left: 0;
                margin-top: 20px;
            }

            .section-title {
                font-size: 2rem;
            }

            .blog-post-title {
                font-size: 1.2rem;
            }

            .featured-post-title {
                font-size: 1.2rem;
            }
        }
    </style>

    <div class="container">
        <section class="section design-blog">
            <h2 class="section-title">Design Blog</h2>
            <div class="blog-post featured-post">
                <img src="../Assets-1/Images/blog1.jpg" alt="Featured Design Blog Post" class="featured-post-image" />
                <div class="featured-post-content">
                    <h3 class="featured-post-title">Latest Interior Design Trends</h3>
                    <p class="featured-post-excerpt">Explore the newest and most exciting trends in interior design.</p>
                    <a href="#" class="read-more-link">Read More</a>
                </div>
            </div>
            <div class="blog-post-grid">
                <div class="blog-post-card">
                    <img src="../Assets-1/Images/blog2.png" alt="Interior Design Tips" class="blog-post-image" />
                    <h3 class="blog-post-title">Tips for Small Spaces</h3>
                    <p class="blog-post-excerpt">Maximize your small space with these design tips.</p>
                    <a href="#" class="read-more-link">Read More</a>
                </div>
                <div class="blog-post-card">
                    <img src="../Assets-1/Images/blog3.jpg" alt="Color Palettes" class="blog-post-image" />
                    <h3 class="blog-post-title">Best Color Palettes</h3>
                    <p class="blog-post-excerpt">Discover the best color palettes for your home.</p>
                    <a href="#" class="read-more-link">Read More</a>
                </div>
                <div class="blog-post-card">
                    <img src="../Assets-1/Images/blog4.jpg" alt="Home Decor Ideas" class="blog-post-image" />
                    <h3 class="blog-post-title">Modern Decor Ideas</h3>
                    <p class="blog-post-excerpt">Modern Home Decor Ideas for 2024.</p>
                    <a href="#" class="read-more-link">Read More</a>
                </div>
            </div>
        </section>

        <section class="section find-your-style">
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
        </section>

        <section class="section budget-planner">
           <div class="container">
    <div class="budget-title">Budget Planner</div>

    <div class="budget-grid">
        <!-- Project Overview -->
        <div class="box">
            <h3>Project Overview</h3>
            <div class="overview-item">
                <span>Total Budget</span>
                <span class="budget-total" id="totalBudgetDisplay">$25,000</span>
            </div>
            <div class="overview-item">
                <span>Spent</span>
                <span id="spentDisplay">$0</span>
            </div>
            <div class="overview-item">
                <span>Remaining</span>
                <span class="budget-remaining" id="remainingDisplay">$25,000</span>
            </div>
        </div>

        <!-- Expense Categories with Sliders -->
        <div class="box">
            <h3>Expense Categories</h3>

            <div class="slider-section">
                <div class="slider-label">
                    <span>Furniture</span>
                    <span class="amount" id="furnitureAmount">$0</span>
                </div>
                <input type="range" min="0" max="25000" value="0" id="furnitureSlider" />
            </div>

            <div class="slider-section">
                <div class="slider-label">
                    <span>Decor</span>
                    <span class="amount" id="decorAmount">$0</span>
                </div>
                <input type="range" min="0" max="25000" value="0" id="decorSlider" />
            </div>

            <div class="slider-section">
                <div class="slider-label">
                    <span>Labor</span>
                    <span class="amount" id="laborAmount">$0</span>
                </div>
                <input type="range" min="0" max="25000" value="0" id="laborSlider" />
            </div>

            <div class="slider-section">
                <div class="slider-label">
                    <span>Materials</span>
                    <span class="amount" id="materialsAmount">$0</span>
                </div>
                <input type="range" min="0" max="25000" value="0" id="materialsSlider" />
            </div>
        </div>
    </div>
</div>

<script>
    const totalBudget = 25000;

    const sliders = {
        furniture: document.getElementById('furnitureSlider'),
        decor: document.getElementById('decorSlider'),
        labor: document.getElementById('laborSlider'),
        materials: document.getElementById('materialsSlider'),
    };

    const amounts = {
        furniture: document.getElementById('furnitureAmount'),
        decor: document.getElementById('decorAmount'),
        labor: document.getElementById('laborAmount'),
        materials: document.getElementById('materialsAmount'),
    };

    const spentDisplay = document.getElementById('spentDisplay');
    const remainingDisplay = document.getElementById('remainingDisplay');

    function updateBudget() {
        let totalSpent = 0;

        for (let key in sliders) {
            const value = parseInt(sliders[key].value);
            amounts[key].textContent = `$${value.toLocaleString()}`;
            totalSpent += value;
        }

        let remaining = totalBudget - totalSpent;

        spentDisplay.textContent = `$${totalSpent.toLocaleString()}`;
        remainingDisplay.textContent = `$${remaining.toLocaleString()}`;
    }

    for (let key in sliders) {
        sliders[key].addEventListener('input', updateBudget);
    }

    // Initialize
    updateBudget();
</script>
        </section>

        <section class="section room-measurement">
            <div class="room-measurement-container">
    <!-- Left: Image -->
    <div class="room-image">
        <img src="../Assets-1/Images/image 28.png" alt="Room Example" />
    </div>

    <!-- Right: Room Measurement Form -->
    <div class="form-box">
        <h3>Room Dimensions</h3>

        <input type="text" id="lengthInput" placeholder="Length (ft)" />
        <input type="text" id="widthInput" placeholder="Width (ft)" />
        <input type="text" id="heightInput" placeholder="Height (ft)" />

        <button type="button" onclick="calculateVolume()">Calculate Space</button>


        <div class="result" id="volumeResult"></div>
    </div>
</div>

<script>
    function calculateVolume() {
        const length = parseFloat(document.getElementById("lengthInput").value) || 0;
        const width = parseFloat(document.getElementById("widthInput").value) || 0;
        const height = parseFloat(document.getElementById("heightInput").value) || 0;

        const volume = length * width * height;

        const resultText = volume > 0
            ? `Total Volume: ${volume.toLocaleString()} cubic feet`
            : "Please enter valid dimensions.";

        document.getElementById("volumeResult").textContent = resultText;
    }
</script>
        </section>

        <section class="section join-our-team">
            <div class="team-section">
    <h2 class="team-title">Join Our Team</h2>

    <div class="job-grid">
        <!-- Job Card 1 -->
        <div class="job-card">
            <div class="job-title">Senior Interior Designer</div>
            <div class="job-detail"><i class="fas fa-map-marker-alt"></i> New York, NY</div>
            <div class="job-detail"><i class="fas fa-briefcase"></i> Full-time</div>
            <div class="job-detail"><i class="fas fa-user-clock"></i> 5+ years</div>
            <a href="#" class="view-link">View Details &rsaquo;</a>
        </div>

        <!-- Job Card 2 -->
        <div class="job-card">
            <div class="job-title">Design Consultant</div>
            <div class="job-detail"><i class="fas fa-map-marker-alt"></i> Los Angeles, CA</div>
            <div class="job-detail"><i class="fas fa-briefcase"></i> Full-time</div>
            <div class="job-detail"><i class="fas fa-user-clock"></i> 3+ years</div>
            <a href="#" class="view-link">View Details &rsaquo;</a>
        </div>

        <!-- Job Card 3 -->
        <div class="job-card">
            <div class="job-title">Project Manager</div>
            <div class="job-detail"><i class="fas fa-map-marker-alt"></i> Chicago, IL</div>
            <div class="job-detail"><i class="fas fa-briefcase"></i> Full-time</div>
            <div class="job-detail"><i class="fas fa-user-clock"></i> 4+ years</div>
            <a href="#" class="view-link">View Details &rsaquo;</a>
        </div>

        <!-- Job Card 4 -->
        <div class="job-card">
            <div class="job-title">3D Visualization Artist</div>
            <div class="job-detail"><i class="fas fa-map-marker-alt"></i> Remote</div>
            <div class="job-detail"><i class="fas fa-briefcase"></i> Contract</div>
            <div class="job-detail"><i class="fas fa-user-clock"></i> 2+ years</div>
            <a href="#" class="view-link">View Details &rsaquo;</a>
        </div>
    </div>
</div>

<!-- Font Awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
        </section>
    </div>
</asp:Content>
