using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JuryAthlete
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {            
            gv.AutoGenerateColumns = true;
            JuryAthlete.DataLayer.DataContext.JuryAtheleteEntities context = new DataLayer.DataContext.JuryAtheleteEntities();
            gv.DataSource =  context.t_competitions.ToList();
            gv.DataBind();
        }
    }
}