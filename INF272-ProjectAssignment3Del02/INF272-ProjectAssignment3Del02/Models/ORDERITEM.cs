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
    
    public partial class ORDERITEM
    {
        public int OrderItem_ID { get; set; }
        public int Order_ID { get; set; }
        public int Product_ID { get; set; }
        public Nullable<int> Order_Quantity { get; set; }
        public Nullable<decimal> Cost { get; set; }
    
        public virtual ORDERDETAIL ORDERDETAIL { get; set; }
        public virtual PRODUCT PRODUCT { get; set; }
    }
}