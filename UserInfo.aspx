<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserInfo.aspx.cs" Inherits="UserInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="profile-container">
    <h2 class="profile-title">User Profile</h2>
    
    <!-- User Icon -->
    <div class="profile-icon-container">
        <i class="fas fa-user-circle profile-icon"></i>
    </div>

    <div class="profile-info">
        <div class="profile-item">
            <label for="lblUserid"><strong>User ID:</strong></label>
            <asp:Label ID="lblUserid" runat="server" CssClass="profile-info-text" />
        </div>
        <div class="profile-item">
            <label for="txtFullName"><strong>Full Name:</strong></label>
            <asp:TextBox ID="txtFullName" runat="server" CssClass="profile-input" ReadOnly="true" />
        </div>
        <div class="profile-item">
            <label for="txtEmail"><strong>Email:</strong></label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="profile-input" ReadOnly="true" />
        </div>
        <div class="profile-item">
            <label for="txtPhone"><strong>Phone:</strong></label>
            <asp:TextBox ID="txtPhone" runat="server" CssClass="profile-input" ReadOnly="true" />
        </div>
        <div class="profile-item">
            <label for="ddlGender"><strong>Gender:</strong></label>
            <asp:DropDownList ID="ddlGender" runat="server" CssClass="profile-input" Enabled="false">
                <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="profile-item">
            <label for="txtDob"><strong>Date of Birth:</strong></label>
            <asp:TextBox ID="txtDob" runat="server" CssClass="profile-input" ReadOnly="true" />
        </div>
    </div>

    <div class="profile-buttons">
        <asp:Button ID="btnEditProfile" runat="server" CssClass="btn" Text="Edit Profile" OnClick="btnEditProfile_Click" />
        <asp:Button ID="btnSaveChanges" runat="server" CssClass="btn" Text="Save Changes" OnClick="btnSaveChanges_Click" Visible="false" />
        <asp:Button ID="btnChangePassword" runat="server" CssClass="btn" Text="Change Password" OnClick="btnChangePassword_Click" />
        <asp:Button ID="btnLogout" runat="server" CssClass="btn" Text="Logout" OnClick="btnLogout_Click" />
    </div>

    <asp:Label ID="lblMessage" runat="server" CssClass="message-label" />
</div>


</asp:Content>

