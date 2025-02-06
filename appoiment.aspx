<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="appoiment.aspx.cs" Inherits="appoiment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <link rel="icon" href="favicon.ico" type="image/x-icon">
 
  <style>
      
            @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        .main-container {
            display: flex;
            margin:20px 0px 20px 18%;
            justify-content: center;
            align-items: center;
            max-width:1000px;
            width: 100%;
            background: #fff;
            border-radius: 20px;
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.2);
        }

        .left-container {
            width: 50%;
            padding: 30px;
        }

        .right-container {
            width: 50%;       
            background-size: cover;
            background-position: center;
            height: 100%;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
            font-weight: bold;
        }

        input, select, textarea, button {
            width: 100%;
            padding: 14px;
            margin: 12px 0;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-sizing: border-box;
            transition: all 0.3s ease;
        }

        input:focus, select:focus, textarea:focus {
            border-color: #74ebd5;
            outline: none;
            box-shadow: 0 0 8px rgba(116, 235, 213, 0.6);
        }

        button {
            background-color: #74ebd5;
            color: white;
            border: none;
            cursor: pointer;
            font-weight: bold;
        }

        button:hover {
            background-color: #4bb6a4;
            transform: scale(1.05);
        }

        .summary {
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 10px;
            margin-top: 15px;
            display: none;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .loading {
            display: none;
            text-align: center;
            color: #0077b6;
            font-weight: bold;
        }
    </style>
     <div class="main-container">
        <!-- Left Container (Form Details) -->
        <div class="left-container">
            <h2>Book an Appointment</h2>
            <form id="appointmentForm">
                <input type="text" name="name" placeholder="Full Name" required>
                <input type="email" name="email" placeholder="Email Address" required>
                <input type="text" name="contact" placeholder="Contact Number" required>
                <select name="doctor" required>
                    <option value="">Select Doctor</option>
                    <option value="Dr. Smith">Dr. Smith</option>
                    <option value="Dr. Johnson">Dr. Johnson</option>
                    <option value="Dr. Lee">Dr. Lee</option>
                </select>
                <input type="date" name="date" required>
                <input type="time" name="time" required>
                <textarea name="reason" placeholder="Reason for Appointment" required></textarea>
                <button type="submit">Book Appointment</button>
            </form>

            <div class="loading">Booking your appointment...</div>

            <div class="summary" id="summary">
                <h3>Appointment Summary</h3>
                <p id="summaryDetails"></p>
            </div>
        </div>

        <!-- Right Container (Image) -->
        <div class="right-container">
         <img src="Home_images/app.jpg" />
        </div>
    </div>

    <script>
        document.getElementById('appointmentForm').addEventListener('submit', function(event) {
            event.preventDefault();

            document.querySelector('.loading').style.display = 'block';

            setTimeout(() => {
                document.querySelector('.loading').style.display = 'none';

                const formData = new FormData(event.target);
                const summaryDetails = `
                    <strong>Name:</strong> ${formData.get('name')}<br>
                    <strong>Email:</strong> ${formData.get('email')}<br>
                    <strong>Contact:</strong> ${formData.get('contact')}<br>
                    <strong>Doctor:</strong> ${formData.get('doctor')}<br>
                    <strong>Date:</strong> ${formData.get('date')}<br>
                    <strong>Time:</strong> ${formData.get('time')}<br>
                    <strong>Reason:</strong> ${formData.get('reason')}
                `;

                document.getElementById('summaryDetails').innerHTML = summaryDetails;
                document.getElementById('summary').style.display = 'block';
            }, 1500);
        });
    </script>

</asp:Content>

