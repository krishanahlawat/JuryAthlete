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
    
    public partial class t_catalogue
    {
        public int id { get; set; }
        public string f_file { get; set; }
        public string f_desc_fr { get; set; }
        public Nullable<int> f_taille { get; set; }
        public string f_reference { get; set; }
        public string f_prix_public { get; set; }
        public string f_prix_instructeur { get; set; }
        public string f_public { get; set; }
        public string f_entry_dt { get; set; }
        public string f_actif { get; set; }
        public string f_role_access { get; set; }
        public string f_fraispostaux_mandatory { get; set; }
        public string f_category { get; set; }
        public string f_desc_sub_fr { get; set; }
        public Nullable<int> f_ristourne_quantite { get; set; }
        public Nullable<int> f_ristourne_pourcentage { get; set; }
        public string f_taille_choix { get; set; }
    }
}