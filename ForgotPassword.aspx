<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password | e-Health Care</title>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body */
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #2196F3, #03A9F4); /* Sky blue gradient */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            animation: fadeIn 1.5s ease-in-out;
        }

        /* Forgot Password Container */
        .forgot-password-container {
            width: 100%;
            max-width: 450px;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.15);
            text-align: center;
            transition: all 0.3s ease-in-out;
        }

        .forgot-password-container:hover {
            box-shadow: 0 8px 36px rgba(0, 0, 0, 0.2);
        }

        h2 {
            color: #2196F3;
            font-weight: bold;
            font-size: 28px;
            margin-bottom: 25px;
        }

        .input-group {
            text-align: left;
            margin-bottom: 20px;
        }

        .input-group label {
            font-size: 16px;
            color: #333333;
            display: block;
            margin-bottom: 8px;
        }

        .input-group input {
            width: 100%;
            padding: 12px;
            border: 1px solid #B3E5FC;
            border-radius: 8px;
            font-size: 16px;
            outline: none;
            transition: border-color 0.3s ease-in-out;
        }

        .input-group input:focus {
            border-color: #2196F3;
        }

        .btn {
            width: 100%;
            padding: 14px;
            background-color: #2196F3;
            border: none;
            border-radius: 8px;
            color: white;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out;
        }

        .btn:hover {
            background-color: #1E88E5;
        }

        .links {
            margin-top: 20px;
        }

        .links a {
            text-decoration: none;
            color: #03A9F4;
            font-size: 14px;
            margin: 5px;
            display: inline-block;
        }

        .links a:hover {
            color: #0288D1;
            text-decoration: underline;
        }

        .error-message {
            color: #F44336;
            font-size: 14px;
            margin-top: 10px;
        }

        /* Animation */
        @keyframes fadeIn {
            0% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }
    </style>
</head>
<body>
    <div class="forgot-password-container">
        <h2>Forgot Your Password?</h2>
        <form id="Form1" runat="server">
            <div class="input-group">
                <label for="email">Enter your registered email</label>
                <asp:TextBox ID="txtEmail" runat="server" Placeholder="Enter your email" AutoComplete="off" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Please enter your email." 
                    ForeColor="Red" />
            </div>

            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn" />

            <div class="error-message">
                <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red" Visible="false" />
            </div>
        </form>

        <div class="links">
            <a href="Login.aspx">Back to Login</a>
        </div>
    </div>
</body>
</html>