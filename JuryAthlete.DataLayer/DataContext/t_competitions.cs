//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace JuryAthlete.DataLayer.DataContext
{
    using System;
    using System.Collections.Generic;
    
    public partial class t_competitions
    {
        public int id { get; set; }
        public string f_nom { get; set; }
        public System.DateTime f_date { get; set; }
        public string f_heure { get; set; }
        public byte f_matin { get; set; }
        public byte f_apresmidi { get; set; }
        public byte f_soir { get; set; }
        public string f_club { get; set; }
        public string f_lieu { get; set; }
        public string f_type { get; set; }
        public Nullable<int> f_convocation_demande { get; set; }
        public string f_convocation { get; set; }
        public byte f_rapport { get; set; }
        public byte f_actif { get; set; }
        public Nullable<byte> f_visible { get; set; }
        public string f_entry_dt { get; set; }
        public string f_update_dt { get; set; }
    }
}
