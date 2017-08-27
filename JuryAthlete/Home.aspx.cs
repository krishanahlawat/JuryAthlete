using JuryAthlete.DataLayer.DataContext;
using System;
using System.Linq;
using System.Web.UI.WebControls;

namespace JuryAthlete
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {            
            gv.AutoGenerateColumns = true;
            AthleteJuryEntities context = new AthleteJuryEntities();
            gv.DataSource =  context.t_competitions.ToList();
            gv.DataBind();
        }
    }
}