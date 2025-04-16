<%@ Page Title="Career Admin" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeBehind="CareerAdmin.aspx.cs" Inherits="Aesthetica_design.Admin.CareerAdmin" %>

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

.toolbar {
    display: flex;
    gap: 10px;
    margin-bottom: 20px;
    flex-wrap: wrap;
}

.search-input {
    padding: 8px;
    width: 200px;
}

.dropdown {
    padding: 8px;
}

.btn-primary {
    background-color: #000;
    color: #fff;
    padding: 8px 15px;
    border: none;
    cursor: pointer;
}

.table {
    width: 100%;
    border-collapse: collapse;
}

.table th, .table td {
    padding: 12px;
    text-align: left;
    border-bottom: 1px solid #eee;
}

.badge {
    padding: 4px 10px;
    border-radius: 10px;
    font-size: 12px;
    font-weight: 500;
}

.badge-blue {
    background-color: #e0f0ff;
    color: #007bff;
}

.badge-green {
    background-color: #e6f9f0;
    color: #28a745;
}

.badge-yellow {
    background-color: #fff3cd;
    color: #856404;
}

.badge-red {
    background-color: #f8d7da;
    color: #721c24;
}

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
        <h2 class="section-title">Job Opportunities</h2>
        <p class="section-subtitle">Manage job postings and opportunities</p>

        <div class="toolbar">
            <input type="text" placeholder="Search positions..." class="search-input" />
            <select class="dropdown">
                <option>All Departments</option>
                <option>Design</option>
                <option>Project Management</option>
                <option>Architecture</option>
            </select>
            <select class="dropdown">
                <option>All Locations</option>
                <option>New York</option>
                <option>London</option>
                <option>Dubai</option>
            </select>
            <asp:Button ID="btnAddPosition" runat="server" Text="+ Add New Position" CssClass="btn-primary" />
        </div>

        <asp:GridView ID="gvJobs" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" GridLines="None">
            <Columns>
                <asp:BoundField DataField="Position" HeaderText="Position" />
                <asp:BoundField DataField="Department" HeaderText="Department" />
                <asp:BoundField DataField="Location" HeaderText="Location" />
                <asp:BoundField DataField="PostedDate" HeaderText="Posted Date" DataFormatString="{0:MMM dd, yyyy}" />
                <asp:TemplateField HeaderText="Applications">
                    <ItemTemplate>
                        <span class="badge badge-blue"><%# Eval("Applications") %> New</span>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Status">
                    <ItemTemplate>
                        <asp:Label ID="lblStatus" runat="server" Text='<%# Eval("Status") %>' CssClass='<%# GetStatusClass(Eval("Status").ToString()) %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Actions">
                    <ItemTemplate>
                        <a href="#" title="Edit"><i class="fas fa-edit action-icon"></i></a>
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
