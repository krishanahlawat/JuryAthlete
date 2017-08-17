using JuryAthelete.DAL;
using JuryAthelete.DAL.Implementation;
using JuryAthlete.Classes;
using System;

namespace JuryAthlete.MasterPage
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            staffDisponibilities.Visible = staffPresentation.Visible = SessionHelper.UserId != null;
        }

        protected void OnLoginClick(object sender, EventArgs e)
        {
            try
            {
                var memeberAccess = new JuryAthleteDAO<t_membres_acces>();
                var user = memeberAccess.GetSingle(item => item.f_login == txtUsername.Text);
                if (user == null)
                {
                    SessionHelper.UserId = null;
                    SessionHelper.IsAdmin = false;
                }
                else
                {
                    SessionHelper.UserId = user.f_login;
                    SessionHelper.IsAdmin = user.f_role == "admin";
                }

                staffDisponibilities.Visible = staffPresentation.Visible = SessionHelper.UserId != null;
                notLoggedIn.Visible = SessionHelper.UserId == null;
            }
            catch (Exception ex)
            {
            }
        }
    }
}