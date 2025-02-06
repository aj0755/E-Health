<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Aboutus.aspx.cs" Inherits="Aboutus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<style>
         header {
            background: #007bff;
            color: #fff;
            padding: 20px;
            justify-container:center;
            text-align: center;
            font-size: 26px;
            font-weight: bold;
        }
        .container {
            width: 100%;
            margin: auto;
            padding: 40px;
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }
        .section {
            text-align: center;
            margin-bottom: 40px;
        }
        .section h2 {
            color: #007bff;
            font-size: 30px;
            margin-bottom: 10px;
        }
        .section p {
            font-size: 18px;
            line-height: 1.8;
            max-width: 900px;
            margin: auto;
            color: #555;
        }
         .values {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 4fr));
            gap: 20px;
            max-width: 900px;
            margin: auto;    
        }

        .values h3 {
            font-size: 1.5em;
            color: #007bff;
            margin-bottom: 10px;
        }

        .values p {
            font-size: 1em;
            color: #555;
            line-height: 1.5;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <header>About Us - E-Health Care</header>
    <div class="container">
        <section class="section">
            <h2>Who We Are</h2>
            <p>At E-Health Care, we are dedicated to revolutionizing healthcare by providing accessible, affordable, and high-quality medical services through digital innovation. Our goal is to bridge the gap between patients and healthcare professionals using cutting-edge technology.</p>
        </section>
        <section class="section">
            <h2>Our Mission</h2>
            <p>Our mission is to enhance healthcare accessibility through innovative digital solutions, ensuring that everyone receives timely medical assistance, no matter where they are. We prioritize patient well-being, quality treatment, and data security.</p>
        </section>
        <section class="section">
            <h2>Our Vision</h2>
            <p>We envision a future where healthcare is seamlessly integrated with technology, providing instant access to medical advice, prescriptions, and consultations. Our vision is to create a healthier world by eliminating barriers to quality medical care.</p>
        </section>
        <section class="section">
       <h2><center>Our Core Values</center></h2>
    <div class="values">
        <div>
            <h3>Innovation</h3>
            <p>Embracing cutting-edge technology to improve healthcare services.</p>
        </div>
        <div>
            <h3>Accessibility</h3>
            <p>Ensuring healthcare is available to everyone, anytime, anywhere.</p>
        </div>
        <div>
            <h3>Trust</h3>
            <p>Maintaining the highest standards of medical ethics and confidentiality.</p>
        </div>
        <div>
            <h3>Compassion</h3>
            <p>Providing patient-centered care with empathy and dedication.</p>
        </div>
    </div>
</section>
    </div>
    

</asp:Content>

