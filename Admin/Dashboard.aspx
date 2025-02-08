<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Admin_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="dashboard">
        <h1>Dashboard</h1>
        
        <div class="dashboard-cards">
            <div class="card">
                <h2>Total Doctors</h2>
                <asp:Label ID="lblDoctorsCount" runat="server" CssClass="count-label" />
            </div>

            <div class="card">
                <h2>Total Patients</h2>
                <asp:Label ID="lblPatientsCount" runat="server" CssClass="count-label" />
            </div>

            <div class="card">
                <h2>Appointments Today</h2>
                <asp:Label ID="lblAppointmentsToday" runat="server" CssClass="count-label" />
            </div>

            <div class="card">
                <h2>Pending Reports</h2>
                <asp:Label ID="lblPendingReports" runat="server" CssClass="count-label" />
            </div>
        </div>

        <div class="recent-appointments">
            <h2>Recent Appointments</h2>
            <asp:GridView ID="gvRecentAppointments" runat="server" CssClass="appointments-table" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="PatientName" HeaderText="Patient Name" />
                    <asp:BoundField DataField="DoctorName" HeaderText="Doctor Name" />
                    <asp:BoundField DataField="AppointmentDate" HeaderText="Date" DataFormatString="{0:dd/MM/yyyy}" />
                    <asp:BoundField DataField="Status" HeaderText="Status" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
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

