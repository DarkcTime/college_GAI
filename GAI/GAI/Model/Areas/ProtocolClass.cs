using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GAI.Model.Areas
{
    class ProtocolClass : SharedModel
    {

        public List<Model.Protocol> GetProtocols()
        {
            return context.Protocols.ToList();   
        }

        public List<Model.Driver> GetDrivers()
        {
            return context.Drivers.ToList();
        }

        public List<Model.TypeOfViolation> GetTypeOfViolations()
        {
            return context.TypeOfViolations.ToList();
        }

        public List<Model.TransportVehicle> GetTransportVehicles()
        {
            return context.TransportVehicles.ToList();
        }

        public void RemoveProtocol(Model.Protocol _protocol)
        {
            Model.Protocol protocol = context.Protocols.Where(i => i.IdProtocol == _protocol.IdProtocol).FirstOrDefault();
            context.Protocols.Remove(protocol);
            
        }

        public void AddNewProtocol(Model.Protocol protocol)
        {
            protocol.TypeOfViolationId = protocol.TypeOfViolation.IdTypeOfViolation;
            protocol.DriverTransportVihicleId = protocol.DriverTransportVehicle.IdDriverTransportVehicle;
            protocol.TypeOfViolationId = protocol.TypeOfViolation.IdTypeOfViolation;
            context.Protocols.Add(protocol);
            
        }

    }
}
