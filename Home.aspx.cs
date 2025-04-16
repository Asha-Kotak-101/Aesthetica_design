using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aesthetica_design
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubscribe_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            // You can store the email in a database or send a thank-you message
        }
    }
}