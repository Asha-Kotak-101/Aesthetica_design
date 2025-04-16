<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Aesthetica_design.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Register
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        .register-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            text-align: center;
        }

        .register-container h2 {
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .register-container p {
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

        .btn-register, .btn-signin {
            padding: 10px 20px;
            font-size: 14px;
            border-radius: 4px;
            border: none;
            cursor: pointer;
        }

        .btn-register {
            background-color: #000;
            color: #fff;
            margin-top: 10px;
            width: 100%;
        }

        .btn-register:hover {
            background-color: #333;
        }

        .btn-signin {
            margin-top: 10px;
            background-color: #fff;
            border: 1px solid #000;
            width: 100%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="register-container">
        <h2>Register</h2>
        <p>Create a new account to explore the world of interior design</p>

        <div class="form-group">
            <label for="txtFullName">Full Name</label>
            <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" placeholder="Enter your full name"></asp:TextBox>
            <div class="form-note">Please provide your full name</div>
        </div>

        <div class="form-group">
            <label for="txtEmail">Email</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" placeholder="Enter your email"></asp:TextBox>
            <div class="form-note">We’ll send a verification link to this email</div>
        </div>

        <div class="form-group">
            <label for="txtPassword">Password</label>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter a password"></asp:TextBox>
            <div class="form-note">Password must be at least 8 characters</div>
        </div>

        <div class="form-group">
            <label for="txtConfirmPassword">Confirm Password</label>
            <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Re-enter your password"></asp:TextBox>
            <div class="form-note">Passwords must match</div>
        </div>

        <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn-register" OnClick="btnRegister_Click" />

        <asp:Button ID="btnSignIn" runat="server" Text="Already have an account? Sign in" CssClass="btn-signin" PostBackUrl="~/SignIn.aspx" />
    </div>
</asp:Content>