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
    
    public partial class t_sorties_club
    {
        public int id { get; set; }
        public string f_queljour { get; set; }
        public Nullable<System.DateTime> f_quelledate { get; set; }
        public string f_quelleheure { get; set; }
        public string f_ou { get; set; }
        public string f_plandusite { get; set; }
        public string f_lieuderdv { get; set; }
        public Nullable<int> f_actif { get; set; }
        public string f_entry_dt { get; set; }
        public string f_organisateur { get; set; }
        public string f_type_sortie { get; set; }
        public string f_type_entrainement { get; set; }
    }
}