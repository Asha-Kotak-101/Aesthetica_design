using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aesthetica_design
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();

            // TODO: Add your DB logic or email sending logic here
            // For example: Check if email exists in DB, send reset link

            // Simulated feedback (can replace with label or modal)
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('If this email exists in our system, a reset link has been sent.');", true);
        }
    }
}