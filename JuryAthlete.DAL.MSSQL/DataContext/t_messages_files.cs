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
    
    public partial class t_messages_files
    {
        public int id { get; set; }
        public Nullable<int> f_id_messages { get; set; }
        public string f_file_path { get; set; }
        public Nullable<int> f_actif { get; set; }
        public string f_entry_dt { get; set; }
    }
}