<%@ Page Title="Blog Admin" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeBehind="BlogAdmin.aspx.cs" Inherits="Aesthetica_design.Admin.BlogAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

  <style>
    body {
  margin: 0;
  font-family: 'Segoe UI', sans-serif;
  background: #f5f5f5;
}

.container {
  max-width: 1100px;
  margin: 40px auto;
  background: white;
  padding: 24px;
  border-radius: 10px;
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.05);
}

.header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 24px;
}

.title-section h1 {
  margin: 0;
  font-size: 24px;
}

.title-section p {
  margin: 4px 0 0;
  color: #777;
  font-size: 14px;
}

.new-post-button {
  background: black;
  color: white;
  padding: 10px 16px;
  border: none;
  border-radius: 6px;
  cursor: pointer;
  font-weight: bold;
}

.filters {
  display: flex;
  flex-wrap: wrap;
  gap: 16px;
  margin-bottom: 24px;
}

.filters input,
.filters select {
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 6px;
  flex: 1;
  min-width: 200px;
}

table {
  width: 100%;
  border-collapse: collapse;
  margin-bottom: 20px;
}

thead {
  background-color: #f0f0f0;
}

th, td {
  padding: 12px 16px;
  text-align: left;
  border-bottom: 1px solid #ddd;
  vertical-align: middle;
}

.post-title,
.author {
  display: flex;
  align-items: center;
  gap: 10px;
}

.post-title img,
.author img {
  border-radius: 50%;
}

.status {
  padding: 4px 10px;
  border-radius: 20px;
  font-size: 12px;
  font-weight: 600;
}

.status.published {
  background-color: #e6f4ea;
  color: #137333;
}

.status.draft {
  background-color: #fff4ce;
  color: #8a6d3b;
}

.actions button {
  background: none;
  border: none;
  cursor: pointer;
  font-size: 16px;
}

.pagination {
  display: flex;
  justify-content: space-between;
  align-items: center;
  font-size: 14px;
}

.page-buttons {
  display: flex;
  gap: 6px;
}

.page-buttons button {
  padding: 6px 12px;
  border: 1px solid #ccc;
  background: white;
  cursor: pointer;
  border-radius: 4px;
}

.page-buttons .active {
  background: black;
  color: white;
  font-weight: bold;
}
  </style>

  <div class="container">
    <div class="header">
      <div class="title-section">
        <h1>Blog Posts</h1>
        <p>Manage your blog content</p>
      </div>
      <button class="new-post-button">+ New Post</button>
    </div>

    <div class="filters">
      <input type="text" placeholder="Search posts..." />
      <select>
        <option>All Categories</option>
        <option>Interior Design</option>
        <option>Decoration</option>
      </select>
      <select>
        <option>Status</option>
        <option>Published</option>
        <option>Draft</option>
      </select>
    </div>

    <table>
      <thead>
        <tr>
          <th>Title</th>
          <th>Category</th>
          <th>Author</th>
          <th>Status</th>
          <th>Date</th>
          <th>Actions</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>
            <div class="post-title">
              <img src="https://via.placeholder.com/40" alt="thumb" />
              <span>Modern Interior Design Trends 2025</span>
            </div>
          </td>
          <td>Interior Design</td>
          <td>
            <div class="author">
              <img src="https://via.placeholder.com/24" alt="avatar" />
              <span>Sarah Johnson</span>
            </div>
          </td>
          <td><span class="status published">Published</span></td>
          <td>Jan 15, 2025</td>
          <td class="actions">
            <button>✏️</button>
            <button>🗑️</button>
          </td>
        </tr>
        <tr>
          <td>
            <div class="post-title">
              <img src="https://via.placeholder.com/40" alt="thumb" />
              <span>Luxury Bedroom Designs</span>
            </div>
          </td>
          <td>Decoration</td>
          <td>
            <div class="author">
              <img src="https://via.placeholder.com/24" alt="avatar" />
              <span>Mike Wilson</span>
            </div>
          </td>
          <td><span class="status draft">Draft</span></td>
          <td>Jan 12, 2025</td>
          <td class="actions">
            <button>✏️</button>
            <button>🗑️</button>
          </td>
        </tr>
      </tbody>
    </table>

    <div class="pagination">
      <p>Showing 1 to 2 of 12 entries</p>
      <div class="page-buttons">
        <button>Previous</button>
        <button class="active">1</button>
        <button>2</button>
        <button>3</button>
        <button>Next</button>
      </div>
    </div>
  </div>

</asp:Content>
