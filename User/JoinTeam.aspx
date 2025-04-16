<%@ Page Title="Join Our Team" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="JoinTeam.aspx.cs" Inherits="Aesthetica_design.User.JoinTeam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
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
    </style>

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
</asp:Content>
