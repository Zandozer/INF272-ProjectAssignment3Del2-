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
    
    public partial class SALE
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SALE()
        {
            this.SALELINEs = new HashSet<SALELINE>();
            this.SALEPAYMENTs = new HashSet<SALEPAYMENT>();
        }
    
        public int Sale_ID { get; set; }
        public Nullable<int> Client_ID { get; set; }
        public Nullable<int> Employee_ID { get; set; }
        public Nullable<System.DateTime> Sale_Date { get; set; }
        public Nullable<int> Delivery_ID { get; set; }
    
        public virtual CLIENT CLIENT { get; set; }
        public virtual DELIVERY DELIVERY { get; set; }
        public virtual EMPLOYEE EMPLOYEE { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SALELINE> SALELINEs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SALEPAYMENT> SALEPAYMENTs { get; set; }
    }
}