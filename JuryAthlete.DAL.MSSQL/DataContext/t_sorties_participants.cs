//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace JuryAthlete.DAL.DataContext
{
    using System;
    using System.Collections.Generic;
    
    public partial class t_sorties_participants
    {
        public int id { get; set; }
        public string f_nbrmembre { get; set; }
        public int f_id_sorties_club { get; set; }
        public string f_participation_date { get; set; }
        public string f_entry_dt { get; set; }
        public string f_actif { get; set; }
    }
}
