//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace INF272_ProjectAssignment3Del02.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class COMPLETEDTRANSACTION
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public COMPLETEDTRANSACTION()
        {
            this.PAYMENTRECEIPTLINEs = new HashSet<PAYMENTRECEIPTLINE>();
        }
    
        public int Payment_Receipt_ID { get; set; }
        public Nullable<int> Payment_ID { get; set; }
        public Nullable<System.DateTime> Payment_Receipt_Date { get; set; }
        public Nullable<decimal> Payment_Receipt_Subtotal { get; set; }
        public Nullable<decimal> Payment_Receipt_VAT { get; set; }
        public Nullable<decimal> Payment_Receipt_Total_Amount { get; set; }
    
        public virtual ORDERPAYMENT ORDERPAYMENT { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PAYMENTRECEIPTLINE> PAYMENTRECEIPTLINEs { get; set; }
    }
}
