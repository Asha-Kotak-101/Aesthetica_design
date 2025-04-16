<%@ Page Title="Budget Planner" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="BudgetUser.aspx.cs" Inherits="Aesthetica_design.User.BudgetUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .container {
            padding: 40px;
            max-width: 1200px;
            margin: auto;
        }

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
    </style>

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
</asp:Content>
