using System;
using System.Web;

namespace JuryAthlete.Classes
{
    public class SessionHelper
    {        
        #region Public Static Methods
        public static void ClearSession()
        {
            HttpContext.Current.Session.Clear();
        }
        public static void Abandon()
        {
            ClearSession();
            HttpContext.Current.Session.Abandon();
        }
        #endregion

        #region Public Static Properties
        public static string UserId
        {
            get
            {
                if (HttpContext.Current.Session["userId"] != null)
                    return HttpContext.Current.Session["userId"].ToString();
                else
                    return null;
            }
            set { HttpContext.Current.Session["userId"] = value; }
        }
        public static bool IsAdmin
        {
            get
            {
                if (HttpContext.Current.Session["IsAdmin"] != null)
                    return  Convert.ToBoolean(HttpContext.Current.Session["IsAdmin"].ToString());
                else
                    return false;
            }
            set { HttpContext.Current.Session["IsAdmin"] = value; }
        }
        #endregion
    }
}