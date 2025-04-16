<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Aesthetica_design.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Login
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        .login-container {
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            text-align: center;
        }

        .login-container h2 {
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .login-container p {
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

        .form-actions {
            display: flex;
            justify-content: space-between;
            gap: 10px;
        }

        .btn-login, .btn-forgot {
            padding: 10px;
            font-size: 14px;
            border-radius: 4px;
            border: none;
            cursor: pointer;
            width: 100%;
        }

        .btn-login {
            background-color: #000;
            color: #fff;
        }

        .btn-login:hover {
            background-color: #333;
        }

        .btn-forgot {
            background-color: #fff;
            border: 1px solid #000;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-container">
        <h2>Login</h2>
        <p>Enter your credentials to access your account</p>

        <div class="form-group">
            <label for="txtEmail">Email</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" placeholder="Enter your email"></asp:TextBox>
            <div class="form-note">We’ll never share your email with anyone else</div>
        </div>

        <div class="form-group">
            <label for="txtPassword">Password</label>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter your password"></asp:TextBox>
            <div class="form-note">Password must be at least 8 characters</div>
        </div>

        <div class="form-actions">
            <asp:Button ID="btnForgotPassword" runat="server" Text="Forgot Password?" CssClass="btn-forgot" OnClick="btnForgotPassword_Click" />
            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn-login" OnClick="btnLogin_Click" />
        </div>
    </div>
</asp:Content>
