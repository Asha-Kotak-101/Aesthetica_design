<%@ Page Title="Budget Admin" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeBehind="BudgetAdmin.aspx.cs" Inherits="Aesthetica_design.Admin.BudgetAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

  <style>
    .dashboard {
      max-width: 1200px;
      margin: 40px auto;
      padding: 24px;
      background: #f9f9f9;
      border-radius: 12px;
    }

    .top-actions {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-bottom: 24px;
    }

    .top-actions h2 {
      margin: 0;
    }

    .top-actions .buttons {
      display: flex;
      gap: 12px;
    }

    .top-actions button {
      padding: 10px 16px;
      border: none;
      border-radius: 6px;
      cursor: pointer;
      font-weight: 600;
    }

    .export-btn {
      background: #f2f2f2;
    }

    .new-btn {
      background: black;
      color: white;
    }

    .cards {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 20px;
      margin-bottom: 32px;
    }

    .card {
      background: white;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 2px 8px rgba(0,0,0,0.05);
    }

    .card h3 {
      margin: 0;
      font-size: 14px;
      color: #888;
    }

    .card p {
      margin: 8px 0 0;
      font-size: 22px;
      font-weight: bold;
    }

    .card small {
      display: block;
      margin-top: 4px;
      font-size: 12px;
      color: #44aa55;
    }

    .transactions, .distribution {
      background: white;
      padding: 20px;
      border-radius: 10px;
      margin-bottom: 24px;
      box-shadow: 0 2px 8px rgba(0,0,0,0.05);
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 12px;
    }

    table th, table td {
      padding: 12px;
      text-align: left;
      border-bottom: 1px solid #eee;
    }

    .status {
      padding: 4px 10px;
      border-radius: 20px;
      font-size: 12px;
      font-weight: 600;
    }

    .completed {
      background: #e6f4ea;
      color: #137333;
    }

    .pending {
      background: #fff4ce;
      color: #8a6d3b;
    }

    .bar-container {
      margin-top: 16px;
    }

    .bar {
      background-color: #f0f0f0;
      border-radius: 20px;
      overflow: hidden;
      height: 16px;
      margin-bottom: 10px;
    }

    .bar-fill {
      height: 100%;
      background-color: #222;
    }

    .bar-label {
      display: flex;
      justify-content: space-between;
      font-size: 14px;
      margin-bottom: 4px;
    }
  </style>

  <div class="dashboard">
    <div class="top-actions">
      <h2>Budget Overview</h2>
      <div class="buttons">
        <button class="export-btn">⬇️ Export</button>
        <button class="new-btn">+ New Budget</button>
      </div>
    </div>

    <div class="cards">
      <div class="card">
        <h3>Total Budget</h3>
        <p>$245,000</p>
        <small>↑ 12% from last month</small>
      </div>
      <div class="card">
        <h3>Spent</h3>
        <p>$82,500</p>
        <small>33.7% of total budget</small>
      </div>
      <div class="card">
        <h3>Remaining</h3>
        <p>$162,500</p>
        <small>66.3% available</small>
      </div>
      <div class="card">
        <h3>Active Projects</h3>
        <p>8</p>
        <small style="color:#f85a3e;">↑ 2 new this month</small>
      </div>
    </div>

    <div class="transactions">
      <h3>Recent Transactions</h3>
      <table>
        <thead>
          <tr>
            <th>Date</th>
            <th>Project</th>
            <th>Category</th>
            <th>Amount</th>
            <th>Status</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Jan 15, 2025</td>
            <td>Modern Villa Project</td>
            <td>Furniture</td>
            <td>$12,500</td>
            <td><span class="status completed">Completed</span></td>
          </tr>
          <tr>
            <td>Jan 12, 2025</td>
            <td>Urban Apartment</td>
            <td>Lighting</td>
            <td>$4,800</td>
            <td><span class="status pending">Pending</span></td>
          </tr>
          <tr>
            <td>Jan 10, 2025</td>
            <td>Beach House</td>
            <td>Decor</td>
            <td>$8,300</td>
            <td><span class="status completed">Completed</span></td>
          </tr>
        </tbody>
      </table>
    </div>

    <div class="distribution">
      <h3>Project Budget Distribution</h3>

      <div class="bar-container">
        <div class="bar-label">
          <span>Modern Villa Project</span>
          <span>75%</span>
        </div>
        <div class="bar">
          <div class="bar-fill" style="width: 75%;"></div>
        </div>

        <div class="bar-label">
          <span>Urban Apartment</span>
          <span>45%</span>
        </div>
        <div class="bar">
          <div class="bar-fill" style="width: 45%;"></div>
        </div>

        <div class="bar-label">
          <span>Beach House</span>
          <span>60%</span>
        </div>
        <div class="bar">
          <div class="bar-fill" style="width: 60%;"></div>
        </div>
      </div>
    </div>
  </div>

</asp:Content>
