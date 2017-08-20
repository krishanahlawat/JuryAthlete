using NLog;
using System;
using System.Linq;

namespace JuryAthlete
{
    public partial class StaffOfficielsMeritants : System.Web.UI.Page
    {
        #region Variables and Properties
        static Logger Logger = LogManager.GetCurrentClassLogger();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                LoadData();
            }
            catch (Exception ex)
            {
                SetErrors(ex);
                Logger.Error(ex);
            }
        }
        protected void LoadData()
        {
            try
            {
                SetErrors();
                //var data = DBWrapper.OfficielsMeritantsList();
                //int pageCount = data.Count() / 4;

                //GridView1.DataSource = data.Take(pageCount);
                //GridView1.DataBind();

                //GridView2.DataSource = data.Skip(pageCount).Take(pageCount);
                //GridView2.DataBind();

                //GridView3.DataSource = data.Skip(pageCount * 2).Take(pageCount);
                //GridView3.DataBind();

                //GridView4.DataSource = data.Skip(pageCount * 3);
                //GridView4.DataBind();
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