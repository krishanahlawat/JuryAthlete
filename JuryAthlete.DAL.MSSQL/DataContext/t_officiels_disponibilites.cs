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
    
    public partial class t_officiels_disponibilites
    {
        public int id { get; set; }
        public int f_officiel_id { get; set; }
        public System.DateTime f_date { get; set; }
        public string f_disponibilite { get; set; }
        public string f_creation_dt { get; set; }
        public string f_update_dt { get; set; }
    }
}
