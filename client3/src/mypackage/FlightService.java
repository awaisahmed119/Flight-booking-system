/**
 * FlightService.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package mypackage;

public interface FlightService extends javax.xml.rpc.Service {
    public java.lang.String getFlightAddress();

    public mypackage.Flight_PortType getFlight() throws javax.xml.rpc.ServiceException;

    public mypackage.Flight_PortType getFlight(java.net.URL portAddress) throws javax.xml.rpc.ServiceException;
}
