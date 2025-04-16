using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aesthetica_design.Admin
{
    public partial class JobApplication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindApplications();
            }
        }
        private void BindApplications()
        {
            var applications = new List<dynamic>
            {
                new { Name = "Sarah Wilson", Email = "sarah.wilson@email.com", ImageUrl = "~/images/applicants/sarah.jpg", Position = "Senior Interior Designer", AppliedDate = new DateTime(2025, 1, 15), Status = "Shortlisted" },
                new { Name = "Michael Chen", Email = "michael.chen@email.com", ImageUrl = "~/images/applicants/michael.jpg", Position = "Junior Designer", AppliedDate = new DateTime(2025, 1, 14), Status = "Under Review" },
                new { Name = "Emily Brown", Email = "emily.brown@email.com", ImageUrl = "~/images/applicants/emily.jpg", Position = "Project Manager", AppliedDate = new DateTime(2025, 1, 13), Status = "Rejected" },
            };

            gvApplications.DataSource = applications;
            gvApplications.DataBind();
        }

        protected string GetStatusClass(string status)
        {
            switch (status.ToLower())
            {
                case "shortlisted": return "badge badge-green";
                case "under review": return "badge badge-yellow";
                case "rejected": return "badge badge-red";
                default: return "badge";
            }
        }
    }
}