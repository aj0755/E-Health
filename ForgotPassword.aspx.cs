using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string userEmail = txtEmail.Text.Trim();

        if (string.IsNullOrEmpty(userEmail))
        {
            lblErrorMessage.Text = "Please enter a valid email address.";
            lblErrorMessage.ForeColor = System.Drawing.Color.Red;
            return;
        }

        try
        {
            string resetLink = "http://localhost:50280/E-Health/create.aspx";

            string smtpAddress = "smtp.gmail.com"; // e.g., smtp.gmail.com
            int portNumber = 587; // Typically 587 for TLS or 465 for SSL
            bool enableSSL = true;

            string emailFrom = "elitecaresystem@gmail.com";
            string password = "ynhf efkn gdmg nszh";
            string emailTo = userEmail;
            string subject = "Reset Your Password";
            string body = "Reset password link " + resetLink;

            using (MailMessage mail = new MailMessage())
            {
                mail.From = new MailAddress(emailFrom);
                mail.To.Add(emailTo);
                mail.Subject = subject;
                mail.Body = body;
                mail.IsBodyHtml = true;

                using (SmtpClient smtp = new SmtpClient(smtpAddress, portNumber))
                {
                    smtp.Credentials = new NetworkCredential(emailFrom, password);
                    smtp.EnableSsl = true;
                    smtp.Send(mail);
                }
            }

            lblErrorMessage.Text = "A password reset link has been sent to your email address.";
            lblErrorMessage.ForeColor = System.Drawing.Color.Green;
        }
        catch (Exception ex)
        {
            // Log exception (optional)
            lblErrorMessage.Text = "An error occurred while sending the email. Please try again later." + ex.ToString();
            lblErrorMessage.ForeColor = System.Drawing.Color.Red;
        }
    }
}