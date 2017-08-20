using JuryAthlete.DataLayer.DataContext;
using NLog;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JuryAthlete.DataLayer.Implementation
{
    public class DBWrapper
    {
        //static Logger Logger = LogManager.GetCurrentClassLogger();
        //public static List<usp_Upcomingcompetitions_Result> Upcomingcompetitions()
        //{
        //    try
        //    {
        //        var result = new List<usp_Upcomingcompetitions_Result>();
        //        using (var context = JuryAtheleteEntities.GetDBContext())
        //            result = context.usp_Upcomingcompetitions().ToList();
        //        return result;
        //    }
        //    catch (Exception ex)
        //    {
        //        Logger.Error(ex);
        //        throw;
        //    }
        //}
        //public static List<usp_OfficielsMeritantsList_Result> OfficielsMeritantsList()
        //{
        //    try
        //    {
        //        var result = new List<usp_OfficielsMeritantsList_Result>();
        //        using (var context = JuryAtheleteEntities.GetDBContext())
        //            result = context.usp_OfficielsMeritantsList().ToList();
        //        return result;
        //    }
        //    catch (Exception ex)
        //    {
        //        Logger.Error(ex);
        //        throw;
        //    }
        //}
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
