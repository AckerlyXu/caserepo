//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApplication1
{
    using System;
    using System.Collections.Generic;
    
    public partial class Contact_Service
    {
        public int Id { get; set; }
        public string TypeName { get; set; }
        public Nullable<int> Tag_servicesId { get; set; }
        public Nullable<int> ContactsId { get; set; }
        public Nullable<int> ContactTypeId { get; set; }
    
        public virtual Contact Contact { get; set; }
        public virtual ContactType ContactType { get; set; }
        public virtual Tag_services Tag_services { get; set; }
    }
}
