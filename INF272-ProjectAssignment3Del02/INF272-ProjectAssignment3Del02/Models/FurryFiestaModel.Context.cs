﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class FurryFiestaEntities : DbContext
    {
        public FurryFiestaEntities()
            : base("name=FurryFiestaEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<ACCESSLEVEL> ACCESSLEVELs { get; set; }
        public virtual DbSet<ACCESSORY> ACCESSORies { get; set; }
        public virtual DbSet<CLIENT> CLIENTs { get; set; }
        public virtual DbSet<COMPLETEDTRANSACTION> COMPLETEDTRANSACTIONs { get; set; }
        public virtual DbSet<DELIVERY> DELIVERies { get; set; }
        public virtual DbSet<EMPLOYEE> EMPLOYEEs { get; set; }
        public virtual DbSet<FOOD> FOODs { get; set; }
        public virtual DbSet<ORDERDETAIL> ORDERDETAILS { get; set; }
        public virtual DbSet<ORDERITEM> ORDERITEMs { get; set; }
        public virtual DbSet<ORDERPAYMENT> ORDERPAYMENTs { get; set; }
        public virtual DbSet<PAYMENTRECEIPTLINE> PAYMENTRECEIPTLINEs { get; set; }
        public virtual DbSet<PAYMENTTYPE> PAYMENTTYPEs { get; set; }
        public virtual DbSet<PET> PETs { get; set; }
        public virtual DbSet<PRODUCT> PRODUCTs { get; set; }
        public virtual DbSet<PRODUCTTYPE> PRODUCTTYPEs { get; set; }
        public virtual DbSet<SALE> SALEs { get; set; }
        public virtual DbSet<SALELINE> SALELINEs { get; set; }
        public virtual DbSet<SALEPAYMENT> SALEPAYMENTs { get; set; }
        public virtual DbSet<SUPPLIER> SUPPLIERs { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<SYSTEMUSER> SYSTEMUSERs { get; set; }
        public virtual DbSet<TITLE> TITLEs { get; set; }
    }
}
