using JuryAthlete.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JuryAthlete
{
    public partial class Staff_Disponibilites : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (SessionHelper.UserId == null)
                Response.Redirect("Home.aspx");
        }
    }
}