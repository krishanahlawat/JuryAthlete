﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class JuryAtheleteEntities : DbContext
    {
        public JuryAtheleteEntities()
            : base("name=JuryAtheleteEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<t_competitions> t_competitions { get; set; }
        public DbSet<t_membres> t_membres { get; set; }
        public DbSet<t_membres_acces> t_membres_acces { get; set; }
        public DbSet<t_officiels> t_officiels { get; set; }
        public DbSet<t_md_saisons> t_md_saisons { get; set; }
    }
}