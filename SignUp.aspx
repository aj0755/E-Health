<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register | e-Health Care</title>
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
            height: 130vh;
            margin: 0;
            animation: fadeIn 1.5s ease-in-out;
        }

        /* Fade-in animation */
        @keyframes fadeIn {
            0% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }

        /* Registration Container */
        .registration-container {
            width: 100%;
            max-width: 450px;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.15);
            text-align: center;
            transition: all 0.3s ease-in-out;
        }

        .registration-container:hover {
            box-shadow: 0 8px 36px rgba(0, 0, 0, 0.2);
        }

        h2 {
            color: #2196F3;
            font-weight: bold;
            font-size: 28px;
            margin-bottom: 25px;
        }

        .input-group {
            margin-bottom: 15px;
            text-align: left;
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

        /* Buttons */
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

        /* Links */
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

        /* Error Message */
        .error-message {
            color: #F44336;
            font-size: 14px;
            margin-top: 10px;
            text-align: center;
        }

        /* Modal Styles */
        .modal {
            display: inline-block;
            position: relative;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            justify-content: center;
            align-items: center;
        }

        .modal-content {
            background-color: #fff;
            padding: 2rem;
            border-radius: 8px;
            margin:50px auto;
            width: 60%;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .modal .input-box {
            margin: 1rem 0;
            padding: 0.5rem;
            width: 100%;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="registration-container">
        <h2>Create Your Account</h2>
        <form id="Form1" runat="server">
            <!-- Full Name -->
            <div class="input-group">
                <label for="fullname">Full Name</label>
                <asp:TextBox ID="txtFullName" runat="server" Placeholder="Enter your full name" AutoComplete="off" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtFullName" ErrorMessage="Full Name is required!" 
                    ForeColor="Red" Font-Size="Small" />
            </div>

            <!-- Email -->
            <div class="input-group">
                <label for="email">Email Address</label>
                <asp:TextBox ID="txtEmail" runat="server" Placeholder="Enter your email" AutoComplete="off" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Email is required!" 
                    ForeColor="Red" Font-Size="Small" />
                <br />
                <asp:RegularExpressionValidator ID="RegexEmailValidator" runat="server" 
                    ControlToValidate="txtEmail" 
                    ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" 
                    ErrorMessage="Please enter a valid email address" 
                    ForeColor="Red" Font-Size="Small" />
            </div>

            <!-- Phone Number -->
            <div class="input-group">
                <label for="phone">Phone Number</label>
                <asp:TextBox ID="txtPhoneNumber" runat="server" Placeholder="Enter your phone number" AutoComplete="off" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtPhoneNumber" ErrorMessage="Phone number is required!" 
                    ForeColor="Red" Font-Size="Small" />
                <br />
                <asp:RegularExpressionValidator ID="RegexPhoneValidator" runat="server" 
                    ControlToValidate="txtPhoneNumber" 
                    ValidationExpression="^\d{10}$" 
                    ErrorMessage="Please enter a valid 10-digit phone number" 
                    ForeColor="Red" Font-Size="Small" />
            </div>

            <!-- Password -->
            <div class="input-group">
                <label for="password">Password</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Placeholder="Enter your password" AutoComplete="off" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtPassword" ErrorMessage="Password is required!" 
                    ForeColor="Red" Font-Size="Small" />
            </div>

            <!-- Confirm Password -->
            <div class="input-group">
                <label for="confirmPassword">Confirm Password</label>
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" Placeholder="Confirm your password" AutoComplete="off" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtConfirmPassword" ErrorMessage="Confirm Password is required!" 
                    ForeColor="Red" Font-Size="Small" />
                <br />
                <asp:CompareValidator ID="ComparePasswordValidator" runat="server" 
                    ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" 
                    ErrorMessage="Passwords do not match" 
                    ForeColor="Red" Font-Size="Small" />
            </div>

            <!-- Register Button -->
            <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn"/>

            <!-- Error Message -->
            <div class="error-message">
                <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red" Visible="false" />
            </div>

            <!-- OTP Modal -->
            <div id="otpModal" class="modal" runat="server" visible="false">
                <div class="modal-content">
                    <h3>Verify Your Email</h3>
                    <p>An OTP has been sent to your email. Please enter it below:</p>
                    <asp:TextBox ID="txtOtp" runat="server" CssClass="input-box" Placeholder="Enter OTP"></asp:TextBox>
                    <asp:Button ID="btnVerifyOtp" runat="server" Text="Verify OTP" CssClass="btn-submit" />
                    <asp:Label ID="lblOtpMessage" runat="server" CssClass="error-message"></asp:Label>
                </div>
            </div>
        </form>

        <div class="links">
            <a href="Login.aspx">Already have an account? Login</a>
        </div>
    </div>
</body>
</html>
