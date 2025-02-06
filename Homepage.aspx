<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <!-- Hero Section -->
    <div class="hero-section">
        <h2>Welcome to E-Healthcare</h2>
        <p>Your trusted partner for a healthier life.</p>
        <asp:Button ID="btnBookNow" CssClass="btn btn-orange" runat="server" 
            Text="Book Now" onclick="btnBookNow_Click" />
        
    </div>
    
    <!-- About Us Section -->
   <div class="about-section">
        <div class="about-container">
            <div class="about-image">
                <img src="Images/aboutus.jpeg" alt="Medical Professionals" />
            </div>
            <div class="about-content">
                <h2>About Us</h2>
                <h3>Best Medical Care for Yourself and Your Family</h3>
                <p>
                    At E-Healthcare, we provide top-notch medical services to ensure the health and well-being of you and your loved ones.
                    Our experienced team of doctors, nurses, and support staff is dedicated to offering compassionate care, accurate diagnostics,
                    and advanced treatment options. We strive to create a welcoming environment for our patients to feel safe and cared for.
                </p>
                <a href="Aboutus.aspx" class="read-more-btn">Read More</a>
            </div>
        </div>
    </div>
    <!-- Services Section -->
<div class="services-section">
    <h2 class="section-title">Excellent Medical Services</h2>
    <div class="services-container">
        <div class="service-card">
            <div class="service-icon">
                <i class="fas fa-user-md"></i>
            </div>
            <h3>Emergency Care</h3>
            <p>Emergency care is the cornerstone of saving lives during critical situations. It involves providing immediate medical attention to patients suffering from acute illnesses, injuries, or trauma. Equipped with state-of-the-art facilities and skilled medical professionals, emergency care ensures that every second counts, delivering life-saving treatments swiftly and efficiently.</p>
        </div>
        <div class="service-card">
            <div class="service-icon">
                <i class="fas fa-syringe"></i>
            </div>
            <h3>Operation & Surgery</h3>
            <p>Our operation and surgery department is equipped with advanced technology and a team of highly qualified surgeons. From minor procedures to complex surgeries, we offer precision, care, and expertise. Patient safety, comfort, and successful outcomes are our top priorities throughout the pre-operative, operative, and post-operative stages.

</p>
        </div>
        <div class="service-card">
            <div class="service-icon">
                <i class="fas fa-stethoscope"></i>
            </div>
            <h3>Outdoor Checkup</h3>
            <p>Regular outdoor checkups are essential for maintaining overall health and well-being. These consultations focus on diagnosing and preventing potential health issues early. Whether it’s a routine physical exam or monitoring chronic conditions, our medical experts provide personalized care tailored to each patient’s needs.</p>
        </div>
        <div class="service-card">
            <div class="service-icon">
                <i class="fas fa-ambulance"></i>
            </div>
            <h3>Ambulance Service</h3>
            <p>Our ambulance services are available 24/7 to respond to emergencies quickly and efficiently. Equipped with modern life-support systems and manned by trained paramedics, our ambulances ensure timely transportation of patients to the hospital while delivering critical care en route.</p>
        </div>
        <div class="service-card">
            <div class="service-icon">
                <i class="fas fa-pills"></i>
            </div>
            <h3>Medicine & Pharmacy</h3>
            <p>Our pharmacy provides a comprehensive range of medicines to meet all your healthcare needs. We ensure that medications are sourced from trusted manufacturers, maintaining the highest standards of quality and safety. Additionally, our pharmacists offer guidance on dosage, interactions, and side effects for better health management.</p>
        </div>
        <div class="service-card">
            <div class="service-icon">
                <i class="fas fa-vials"></i>
            </div>
            <h3>Blood Testing</h3>
            <p>Blood testing is a fundamental diagnostic tool that helps identify underlying health issues. From routine blood panels to specialized tests, our laboratory ensures accurate results using advanced technology. Early detection through blood tests can significantly improve treatment outcomes and overall health.</p>
        </div>
    </div>
</div>

   <!-- Doctor Section in Homepage -->
<section class="doctor-page">
    <h1 class="section-title">Meet Our Doctors</h1>
    <div class="doctor-container">

        <!-- Doctor 1 -->
        <div class="doctor-card">
            <img src="Images/team-1.jpg" alt="Dr. John Doe" class="doctor-img" />
            <h2 class="doctor-name">Dr. John Doe</h2>
            <p class="specialty">Cardiologist</p>
            <p class="bio">15+ years of experience in advanced cardiovascular treatments.</p>
            <button class="book-btn">Book Appointment</button>
        </div>

        <!-- Doctor 2 -->
        <div class="doctor-card">
            <img src="Images/team-3.jpg" alt="Dr. Emily Smith" class="doctor-img" />
            <h2 class="doctor-name">Dr. Emily Smith</h2>
            <p class="specialty">Dermatologist</p>
            <p class="bio">Expert in skincare and dermatology treatments.</p>
            <button class="book-btn">Book Appointment</button>
        </div>

        <!-- Doctor 3 -->
        <div class="doctor-card">
            <img src="Images/team-2.jpg" alt="Dr. James Davis" class="doctor-img">
            <h2 class="doctor-name">Dr. James Davis</h2>
            <p class="specialty">Neurologist</p>
            <p class="bio">Specialist in treating neurological disorders.</p>
            <button class="book-btn">Book Appointment</button>
        </div>

        <!-- Doctor 4 -->
        <div class="doctor-card">
            <img src="Images/testimonial-1.jpg" alt="Dr. Sophia Johnson" class="doctor-img">
            <h2 class="doctor-name">Dr. Sophia Johnson</h2>
            <p class="specialty">Orthopedic Surgeon</p>
            <p class="bio">Expert in bone and joint recovery treatments.</p>
            <button class="book-btn">Book Appointment</button>
        </div>

        <!-- Doctor 5 -->
        <div class="doctor-card">
            <img src="Images/doctor5.jpg"alt="Dr. Robert Wilson" class="doctor-img">
            <h2 class="doctor-name">Dr. Robert Wilson</h2>
            <p class="specialty">Pediatrician</p>
            <p class="bio">Dedicated to children's health and wellness.</p>
            <button class="book-btn">Book Appointment</button>
        </div>

        <!-- Doctor 6 -->
        <div class="doctor-card">
            <img src="Images/doctor6.jpg" alt="Dr. Olivia White" class="doctor-img">
            <h2 class="doctor-name">Dr. Olivia White</h2>
            <p class="specialty">General Physician</p>
            <p class="bio">Providing high-quality primary healthcare services.</p>
            <button class="book-btn">Book Appointment</button>
        </div>

    </div>
</section>
<script>
        // Check if the query string contains login=success
        const urlParams = new URLSearchParams(window.location.search);
        if (urlParams.get('login') === 'success') {
        alertify.set('notifier', 'position', 'top-right');
            alertify.success('You are successfully logged in!');
            const newURL = window.location.href.split('?')[0];
        window.history.replaceState({}, document.title, newURL);
        }
</script>

</asp:Content>

