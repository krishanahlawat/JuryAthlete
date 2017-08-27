using JuryAthlete.DataLayer.DataContext;
using MySql.Data.MySqlClient;
using NLog;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JuryAthlete.DataLayer.Implementation
{
    public class DBWrapper
    {
        static Logger Logger = LogManager.GetCurrentClassLogger();

        static public DataTable ExecuteSP(string spName)
        {
            var context = AthleteJuryEntities.GetDBContext();

            DataSet ds = new DataSet();
            using (MySqlConnection connection = new MySqlConnection(context.Database.Connection.ConnectionString))
            {
                using (MySqlCommand cmd = new MySqlCommand(spName, connection))
                {
                    MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);
                    adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                    //adapter.SelectCommand.Parameters.Add(new MySqlParameter("@ID", RecordID));
                    adapter.Fill(ds);
                }
            }
            return ds.Tables[0];
        }

        public static List<usp_Upcomingcompetitions_Result> Upcomingcompetitions()
        {
            try
            {
                var result = new List<usp_Upcomingcompetitions_Result>();
                
                using (var context = AthleteJuryEntities.GetDBContext())
                {
                    return context.usp_Upcomingcompetitions().ToList();
                }                
            }
            catch (Exception ex)
            {
                Logger.Error(ex);
                throw;
            }
        }
        public static DataTable OfficielsMeritantsList(int year)
        {
            try
            {
                var context = AthleteJuryEntities.GetDBContext();

                DataSet ds = new DataSet();
                using (MySqlConnection connection = new MySqlConnection(context.Database.Connection.ConnectionString))
                {
                    using (MySqlCommand cmd = new MySqlCommand("usp_OfficielsMeritantsList", connection))
                    {
                        MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);
                        adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                        adapter.SelectCommand.Parameters.Add(new MySqlParameter("@year", year));
                        adapter.Fill(ds);
                    }
                }
                return ds.Tables[0];

                //var result = new List<usp_OfficielsMeritantsList_Result>();
                //using (var context = AthleteJuryEntities.GetDBContext())
                //    result = context.usp_OfficielsMeritantsList(year).ToList();
                //return result;
            }
            catch (Exception ex)
            {
                Logger.Error(ex);
                throw;
            }
        }
        //public static List<usp_GetOfficielsByCompetition_Result> OfficielsByCompetition(int competitionId)
        //{
        //    try
        //    {
        //        var result = new List<usp_GetOfficielsByCompetition_Result>();
        //        using (var context = JuryAtheleteEntities.GetDBContext())
        //            result = context.usp_GetOfficielsByCompetition(competitionId).ToList();
        //        return result;
        //    }
        //    catch (Exception ex)
        //    {
        //        Logger.Error(ex);
        //        throw;
        //    }
        //}
        //public static List<usp_PlannedBenefitsPerSaison_Result> PlannedBenefitsPerSaison(int f_officiel_id, int saison)
        //{
        //    try
        //    {
        //        var result = new List<usp_PlannedBenefitsPerSaison_Result>();
        //        using (var context = JuryAtheleteEntities.GetDBContext())
        //            result = context.usp_PlannedBenefitsPerSaison(f_officiel_id, saison).ToList();
        //        return result;
        //    }
        //    catch (Exception ex)
        //    {
        //        Logger.Error(ex);
        //        throw;
        //    }
        //}
        //public static List<usp_PlannedBenefits_Result> PlannedBenefits(int year, int month)
        //{
        //    try
        //    {
        //        var result = new List<usp_PlannedBenefits_Result>();
        //        using (var context = JuryAtheleteEntities.GetDBContext())
        //            result = context.usp_PlannedBenefits(year, month).ToList();
        //        return result;
        //    }
        //    catch (Exception ex)
        //    {
        //        Logger.Error(ex);
        //        throw;
        //    }
        //}
        //public static List<usp_Summary_Result> Summary(int f_officiel_id, int saison)
        //{
        //    try
        //    {
        //        var result = new List<usp_Summary_Result>();
        //        using (var context = JuryAtheleteEntities.GetDBContext())
        //            result = context.usp_Summary(f_officiel_id, saison).ToList();
        //        return result;
        //    }
        //    catch (Exception ex)
        //    {
        //        Logger.Error(ex);
        //        throw;
        //    }
        //}
    }
}
