//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace JuryAthlete.DAL.MSSQL.DataContext
{
    using System;
    using System.Collections.Generic;
    
    public partial class t_officiels
    {
        public int id { get; set; }
        public Nullable<int> f_membre_id { get; set; }
        public string f_nom { get; set; }
        public string f_prenom { get; set; }
        public string f_surnom { get; set; }
        public string f_phone { get; set; }
        public string f_phone_2 { get; set; }
        public string f_phone_contact { get; set; }
        public int f_brevet { get; set; }
        public string f_entryDT { get; set; }
        public string f_email_1 { get; set; }
        public string f_email_2 { get; set; }
        public string f_email_3 { get; set; }
        public string f_anniversaire_dt { get; set; }
        public Nullable<int> f_actif { get; set; }
        public string f_sexe { get; set; }
        public string f_club { get; set; }
        public string f_province { get; set; }
        public string f_taille_polo { get; set; }
        public string f_taille_pantalon { get; set; }
        public string f_taille_chaussure { get; set; }
        public Nullable<int> f_courrier_papier { get; set; }
        public string f_phone_visible { get; set; }
        public string f_email_visible { get; set; }
        public string f_adresse { get; set; }
        public string f_cp { get; set; }
        public string f_ville { get; set; }
        public string f_pays { get; set; }
        public string f_photo { get; set; }
        public string f_infosupp { get; set; }
        public string f_entry_dt { get; set; }
        public Nullable<System.DateTime> f_brevet_I_dt { get; set; }
        public Nullable<System.DateTime> f_brevet_II_dt { get; set; }
        public Nullable<System.DateTime> f_brevet_III_dt { get; set; }
        public Nullable<System.DateTime> f_brevet_ATO_dt { get; set; }
        public Nullable<System.DateTime> f_brevet_ITO_dt { get; set; }
        public string f_lastupdate_who { get; set; }
        public string f_lastupdate_dt { get; set; }
    }
}
