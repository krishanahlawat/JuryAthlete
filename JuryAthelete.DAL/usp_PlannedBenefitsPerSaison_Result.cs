//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace JuryAthelete.DAL
{
    using System;
    
    public partial class usp_PlannedBenefitsPerSaison_Result
    {
        public int id { get; set; }
        public System.DateTime f_date { get; set; }
        public string f_club { get; set; }
        public string f_nom { get; set; }
        public byte f_matin { get; set; }
        public byte f_apresmidi { get; set; }
        public byte f_soir { get; set; }
        public string f_creation_dt { get; set; }
        public string f_update_dt { get; set; }
    }
}