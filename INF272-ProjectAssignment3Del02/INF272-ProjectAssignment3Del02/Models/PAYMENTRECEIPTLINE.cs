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
    
    public partial class PAYMENTRECEIPTLINE
    {
        public int Payment_Receipt_Num { get; set; }
        public Nullable<int> Payment_Receipt_ID { get; set; }
        public Nullable<System.DateTime> Payment_Receipt_Date { get; set; }
        public Nullable<decimal> Receipt_Line_Amount { get; set; }
    
        public virtual COMPLETEDTRANSACTION COMPLETEDTRANSACTION { get; set; }
    }
}
