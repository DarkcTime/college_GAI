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
    
    public partial class DriverTransportVehicle
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DriverTransportVehicle()
        {
            this.Protocols = new HashSet<Protocol>();
        }
    
        public int IdDriverTransportVehicle { get; set; }
        public int DriverId { get; set; }
        public int TransportVehicleId { get; set; }
        public int TypeOfOwnerShipId { get; set; }
    
        public virtual Driver Driver { get; set; }
        public virtual TransportVehicle TransportVehicle { get; set; }
        public virtual TypeOfOwnerShip TypeOfOwnerShip { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Protocol> Protocols { get; set; }
    }
}