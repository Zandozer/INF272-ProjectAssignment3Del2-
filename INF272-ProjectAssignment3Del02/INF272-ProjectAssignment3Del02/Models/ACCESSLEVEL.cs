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
    
    public partial class ACCESSLEVEL
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ACCESSLEVEL()
        {
            this.SYSTEMUSERs = new HashSet<SYSTEMUSER>();
        }
    
        public int Access_Level_ID { get; set; }
        public string Access_Level_Description { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SYSTEMUSER> SYSTEMUSERs { get; set; }
    }
}
