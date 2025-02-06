<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<style>
/* Contact Page Wrapper */
.contact-page {
    font-family: Arial, sans-serif;
    padding: 80px;
    background-color: #ade8f4;
    display: flex;
    flex-direction: column;
    align-items: center;
}

/* Contact Container */
.contact-container {
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    gap: 40px;
    max-width: 1200px;
    width: 100%;
    margin-top: 0px;
    padding: 30px;
    background: #fff;
    border-radius: 8px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

/* Left Section: Form */
.form-section,
.info-section {
    flex: 1;
    min-width: 300px;
    padding: 40px;
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    display: flex;
    flex-direction: column;
    align-items: center;
}

/* Title for Form and Info Section */
.form-section h1,
.form-section h3,
.info-section h3,
.map-section h3 {
    margin-bottom: 20px;
    color: #0056b3;
    font-size: 26px;
    text-align: center;
}

/* Form Controls */
.form-control {
    width: 100%;
    padding: 12px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    transition: border-color 0.3s ease-in-out;
}

.form-control:focus {
    border-color: #007bff;
    outline: none;
}

/* Half width for form elements */
.half {
    width: calc(50% - 10px);
    display: inline-block;
    margin-right: 20px;
}

.half:last-child {
    margin-right: 0;
}

/* Submit Button */
.submit-button {
    background: #007BFF;
    color: #fff;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    transition: background 0.3s;
    width: 100%;
    font-size: 16px;
}

.submit-button:hover {
    background: #0056b3;
}

/* Right Section: Contact Info */
.info-section ul {
    list-style: none;
    padding: 0;
    width: 100%;
    text-align: center;
}

.info-section ul li {
    font-size: 16px;
    color: #333;
    margin-bottom: 15px;
    display: flex;
    justify-content: center;
    align-items: center;
}

.info-section ul li strong {
    color: #007bff;
    margin-right: 8px;
}

.info-section a {
    text-decoration: none;
    color: #007bff;
    font-weight: bold;
}

.info-section a:hover {
    text-decoration: underline;
}

/* Map Section */
.map-section {
    width: 100%; /* Adjusted for better alignment on larger screens */
    max-width: 90%; /* Prevents overly stretched layout on large screens */
    margin: 40px auto; /* Centers the container with adequate spacing */
    padding: 25px;
    background: #fff;
    border-radius: 12px;
    box-shadow: 0 5px 10px rgba(0, 0, 0, 0.15);
    text-align: center;
}

.map-section iframe {
    width: 100%;
    height: 350px; /* Slightly increased height for better visibility */
    border: none;
    border-radius: 12px;
}

/* Responsive Design */
@media (max-width: 768px) {
    .contact-container {
        flex-direction: column; /* Stack form and info vertically on smaller screens */
        padding: 20px;
    }

    .form-section,
    .info-section {
        flex: 1 1 100%;
        padding: 40px; /* Reduced padding for smaller screens */
        margin-bottom: 10px;
    }

    .map-section {
        width: 95%; /* More width for smaller screens */
        padding: 20px;
    }

    .map-section iframe {
        height: 280px; /* Adjusted height for mobile screens */
    }
    .half {
        width: 100%; /* Full width for smaller screens */
        margin-right: 0;
        margin-bottom: 20px;
    }

    .submit-button {
        padding: 12px;
        font-size: 16px;
    }
}


</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <div class="contact-page">
        <div class="contact-container">
            <!-- Left Section: Contact Form -->
            <div class="form-section">
                <h3>GET IN TOUCH</h3>
                <h1>CONTACT US</h1>
                <asp:TextBox ID="txtName" CssClass="form-control full" Placeholder="Full Name" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtEmail" CssClass="form-control full" Placeholder="Email Address" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtPhone" CssClass="form-control full" Placeholder="Phone Number" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtMessage" TextMode="MultiLine" CssClass="form-control full" Placeholder="Your Message" runat="server"></asp:TextBox>
                <asp:Button ID="btnSubmit" CssClass="submit-button" Text="Send Message" runat="server" />
            </div>

            <!-- Right Section: Contact Information -->
            <div class="info-section">
                <h3>CONTACT INFORMATION</h3>
                <p>For any inquiries, please reach out to us.</p>
                <ul>
                    <li><strong>📍 Address:</strong> 123 E-Health Street, New Delhi, India</li>
                    <li><strong>📞 Phone:</strong> +91 9876543210</li>
                    <li><strong>📧 Email:</strong> support@ehealthcare.com</li>
                    <li><strong>🌐 Website:</strong> <a href="#">www.ehealthcare.com</a></li>
                    <li><strong>🕒 Hours:</strong> Mon - Fri: 9AM - 6PM</li>
                </ul>
            </div>
        </div>

        <!-- Google Map -->
        <div class="map-section">
            <h2>FIND US ON MAP</h2>
            <iframe 
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3651.548385230084!2d77.2090219149814!3d28.628989482417192!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390cfd1c45f8c5ab%3A0x5a1bcd8f5e48b3a9!2sNew%20Delhi%2C%20India!5e0!3m2!1sen!2sin!4v1696516461697!5m2!1sen!2sin" 
                allowfullscreen="" 
                loading="lazy">
            </iframe>
        </div>
    </div>

</asp:Content>

