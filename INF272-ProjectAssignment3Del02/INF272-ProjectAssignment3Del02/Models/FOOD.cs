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
    
    public partial class FOOD
    {
        public int Food_ID { get; set; }
        public Nullable<int> Product_Type_ID { get; set; }
        public string Name { get; set; }
        public string Product_Specific_Description { get; set; }
        public string Brand { get; set; }
        public string Flavour { get; set; }
    
        public virtual PRODUCTTYPE PRODUCTTYPE { get; set; }
    }
}