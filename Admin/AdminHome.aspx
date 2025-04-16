<%@ Page Title="Admin Home" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="Aesthetica_design.Admin.AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fc;
            color: #343a40;
        }

        .card {
            border: none;
            border-radius: 12px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.05);
            background-color: #fff;
        }

        .card h6 {
            font-size: 14px;
            font-weight: 500;
            color: #6c757d;
            margin-bottom: 4px;
        }

        .card h4 {
            font-size: 22px;
            font-weight: 600;
            margin-bottom: 4px;
        }

        .card span.text-success {
            font-size: 13px;
        }

        .table {
            font-size: 14px;
        }

        .table th, .table td {
            vertical-align: middle;
        }

        .table th {
            background-color: #f1f3f5;
            font-weight: 600;
        }

        .badge {
            font-size: 12px;
            padding: 4px 8px;
            border-radius: 20px;
        }

        .fa-edit,
        .fa-trash {
            cursor: pointer;
        }

        .card-header {
            background-color: transparent;
            border-bottom: 1px solid #dee2e6;
            font-weight: 600;
        }

        .list-group-item {
            font-size: 14px;
            border: none;
            background-color: transparent;
            padding: 10px 0;
        }

        .progress {
            height: 6px;
            border-radius: 20px;
            background-color: #e9ecef;
        }

        .progress-bar {
            border-radius: 20px;
        }

        .btn-dark {
            background-color: #343a40;
            border: none;
            padding: 6px 12px;
            font-size: 13px;
            font-weight: 500;
            border-radius: 8px;
        }

        .btn-dark:hover {
            background-color: #23272b;
        }

        a {
            font-size: 13px;
            color: #007bff;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        canvas {
            margin-top: 12px;
        }

        @media (max-width: 768px) {
            .card {
                margin-bottom: 15px;
            }
        }
    </style>

    <div class="container-fluid mt-4">

        <!-- Summary Cards -->
        <div class="row g-3 mb-4">
            <div class="col-md-3">
                <div class="card p-3 text-center">
                    <h6>Active Projects</h6>
                    <h4>124</h4>
                    <span class="text-success">+12%</span>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card p-3 text-center">
                    <h6>Monthly Revenue</h6>
                    <h4>$52,389</h4>
                    <span class="text-success">+8%</span>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card p-3 text-center">
                    <h6>New Inquiries</h6>
                    <h4>89</h4>
                    <span class="text-success">+24%</span>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card p-3 text-center">
                    <h6>Active Chats</h6>
                    <h4>12</h4>
                    <span class="text-success">+5%</span>
                </div>
            </div>
        </div>

        <!-- Blog Posts Table -->
        <div class="card mb-4">
            <div class="card-header d-flex justify-content-between align-items-center">
                <strong>Recent Blog Posts</strong>
                <button class="btn btn-dark btn-sm">+ New Post</button>
            </div>
            <div class="card-body p-0">
                <table class="table mb-0">
                    <thead class="table-light">
                        <tr>
                            <th>Title</th>
                            <th>Author</th>
                            <th>Status</th>
                            <th>Date</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>2024 Interior Design Trends</td>
                            <td>Sarah Johnson</td>
                            <td><span class="badge bg-success">Published</span></td>
                            <td>Jan 15, 2024</td>
                            <td><i class="fas fa-edit text-primary me-2"></i><i class="fas fa-trash text-danger"></i></td>
                        </tr>
                        <tr>
                            <td>Sustainable Home Decor Guide</td>
                            <td>Mike Peters</td>
                            <td><span class="badge bg-warning text-dark">Draft</span></td>
                            <td>Jan 14, 2024</td>
                            <td><i class="fas fa-edit text-primary me-2"></i><i class="fas fa-trash text-danger"></i></td>
                        </tr>
                        <tr>
                            <td>Small Space Solutions</td>
                            <td>Emma Wilson</td>
                            <td><span class="badge bg-success">Published</span></td>
                            <td>Jan 13, 2024</td>
                            <td><i class="fas fa-edit text-primary me-2"></i><i class="fas fa-trash text-danger"></i></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Side Panels -->
        <div class="row g-3">
            <div class="col-md-4">
                <div class="card p-3">
                    <div class="d-flex justify-content-between">
                        <h6>Style Categories</h6>
                        <a href="#">View All</a>
                    </div>
                    <ul class="list-group list-group-flush mt-2">
                        <li class="list-group-item d-flex justify-content-between">Modern <span>45 projects</span></li>
                        <li class="list-group-item d-flex justify-content-between">Contemporary <span>38 projects</span></li>
                        <li class="list-group-item d-flex justify-content-between">Minimalist <span>32 projects</span></li>
                        <li class="list-group-item d-flex justify-content-between">Traditional <span>28 projects</span></li>
                    </ul>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card p-3">
                    <div class="d-flex justify-content-between">
                        <h6>Budget Overview</h6>
                        <a href="#">View Report</a>
                    </div>
                    <canvas id="budgetChart" height="180"></canvas>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card p-3">
                    <h6>Active Projects</h6>
                    <p>Luxury Apartment <span class="float-end">75%</span></p>
                    <div class="progress mb-2"><div class="progress-bar bg-dark" style="width: 75%"></div></div>
                    <p>Modern Office <span class="float-end">45%</span></p>
                    <div class="progress mb-2"><div class="progress-bar bg-dark" style="width: 45%"></div></div>
                    <p>Beach House <span class="float-end">90%</span></p>
                    <div class="progress"><div class="progress-bar bg-dark" style="width: 90%"></div></div>
                </div>
            </div>
        </div>
    </div>

    <!-- Chart.js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        var ctx = document.getElementById('budgetChart').getContext('2d');
        var budgetChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: ['Ja', 'Fe', 'Ma', 'Ap', 'Ma', 'Ju'],
                datasets: [
                    {
                        label: 'budget',
                        data: [300, 250, 200, 400, 350, 300],
                        backgroundColor: 'black'
                    },
                    {
                        label: 'actual',
                        data: [280, 400, 180, 950, 500, 450],
                        backgroundColor: 'salmon'
                    }
                ]
            },
            options: {
                responsive: true,
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    </script>
</asp:Content>
