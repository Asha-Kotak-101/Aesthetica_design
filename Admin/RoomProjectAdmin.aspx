<%@ Page Title="Room Project Admin" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="RoomProjectAdmin.aspx.cs" Inherits="Aesthetica_design.Admin.RoomProjectAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

  <style>
    .room-dashboard {
      max-width: 1200px;
      margin: 40px auto;
      padding: 24px;
    }

    .header-row {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-bottom: 24px;
    }

    .header-row h2 {
      margin: 0;
    }

    .add-btn {
      padding: 10px 18px;
      background: black;
      color: white;
      border: none;
      border-radius: 6px;
      font-weight: bold;
      cursor: pointer;
    }

    .summary-cards {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 20px;
      margin-bottom: 32px;
    }

    .summary-card {
      background: #f9f9f9;
      padding: 20px;
      border-radius: 10px;
      text-align: left;
      box-shadow: 0 2px 6px rgba(0,0,0,0.04);
    }

    .summary-card h3 {
      margin: 0;
      font-size: 14px;
      color: #888;
    }

    .summary-card p {
      font-size: 28px;
      margin: 8px 0 0;
      font-weight: bold;
    }

    .room-list {
      background: #fff;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 2px 6px rgba(0,0,0,0.05);
    }

    .room-list-header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-bottom: 16px;
    }

    .room-table {
      width: 100%;
      border-collapse: collapse;
    }

    .room-table th,
    .room-table td {
      padding: 12px;
      border-bottom: 1px solid #eee;
      text-align: left;
      font-size: 14px;
    }

    .status-tag {
      padding: 4px 10px;
      border-radius: 20px;
      font-size: 12px;
      font-weight: 600;
      display: inline-block;
    }

    .completed {
      background: #e6f4ea;
      color: #137333;
    }

    .in-progress {
      background: #fff4ce;
      color: #8a6d3b;
    }

    .on-hold {
      background: #fce8e6;
      color: #d93025;
    }

    .designer-img {
      width: 28px;
      height: 28px;
      border-radius: 50%;
      object-fit: cover;
      margin-right: 8px;
    }

    .designer-info {
      display: flex;
      align-items: center;
    }

    .action-icons i {
      margin-right: 10px;
      cursor: pointer;
      font-size: 16px;
    }

    .pagination {
      display: flex;
      justify-content: flex-end;
      align-items: center;
      margin-top: 16px;
    }

    .pagination button {
      padding: 6px 12px;
      margin-left: 4px;
      border: 1px solid #ddd;
      border-radius: 4px;
      background: white;
      cursor: pointer;
    }

    .pagination .active {
      background: #000;
      color: white;
    }

    .table-controls {
      display: flex;
      gap: 12px;
    }

    .table-controls button {
      padding: 6px 12px;
      border-radius: 6px;
      border: 1px solid #ccc;
      background: #f5f5f5;
      cursor: pointer;
    }
  </style>

  <div class="room-dashboard">
    <div class="header-row">
      <h2>Room Management</h2>
      <button class="add-btn">+ Add New Room</button>
    </div>

    <div class="summary-cards">
      <div class="summary-card">
        <h3>Total Rooms</h3>
        <p>248</p>
      </div>
      <div class="summary-card">
        <h3>In Progress</h3>
        <p>45</p>
      </div>
      <div class="summary-card">
        <h3>Completed</h3>
        <p>182</p>
      </div>
      <div class="summary-card">
        <h3>On Hold</h3>
        <p>21</p>
      </div>
    </div>

    <div class="room-list">
      <div class="room-list-header">
        <h3>Room List</h3>
        <div class="table-controls">
          <button>🔍 Filter</button>
          <button>⇅ Sort</button>
        </div>
      </div>

      <table class="room-table">
        <thead>
          <tr>
            <th>Room ID</th>
            <th>Room Name</th>
            <th>Project</th>
            <th>Status</th>
            <th>Designer</th>
            <th>Due Date</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>#R001</td>
            <td>Master Bedroom</td>
            <td>Luxury Villa</td>
            <td><span class="status-tag completed">Completed</span></td>
            <td>
              <div class="designer-info">
                <img src="https://i.pravatar.cc/28?img=1" class="designer-img" alt="John">
                John Doe
              </div>
            </td>
            <td>Dec 15, 2025</td>
            <td class="action-icons">
              <i title="Edit" class="fa fa-edit"></i>
              <i title="Delete" class="fa fa-trash text-danger"></i>
            </td>
          </tr>

          <tr>
            <td>#R002</td>
            <td>Living Room</td>
            <td>Modern Apartment</td>
            <td><span class="status-tag in-progress">In Progress</span></td>
            <td>
              <div class="designer-info">
                <img src="https://i.pravatar.cc/28?img=2" class="designer-img" alt="Jane">
                Jane Smith
              </div>
            </td>
            <td>Jan 20, 2025</td>
            <td class="action-icons">
              <i title="Edit" class="fa fa-edit"></i>
              <i title="Delete" class="fa fa-trash text-danger"></i>
            </td>
          </tr>

          <tr>
            <td>#R003</td>
            <td>Kitchen</td>
            <td>Urban Loft</td>
            <td><span class="status-tag on-hold">On Hold</span></td>
            <td>
              <div class="designer-info">
                <img src="https://i.pravatar.cc/28?img=3" class="designer-img" alt="Mike">
                Mike Johnson
              </div>
            </td>
            <td>Feb 28, 2025</td>
            <td class="action-icons">
              <i title="Edit" class="fa fa-edit"></i>
              <i title="Delete" class="fa fa-trash text-danger"></i>
            </td>
          </tr>
        </tbody>
      </table>

      <div class="pagination">
        <span>Showing 1 to 3 of 248 entries</span>
        <button class="active">1</button>
        <button>2</button>
        <button>3</button>
        <button>Next</button>
      </div>
    </div>
  </div>

</asp:Content>
