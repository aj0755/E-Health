using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            string uname = txtEmail.Text;
            if (uname.StartsWith("AD_"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM Admin WHERE Admin_Id = '" + txtEmail.Text + "' AND Admin_pass = '" + txtPassword.Text + "'");
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                SqlDataReader sdr = cmd.ExecuteReader();

                if (sdr.HasRows)
                {
                    Session["UserEmail"] = txtEmail.Text;
                    lblErrorMessage.Text = "Login successful!";
                    lblErrorMessage.ForeColor = System.Drawing.Color.Green;
                    Response.Redirect("Admin/Dashboard.aspx?login=success");
                }
                else
                {
                    lblErrorMessage.Text = "Invalid email or password!";
                    lblErrorMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM Patient WHERE Email = '" + txtEmail.Text + "' AND P_Pass = '" + txtPassword.Text + "'");
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                SqlDataReader sdr = cmd.ExecuteReader();

                if (sdr.HasRows)
                {
                    Session["UserEmail"] = txtEmail.Text;
                    lblErrorMessage.Text = "Login successful!";
                    lblErrorMessage.ForeColor = System.Drawing.Color.Green;
                    Response.Redirect("homepage.aspx?login=success");
                }
                else
                {
                    lblErrorMessage.Text = "Invalid email or password!";
                    lblErrorMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
        catch (Exception ex)
        {
            lblErrorMessage.Text = "Error: " + ex.Message;
        }
    }
}