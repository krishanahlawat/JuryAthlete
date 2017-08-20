using JuryAthlete.DataLayer.DataContext;
using JuryAthlete.DataLayer.Implementation;
using System;
using System.Linq;

namespace JuryAthlete
{
    public partial class Staff_Prestations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    BindOfficials();
                    BindSeasons();
                }
                catch (Exception ex)
                {
                }
            }
        }

        public void LoadData()
        {
            try
            {
                //int oficialId = Convert.ToInt32(ddlOfficial.SelectedValue);
                //int saisonID = Convert.ToInt32(ddlSaison.SelectedValue);
                //int competitionId = 448;

                //var summary = DBWrapper.Summary(oficialId, saisonID);
                //var plannedBenefitsPerSaison = DBWrapper.PlannedBenefitsPerSaison(oficialId, saisonID);
                //var officielsByCompetition = DBWrapper.OfficielsByCompetition(competitionId);

                //gvplannedBenefitsPerSaison.DataSource = plannedBenefitsPerSaison;
                //gvplannedBenefitsPerSaison.DataBind();

                //gvsummary.DataSource = summary;
                //gvsummary.DataBind();

                //gvOfficielsByCompetition.DataSource = officielsByCompetition;
                //gvOfficielsByCompetition.DataBind();
            }
            catch (Exception ex)
            {
            }
        }


        public void BindOfficials()
        {
            var officials = new JuryDAO<t_officiels>();
            ddlOfficial.DataSource = from o in officials.GetList() select new { ID = o.id, Name = o.f_nom + " " + o.f_prenom };
            ddlOfficial.DataTextField = "Name";
            ddlOfficial.DataValueField = "ID";
            ddlOfficial.DataBind();
        }

        public void BindSeasons()
        {
            var saisons = new JuryDAO<t_md_saisons>();
            ddlSaison.DataSource = saisons.GetList();
            ddlSaison.DataTextField = "f_saison";
            ddlSaison.DataValueField = "id";
            ddlSaison.DataBind();
        }

        protected void ddlOfficial_SelectedIndexChanged(object sender, EventArgs e)
        {
            LoadData();
        }

        protected void ddlSaison_SelectedIndexChanged(object sender, EventArgs e)
        {
            LoadData();
        }
    }
}