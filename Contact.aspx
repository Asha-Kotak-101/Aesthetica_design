<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Aesthetica_design.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Contact Us
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        .contact-form-container {
            max-width: 600px;
            margin: 40px auto;
            padding: 20px;
        }

        .contact-form-container h2 {
            text-align: center;
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            font-weight: 600;
            display: block;
            margin-bottom: 5px;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .form-actions {
            display: flex;
            justify-content: space-between;
        }

        .btn-reset, .btn-submit {
            padding: 10px 20px;
            font-size: 14px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn-reset {
            background-color: #fff;
            border: 1px solid #000;
        }

        .btn-submit {
            background-color: #000;
            color: #fff;
        }

        .btn-submit:hover {
            background-color: #333;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contact-form-container">
        <h2>Contact Us</h2>

        <div class="form-group">
            <label for="txtName">Your Name</label>
            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter your name"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="txtEmail">Your Email</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" placeholder="Enter your email"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="txtMessage">Message</label>
            <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" MaxLength="500" placeholder="Type your message here"></asp:TextBox>
        </div>

        <div class="form-actions">
            <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn-reset" OnClick="btnReset_Click" />
            <asp:Button ID="btnSend" runat="server" Text="Send Message" CssClass="btn-submit" OnClick="btnSend_Click" />
        </div>
    </div>
</asp:Content>
