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
    
    public partial class t_md_status_rel
    {
        public int id { get; set; }
        public int f_status_id { get; set; }
        public int f_status_compet_id { get; set; }
        public int f_correction { get; set; }
    }
}