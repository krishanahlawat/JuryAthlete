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
    
    public partial class t_transactions
    {
        public int id { get; set; }
        public string f_item_number { get; set; }
        public string f_item_name { get; set; }
        public string f_txn_id { get; set; }
        public string f_txn_type { get; set; }
        public string f_payment_type { get; set; }
        public string f_payment_status { get; set; }
        public string f_payment_mode { get; set; }
        public string f_payment_date { get; set; }
        public string f_receiver_id { get; set; }
        public string f_payer_id { get; set; }
        public string f_payer_name { get; set; }
        public string f_payer_email { get; set; }
        public string f_payer_status { get; set; }
        public string f_residence_country { get; set; }
        public string f_langue { get; set; }
        public string f_mc_currency { get; set; }
        public string f_mc_fee_fede { get; set; }
        public string f_mc_fee { get; set; }
        public string f_mc_handling { get; set; }
        public string f_mc_shipping { get; set; }
        public string f_mc_gross { get; set; }
        public string f_mc_restant { get; set; }
        public string f_facture { get; set; }
        public string f_virement { get; set; }
        public string f_ins_numero { get; set; }
        public string f_ins_nom { get; set; }
        public string f_ins_prenom { get; set; }
        public string f_ins_email { get; set; }
        public string f_ins_commentaire { get; set; }
        public string f_reason_code { get; set; }
        public string f_source { get; set; }
        public string f_actif { get; set; }
        public string f_entry_dt { get; set; }
        public string f_category { get; set; }
        public string f_treated { get; set; }
        public string f_paye { get; set; }
        public string f_colis { get; set; }
        public string f_command_status { get; set; }
        public string f_facture_file { get; set; }
        public string f_url_suivi_colis_bpost { get; set; }
    }
}
