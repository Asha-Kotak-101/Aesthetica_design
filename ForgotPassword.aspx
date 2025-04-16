<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Aesthetica_design.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Forgot Password
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        .forgot-container {
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            text-align: center;
        }

        .forgot-container h2 {
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .forgot-container p {
            font-size: 16px;
            color: #555;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 20px;
            text-align: left;
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

        .form-note {
            font-size: 12px;
            color: #777;
            margin-top: 5px;
        }

        .btn-submit {
            background-color: #000;
            color: white;
            padding: 10px 25px;
            border: none;
            font-size: 14px;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn-submit:hover {
            background-color: #333;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="forgot-container">
        <h2>Forgot Password</h2>
        <p>Enter your email to reset your password</p>

        <div class="form-group">
            <label for="txtEmail">Email</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" placeholder="Enter your email"></asp:TextBox>
            <div class="form-note">We’ll never share your email with anyone else</div>
        </div>

        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn-submit" OnClick="btnSubmit_Click" />
    </div>
</asp:Content>