using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aesthetica_design
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtEmail.Text = "";
            txtMessage.Text = "";
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            try
            {
                // You can configure this to send an actual email or store in DB
                string name = txtName.Text.Trim();
                string email = txtEmail.Text.Trim();
                string message = txtMessage.Text.Trim();

                // Simulated message sending
                // You can integrate SMTP here if needed
                // Or store this in a database
                // Example: SendMail(name, email, message);

                Response.Write("<script>alert('Message sent successfully!');</script>");
                btnReset_Click(sender, e); // Clear form
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }
    }
}