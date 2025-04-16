<%@ Page Title="Settings" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeBehind="SettingAdmin.aspx.cs" Inherits="Aesthetica_design.Admin.SettingAdmin" %>

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

        .profile-box {
            background-color: #fff;
            border-radius: 12px;
            padding: 30px;
            max-width: 600px;
        }

        .profile-photo {
            display: flex;
            align-items: center;
            gap: 20px;
            margin-bottom: 30px;
        }

        .profile-photo img {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            object-fit: cover;
            border: 2px solid #ddd;
        }

        .change-photo-btn {
            padding: 8px 14px;
            background-color: #000;
            color: #fff;
            border: none;
            cursor: pointer;
        }

        .form-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
            margin-bottom: 20px;
        }

        .form-group {
            display: flex;
            flex-direction: column;
        }

        .form-group label {
            font-weight: 500;
            margin-bottom: 5px;
        }

        .form-group input,
        .form-group textarea {
            padding: 10px;
            border-radius: 6px;
            border: 1px solid #ccc;
            font-size: 14px;
        }

        .form-group.full-width {
            grid-column: span 2;
        }

        .save-btn {
            background-color: #000;
            color: #fff;
            padding: 10px 20px;
            border: none;
            float: right;
            border-radius: 6px;
        }
    </style>

    <div class="admin-container">
        <h2 class="section-title">Settings</h2>
        <p class="section-subtitle">Manage your account settings and preferences</p>

        <div class="profile-box">
            <div class="profile-photo">
                <asp:Image ID="imgProfile" runat="server" ImageUrl="~/Assets-1/Images/img1.png" />
                <asp:FileUpload ID="fileUploadPhoto" runat="server" CssClass="d-none" />
                <asp:Button ID="btnChangePhoto" runat="server" Text="Change Photo" CssClass="change-photo-btn" />
            </div>

            <div class="form-grid">
                <div class="form-group">
                    <label>First Name</label>
                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" Text="Ritika" />
                </div>
                <div class="form-group">
                    <label>Last Name</label>
                    <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" Text="Vaghasiya" />
                </div>
                <div class="form-group full-width">
                    <label>Email</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Text="john@example.com" />
                </div>
                <div class="form-group full-width">
                    <label>Bio</label>
                    <asp:TextBox ID="txtBio" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control" />
                </div>
            </div>

            <asp:Button ID="btnSaveChanges" runat="server" Text="Save Changes" CssClass="save-btn" />
        </div>
    </div>
</asp:Content>
