using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class UserInfo : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UserEmail"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                string userEmail = Session["UserEmail"].ToString();
                LoadUserDetails(userEmail);
            }
        }
    }
    private void LoadUserDetails(string email)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Patient WHERE Email = '" + email + "'");
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                lblUserid.Text = sdr["P_ID"].ToString();
                txtFullName.Text = sdr["Pname"].ToString();
                txtEmail.Text = sdr["Email"].ToString();
                txtPhone.Text = sdr["PhoneNo"].ToString();
                ddlGender.Text = sdr["Gender"].ToString();

                DateTime dob;
                if (DateTime.TryParse(sdr["DOB"].ToString(), out dob))
                {
                    txtDob.Text = dob.ToString("dd-MM-yyyy");
                }
            }
            con.Close();
        }
        catch (Exception ex)
        {
            lblMessage.Text = "Error while displaying Data:" + ex.Message;
        }
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Homepage.aspx");
    }
    protected void btnEditProfile_Click(object sender, EventArgs e)
    {
        txtFullName.ReadOnly = false;
        txtPhone.ReadOnly = false;
        btnSaveChanges.Visible = true;
        btnEditProfile.Visible = false;
    }
    protected void btnSaveChanges_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update Patient set Pname = '" + txtFullName.Text + "', PhoneNo = '" + txtPhone.Text + "' Where Email = '" + txtEmail.Text + "' ");
            cmd.Connection = con;
            int rowsAffected = cmd.ExecuteNonQuery();
            con.Close();

            if (rowsAffected > 0)
            {
                lblMessage.Text = "User information updated successfully.";
                txtFullName.ReadOnly = true;
                txtPhone.ReadOnly = true;

                btnEditProfile.Visible = true;
                btnSaveChanges.Visible = false;
            }
        }
        catch (Exception ex)
        {
            lblMessage.Text = "Error updating user information." + ex.Message;
        }
    }
    protected void btnChangePassword_Click(object sender, EventArgs e)
    {
        Response.Redirect("changepasswrod.aspx");
    }
}