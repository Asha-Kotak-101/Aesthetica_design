using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aesthetica_design.Admin
{
    public partial class CareerAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindJobs();
            }
        }
        private void BindJobs()
        {
            var jobs = new List<dynamic>
            {
                new { Position = "Senior Interior Designer", Department = "Design", Location = "New York", PostedDate = new DateTime(2025, 1, 15), Applications = 12, Status = "Active" },
                new { Position = "Project Manager", Department = "Project Management", Location = "London", PostedDate = new DateTime(2025, 1, 10), Applications = 8, Status = "Active" },
                new { Position = "Junior Architect", Department = "Architecture", Location = "Dubai", PostedDate = new DateTime(2025, 1, 5), Applications = 15, Status = "Close" },
            };

            gvJobs.DataSource = jobs;
            gvJobs.DataBind();
        }

        protected string GetStatusClass(string status)
        {
            switch (status.ToLower())
            {
                case "active": return "badge badge-green";
                case "close": return "badge badge-yellow";
                case "on hold": return "badge badge-red";
                default: return "badge";
            }
        }
    }
}