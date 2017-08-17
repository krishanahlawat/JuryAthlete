using JuryAthelete.DAL.Implementation;
using NLog;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JuryAthlete
{
    public partial class Competitions : System.Web.UI.Page
    {
        #region Variables and Properties
        static Logger Logger = LogManager.GetCurrentClassLogger();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SetErrors();
                gvCompetitions.DataSource = DBWrapper.Upcomingcompetitions();
                gvCompetitions.DataBind();
            }
            catch (Exception ex)
            {
                SetErrors(ex);
                Logger.Error(ex);
            }
        }
        #endregion

        #region Events
        protected void SetErrors(Exception error = null)
        {
            if (error != null)
            {
                divError.Visible = true;
                lblError.Text = error.ToString();
            }
            else
            {
                divError.Visible = false;
                lblError.Text = string.Empty;
            }
        }
        #endregion

        #region Methods
        #endregion
    }
}