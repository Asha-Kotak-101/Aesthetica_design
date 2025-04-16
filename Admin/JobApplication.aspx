<%@ Page Title="Job Applications" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeBehind="JobApplication.aspx.cs" Inherits="Aesthetica_design.Admin.JobApplication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .admin-container {
    padding: 30px;
}

.section-title {
    font-size: 24px;
    font-weight: 600;
}

.section-subtitle {
    color: #777;
    margin-bottom: 20px;
}

.top-bar {
    display: flex;
    gap: 10px;
    margin-bottom: 20px;
    justify-content: space-between;
    flex-wrap: wrap;
}

.search-input {
    padding: 8px;
    width: 220px;
}

.btn-filter {
    padding: 8px 14px;
    background-color: #f1f1f1;
    border: none;
}

.stats-grid {
    display: flex;
    gap: 20px;
    flex-wrap: wrap;
    margin-bottom: 30px;
}

.stat-card {
    display: flex;
    align-items: center;
    background: #fff;
    border-radius: 12px;
    box-shadow: 0 1px 3px rgba(0,0,0,0.05);
    padding: 16px;
    min-width: 220px;
    gap: 12px;
}

.stat-icon {
    font-size: 24px;
    padding: 12px;
    border-radius: 10px;
    color: #fff;
}

.icon-blue { background-color: #3b82f6; }
.icon-green { background-color: #10b981; }
.icon-yellow { background-color: #facc15; color: #000; }
.icon-red { background-color: #ef4444; }

.table-heading {
    font-size: 18px;
    margin-bottom: 10px;
    font-weight: 600;
}

.btn-export {
    float: right;
    margin-bottom: 10px;
    background: none;
    border: none;
    color: #333;
}

.table {
    width: 100%;
    border-collapse: collapse;
}

.table th, .table td {
    padding: 12px;
    border-bottom: 1px solid #eee;
    text-align: left;
}

.applicant-cell {
    display: flex;
    align-items: center;
    gap: 12px;
}

.applicant-img {
    width: 40px;
    height: 40px;
    border-radius: 50%;
    object-fit: cover;
}

.badge {
    padding: 4px 10px;
    border-radius: 12px;
    font-size: 12px;
    font-weight: 500;
    display: inline-block;
}

.badge-green { background-color: #e6f9f0; color: #28a745; }
.badge-yellow { background-color: #fff3cd; color: #856404; }
.badge-red { background-color: #f8d7da; color: #721c24; }

.action-icon {
    margin-right: 10px;
    color: #333;
}

.delete-icon {
    color: #dc3545;
}

.pagination {
    margin-top: 20px;
}

.pagination-btn {
    padding: 6px 12px;
    margin: 2px;
    background-color: #f1f1f1;
    border: none;
    cursor: pointer;
}

.pagination-btn.active {
    background-color: #000;
    color: #fff;
}

    </style>
    <div class="admin-container">
        <h2 class="section-title">Job Applications</h2>
        <p class="section-subtitle">Manage and review candidate applications</p>

        <div class="top-bar">
            <input type="text" placeholder="Search applications..." class="search-input" />
            <asp:Button ID="btnFilter" runat="server" Text="Filters" CssClass="btn-filter" />
        </div>

        <div class="stats-grid">
            <div class="stat-card">
                <div class="stat-icon icon-blue"><i class="fas fa-file-alt"></i></div>
                <div>
                    <h3>248</h3>
                    <p>Total Applications</p>
                </div>
            </div>
            <div class="stat-card">
                <div class="stat-icon icon-green"><i class="fas fa-inbox"></i></div>
                <div>
                    <h3>42</h3>
                    <p>New Applications</p>
                </div>
            </div>
            <div class="stat-card">
                <div class="stat-icon icon-yellow"><i class="fas fa-star"></i></div>
                <div>
                    <h3>28</h3>
                    <p>Shortlisted</p>
                </div>
            </div>
            <div class="stat-card">
                <div class="stat-icon icon-red"><i class="fas fa-times-circle"></i></div>
                <div>
                    <h3>18</h3>
                    <p>Rejected</p>
                </div>
            </div>
        </div>

        <h4 class="table-heading">Recent Applications</h4>
        <asp:Button ID="btnExport" runat="server" Text="Export" CssClass="btn-export" />

        <asp:GridView ID="gvApplications" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" GridLines="None">
            <Columns>
                <asp:TemplateField HeaderText="Applicant">
                    <ItemTemplate>
                        <div class="applicant-cell">
                            <img src='<%# Eval("ImageUrl") %>' class="applicant-img" />
                            <div>
                                <strong><%# Eval("Name") %></strong><br />
                                <span><%# Eval("Email") %></span>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Position" HeaderText="Position" />
                <asp:BoundField DataField="AppliedDate" HeaderText="Applied Date" DataFormatString="{0:MMM dd, yyyy}" />
                <asp:TemplateField HeaderText="Status">
                    <ItemTemplate>
                        <asp:Label ID="lblStatus" runat="server" Text='<%# Eval("Status") %>' CssClass='<%# GetStatusClass(Eval("Status").ToString()) %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Actions">
                    <ItemTemplate>
                        <a href="#" title="View"><i class="fas fa-eye action-icon"></i></a>
                        <a href="#" title="Delete"><i class="fas fa-trash-alt action-icon delete-icon"></i></a>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <div class="pagination">
            <asp:Button ID="btnPrev" runat="server" Text="Previous" CssClass="pagination-btn" />
            <asp:Button ID="btnPage1" runat="server" Text="1" CssClass="pagination-btn active" />
            <asp:Button ID="btnPage2" runat="server" Text="2" CssClass="pagination-btn" />
            <asp:Button ID="btnPage3" runat="server" Text="3" CssClass="pagination-btn" />
            <asp:Button ID="btnNext" runat="server" Text="Next" CssClass="pagination-btn" />
        </div>
    </div>
</asp:Content>
