//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace GAI.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Protocol
    {
        public int IdProtocol { get; set; }
        public System.DateTime DateOfViolationId { get; set; }
        public string PlaceOfViolationId { get; set; }
        public int TypeOfViolationId { get; set; }
        public int DriverTransportVihicleId { get; set; }
        public int OfficerId { get; set; }
    
        public virtual DriverTransportVehicle DriverTransportVehicle { get; set; }
        public virtual Officer Officer { get; set; }
        public virtual TypeOfViolation TypeOfViolation { get; set; }
    }
}
