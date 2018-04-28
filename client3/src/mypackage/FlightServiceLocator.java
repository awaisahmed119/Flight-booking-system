/**
 * FlightServiceLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package mypackage;

public class FlightServiceLocator extends org.apache.axis.client.Service implements mypackage.FlightService {

    public FlightServiceLocator() {
    }


    public FlightServiceLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public FlightServiceLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for Flight
    private java.lang.String Flight_address = "http://localhost:8080/services/Flight";

    public java.lang.String getFlightAddress() {
        return Flight_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String FlightWSDDServiceName = "Flight";

    public java.lang.String getFlightWSDDServiceName() {
        return FlightWSDDServiceName;
    }

    public void setFlightWSDDServiceName(java.lang.String name) {
        FlightWSDDServiceName = name;
    }

    public mypackage.Flight_PortType getFlight() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(Flight_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getFlight(endpoint);
    }

    public mypackage.Flight_PortType getFlight(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            mypackage.FlightSoapBindingStub _stub = new mypackage.FlightSoapBindingStub(portAddress, this);
            _stub.setPortName(getFlightWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setFlightEndpointAddress(java.lang.String address) {
        Flight_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (mypackage.Flight_PortType.class.isAssignableFrom(serviceEndpointInterface)) {
                mypackage.FlightSoapBindingStub _stub = new mypackage.FlightSoapBindingStub(new java.net.URL(Flight_address), this);
                _stub.setPortName(getFlightWSDDServiceName());
                return _stub;
            }
        }
        catch (java.lang.Throwable t) {
            throw new javax.xml.rpc.ServiceException(t);
        }
        throw new javax.xml.rpc.ServiceException("There is no stub implementation for the interface:  " + (serviceEndpointInterface == null ? "null" : serviceEndpointInterface.getName()));
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(javax.xml.namespace.QName portName, Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        if (portName == null) {
            return getPort(serviceEndpointInterface);
        }
        java.lang.String inputPortName = portName.getLocalPart();
        if ("Flight".equals(inputPortName)) {
            return getFlight();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://model", "FlightService");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://model", "Flight"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("Flight".equals(portName)) {
            setFlightEndpointAddress(address);
        }
        else 
{ // Unknown Port Name
            throw new javax.xml.rpc.ServiceException(" Cannot set Endpoint Address for Unknown Port" + portName);
        }
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(javax.xml.namespace.QName portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        setEndpointAddress(portName.getLocalPart(), address);
    }

}
