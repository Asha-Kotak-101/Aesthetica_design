<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Career.aspx.cs" Inherits="Aesthetica_design.Career" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        /* --- General Styles --- */
        .career-page {
            font-family: sans-serif; /* Choose your preferred font */
            color: #333; /* Default text color */
            padding: 40px 20px; /* Increased top/bottom padding */
            max-width: 1200px; /* Limit page width for better readability */
            margin: 0 auto; /* Center the page content */
        }

        h2 {
            font-size: 2.5em; /* Slightly larger main heading */
            margin-bottom: 30px; /* More space below main heading */
            text-align: center;
        }

        .section-subtitle {
            color: #777;
            text-align: center;
            margin-bottom: 10px; /* More space below subtitle */
            font-size: 1em; /* Adjust subtitle size if needed */
        }

        .button {
            display: inline-block;
            background-color: #000; /* Black button */
            color: #fff;
            padding: 12px 25px; /* Slightly larger button padding */
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px; /* More space above the button */
            font-weight: bold; /* Make button text bolder */
        }

        .button:hover {
            background-color: #333;
        }

        /* --- Career Advice Section --- */
        .career-advice-section {
            margin-bottom: 40px; /* Adjust as needed */
            padding: 20px; /* Adjust as needed */
        }

        .advice-container {
            display: flex;
            flex-direction: column; /* Stack featured and grid */
            gap: 30px; /* Space between featured and grid */
        }

        .advice-top-row {
            display: flex;
            justify-content: space-around; /* Title/Subtitle on left, Image/Button on right */
            align-items: center; /* Vertically align title and image area */
            margin-bottom: 30px; /* Space between top row and advice grid */
        }

        .advice-text {
            flex: none; /* Take up remaining space */
            text-align: left;
        }

        .advice-text h2 {
            font-size: 2em; /* Adjust size */
            margin-bottom: 10px;
        }

        .advice-text .section-subtitle {
            text-align: left;
            font-size: 0.9em;
            margin-bottom: 20px; /* Add margin below subtitle */
        }

        .featured-advice-container {
            display: flex;
            align-items: center; /* Align image and button vertically */
        }

        .featured-image {
            width: 150px; /* Adjust image width */
            height: auto;
            border-radius: 8px;
            overflow: hidden;
            margin-left: 20px; /* Space between text and image */
        }

        .featured-image img {
            display: block;
            width: 100%;
            height: auto;
            object-fit: cover;
        }

        .featured-advice-container .button {
            margin-left: 15px; /* Space between image and button */
            margin-top: 0; /* Reset default button margin */
            padding: 10px 15px; /* Adjust button padding */
            font-size: 0.9em; /* Adjust button font size */
        }

        .advice-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr)); /* Two columns */
            gap: 20px;
        }

        .advice-card {
            display: flex; /* Enable flexbox for image and text */
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 25px;
            text-align: left;
            align-items: flex-start; /* Align items to the top */
        }

        .advice-card img {
            display: block;
            width: 120px; /* Adjust image width */
            height: 120px; /* Adjust image height */
            border-radius: 6px;
            margin-right: 15px; /* Space between image and text */
            object-fit: cover;
            flex-shrink: 0; /* Prevent image from shrinking */
        }

        .advice-card-content {
            flex-grow: 1; /* Allow text content to take up remaining space */
        }

        .advice-card h3 {
            font-size: 1em;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .card-description {
            color: #555;
            font-size: 0.85em;
            margin-bottom: 10px;
        }

        .card-tag {
            display: inline-block;
            background-color: #eee;
            color: #777;
            padding: 4px 8px;
            border-radius: 3px;
            font-size: 0.75em;
            margin-top: 10px;
        }

        /* --- Employee Testimonials Section --- */
        .employee-testimonials-section {
            padding: 40px 20px;
            text-align: center;
            background-color: #f9f9f9;
            border-radius: 8px;
            margin-bottom: 40px;
        }

        .testimonials-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); /* Adjust min width */
            gap: 25px;
            margin-top: 80px;
        }

        .testimonial-card {
            background-color: #fff;
            border-radius: 8px;
            padding: 20px;
            text-align: left;
            border: 1px solid #ddd;
        }

        .testimonial-header img {
            width: 40px; /* Smaller avatar width */
            height: 40px; /* Smaller avatar height */
            border-radius: 50%;
            margin-right: 15px;
            object-fit: cover;
        }

        .author-info {
            flex-grow: 1;
        }

        .author-name {
            font-weight: bold;
            margin-bottom: 5px;
            font-size: 1em;
        }

        .rating {
            color: gold;
            font-size: 0.9em;
        }

        .rating .star {
            margin-right: 2px;
        }

        .testimonial-text {
            color: #555;
            font-size: 0.95em;
            line-height: 1.6;
        }

        /* --- Responsive Design (Optional) --- */
        @media (max-width: 768px) {
            .advice-grid {
                grid-template-columns: 1fr; /* Stack cards on smaller screens */
            }

            .advice-card {
                flex-direction: column; /* Stack image and text vertically on smaller screens */
                align-items: flex-start;
            }

            .advice-card img {
                margin-bottom: 10px; /* Add margin below image when stacked */
                margin-right: 0;
                width: 100%; /* Make image full width when stacked */
                height: auto;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="career-page">
        <section class="career-advice-section">
            <div class="advice-top-row">
                <div class="advice-text">
                    <h2>Career Advice and Tips</h2>
                    <p class="section-subtitle">Learn from industry experts and enhance your skills</p>
                    <a href="#" class="button">Read More</a>
                </div>
                <div class="featured-advice-container">
                    <div class="featured-image">
                        <img src="Assets-1/Images/image 25.png" alt="Career Advice Image">
                    </div>
                </div>
            </div>
            <div class="advice-grid">
                <div class="advice-card">
                    <img src="Assets-1/Images/image 26.png" alt="Successful Design Career">
                    <div class="advice-card-content">
                        <h3>10 Tips for a Successful Design Career</h3>
                        <p class="card-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        <span class="card-tag">Career Advice</span>
                    </div>
                </div>
                <div class="advice-card">
                    <img src="Assets-1/Images/image 26.png" alt="Job Market in Interior Design">
                    <div class="advice-card-content">
                        <h3>Navigating the Job Market in Interior Design</h3>
                        <p class="card-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        <span class="card-tag">Career Guidance</span>
                    </div>
                </div>
            </div>
        </section>

        <section class="employee-testimonials-section">
            <h2>Employee Testimonials</h2>
            <p class="section-subtitle">Discover what our team members have to say about working with us</p>
            <a href="#" class="button">View All Reviews</a>
            <div class="testimonials-grid">
                <div class="testimonial-card">
                    <div class="testimonial-header">
                        <img src="Assets-1/Images/image 9.png" alt="John Doe">
                        <div class="author-info">
                            <p class="author-name">John Doe</p>
                            <div class="rating">
                                <span class="star">★</span><span class="star">★</span><span class="star">★</span><span class="star">★</span><span class="star">★</span>
                            </div>
                        </div>
                    </div>
                    <p class="testimonial-text">Working here has been a truly rewarding experience.</p>
                </div>
                <div class="testimonial-card">
                    <div class="testimonial-header">
                        <img src="Assets-1/Images/image 7.png" alt="Lara Winston">
                        <div class="author-info">
                            <p class="author-name">Lara Winston</p>
                            <div class="rating">
                                <span class="star">★</span><span class="star">★</span><span class="star">★</span><span class="star">★</span><span class="star">★</span>
                            </div>
                        </div>
                    </div>
                    <p class="testimonial-text">Great company culture and supportive team.</p>
                </div>
                <div class="testimonial-card">
                    <div class="testimonial-header">
                        <img src="Assets-1/Images/image 8.png" alt="Alex Johnson">
                        <div class="author-info">
                            <p class="author-name">Alex Johnson</p>
                            <div class="rating">
                                <span class="star">★</span><span class="star">★</span><span class="star">★</span><span class="star">★</span><span class="star">★</span>
                            </div>
                        </div>
                    </div>
                    <p class="testimonial-text">Opportunities for growth and creativity abound.</p>
                </div>
            </div>
        </section>
    </div>

</asp:Content>