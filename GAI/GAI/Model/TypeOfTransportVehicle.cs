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
    
    public partial class TypeOfTransportVehicle
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TypeOfTransportVehicle()
        {
            this.TransportVehicles = new HashSet<TransportVehicle>();
        }
    
        public int IdTypeOfTransportVehicle { get; set; }
        public string NameTypeOfTransportVehicle { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TransportVehicle> TransportVehicles { get; set; }
    }
}
