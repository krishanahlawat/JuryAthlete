using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace JuryAthlete.DBUtility
{
    class Program
    {
        #region Variables
        static List<string> TablesIdentity = new List<string>()
        {
            "officiels",
            "transactions",
            "md_tailles",
            "officiels_disponibilites",
            "md_typecompet_province",
            "md_typecompeprovince",
            "sqlagent_job_history",
            "sqlagent_jobsteps_logs",
            "officiels_disponibilites_exceptions",
            "membres",
            "officiels_meritants",
            "officiels_roles",
            "parametres",
            "membres_acces",
            "annonces",
            "md_status_compet",
            "pays",
            "quiz_answers",
            "batches",
            "competitions_officiels",
            "quiz_history",
            "brevets",
            "catalogue",
            "database_firewall_rules_table",
            "compteurvisites",
            "database_firewall_rules",
            "quiz_history_tests",
            "convocations_demandes",
            "epreuves",
            "membres_declarations",
            "convocations_epreuves",
            "quiz_questions",
            "clubs",
            "convocations_officiels",
            "membres_documents",
            "documents_admin",
            "sites",
            "membres_requests",
            "sondage_answers",
            "menu_left",
            "download",
            "sondage_ipaddress",
            "convocations",
            "sondage_questions",
            "messages",
            "formations",
            "messages_files",
            "history",
            "sorties_club",
            "messages_recipients",
            "history_login",
            "historylogin",             //TODO
            "competitions",
            "mailing_list",
            "sorties_participants",
            "md_ddlb",
            "queue_messages_1977058079",
            "news",
            "md_saisons",
            "queue_messages_2009058193",
            "sorties_voyages",
            "queue_messages_2041058307",
            "md_status",
            "officiels_declarations",
            "md_status_rel",
            "test_xls",
            "testxls" //TODO
        };
        static List<string> Tables = new List<string>()
        {
            "annonces",
            "batches",
            "brevets",
            "catalogue",
            "compteurvisites",
            "convocations",
            "documents_admin",
            "download",
            "epreuves",
            "formations",
            "history",
            "history_login",
            "liste_des_compétitions_futures",
            "liste_des_officiels_de_bruxelles",
            "liste_des_officiels_de_bruxelles_ancien",
            "mailing_list",
            "md_ddlb",
            "md_provinces",
            "md_saisons",
            "md_status",
            "md_status_compet",
            "md_tailles",
            "md_typecompet",
            "membres",
            "membres_acces",
            "membres_declarations",
            "membres_documents",
            "membres_requests",
            "menu_left",
            "messages",
            "messages_files",
            "messages_recipients",
            "news",
            "officiel_bruxelles",
            "officiels_declarations",
            "parametres",
            "pays",
            "quiz_answers",
            "quiz_history",
            "quiz_history_tests",
            "quiz_questions",
            "rapport_des_présences",
            "rapports_manquants",
            "rapports_manquants_2012_2013",
            "roles",
            "sites",
            "sondage_answers",
            "sondage_ipaddress",
            "sondage_questions",
            "sorties_club",
            "sorties_participants",
            "sorties_voyages",
            "test_xls",
            "transactions",
        };
        #endregion

        static void Main(string[] args)
        {
            try
            {
                int counter = 0;
                string line;
                string DatabaseScriptsPath = @"C:\Data\Personal\Jury\Repos\JuryAthlete.DAL.MSSQL\DBScripts";
                string DatabaseDataPath = @"C:\Data\Personal\Jury\Repos\JuryAthlete.DAL.MSSQL\DBScripts\Data";
                StreamReader file = new StreamReader(DatabaseScriptsPath + @"\juryathle_20170811_data.sql");
                StreamWriter fileOut = null;
                string fileName = string.Empty;
                string filePath = string.Empty;
                string filePath00 = string.Empty;
                while ((line = file.ReadLine()) != null)
                {
                    if (line.Contains("TRUNCATE TABLE"))
                    {
                        if (fileOut != null)
                        {
                            if (TablesIdentity.Any(i => i.ToLower() == fileName.ToLower()))
                                fileOut.WriteLine("SET IDENTITY_INSERT " + fileName + " OFF;");
                            fileOut.WriteLine("GO");
                            fileOut.Close();
                            fileOut.Dispose();
                            fileOut = null;

                            if (Tables.Contains(fileName.ToLower()))
                            {
                                if (File.Exists(filePath00))
                                    File.Delete(filePath00);
                                File.Move(filePath, filePath00);
                            }
                        }

                        fileName = line.Replace("TRUNCATE TABLE", "").Replace(" ", "").Replace(";", "").Replace("`", "").Replace("t_", "").Replace("f_", "");
                        filePath = DatabaseDataPath + @"\" + fileName + ".sql";
                        filePath00 = DatabaseDataPath + @"\00_" + fileName + ".sql";
                        fileOut = new StreamWriter(filePath);

                        line = line.Replace("`", "");
                        line = line.Replace(" t_", " ");
                        line = line.Replace("f_", "");

                        if (TablesIdentity.Any(i => i.ToLower() == fileName.ToLower()))
                            fileOut.WriteLine("SET IDENTITY_INSERT " + fileName + " ON;");
                        fileOut.WriteLine("GO");
                        fileOut.WriteLine(line.Replace("TRUNCATE TABLE", "DELETE FROM "));

                        Console.WriteLine(fileName);
                    }
                    else if (fileOut != null)
                    {
                        line = line.Replace("`", "");
                        line = line.Replace(" t_", " ");
                        line = line.Replace("f_", "");
                        line = line.Replace(@"\'", "''");
                        line = line.Replace(", file,", ", [file],");
                        line = line.Replace(", desc,", ", [desc],");
                        line = line.Replace(", order,", ", [order],");
                        line = line.Replace(", order)", ", [order])");
                        line = line.Replace(", status,", ", [status],");
                        line = line.Replace(", plan,", ", [plan],");
                        line = line.Replace(", plan)", ", [plan])");
                        line = line.Replace(", type)", ", [type])");
                        line = line.Replace(", date,", ", [date],");
                        line = line.Replace(", subject,", ", [subject],");
                        line = line.Replace(", message,", ", [message],");
                        line = line.Replace(", to,", ", [to],");
                        line = line.Replace(", from,", ", [from],");
                        line = line.Replace("'0000-00-00 00:00:00'", "null");

                        if (!string.IsNullOrEmpty(line.Trim()) && !line.Trim().StartsWith("--"))
                            fileOut.WriteLine(line);
                    }
                    counter++;
                }
                file.Close();
                Console.WriteLine("Completed...");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
                Console.WriteLine("ERROR...");
                Console.ReadLine();
            }
        }
    }
}
