using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aesthetica_design
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string fullName = txtFullName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text;
            string confirmPassword = txtConfirmPassword.Text;

            if (password != confirmPassword)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Passwords do not match.');", true);
                return;
            }

            if (password.Length < 8)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Password must be at least 8 characters.');", true);
                return;
            }

            // TODO: Store user info in database after validation
            // For now, show success message
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Registration successful!');", true);
        }
    }
}