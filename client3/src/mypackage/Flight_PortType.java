/**
 * Flight_PortType.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package mypackage;

public interface Flight_PortType extends java.rmi.Remote {
    public java.lang.String getTime() throws java.rmi.RemoteException;
    public void setTime(java.lang.String time) throws java.rmi.RemoteException;
    public void setStatus(java.lang.String status) throws java.rmi.RemoteException;
    public java.lang.String getStatus() throws java.rmi.RemoteException;
    public boolean saveInDb(int flag) throws java.rmi.RemoteException;
    public mypackage.Flight_Type loadAtid(java.lang.String fid) throws java.rmi.RemoteException;
    public int loadfromDb(java.lang.Object[] f, boolean flag) throws java.rmi.RemoteException;
    public boolean approveReq(java.lang.String fid, java.lang.String reqid) throws java.rmi.RemoteException;
    public java.lang.String setfid(java.lang.String reqid) throws java.rmi.RemoteException;
    public java.lang.String getPrice(java.lang.String o, java.lang.String d) throws java.rmi.RemoteException;
    public java.lang.String getFrom() throws java.rmi.RemoteException;
    public java.lang.String getSeats(java.lang.String id, java.lang.String time) throws java.rmi.RemoteException;
    public void setFid(java.lang.String fid) throws java.rmi.RemoteException;
    public int getBseats() throws java.rmi.RemoteException;
    public java.lang.String getReqid() throws java.rmi.RemoteException;
    public java.lang.String getReqtype() throws java.rmi.RemoteException;
    public void setReqid(java.lang.String reqid) throws java.rmi.RemoteException;
    public int getEprice() throws java.rmi.RemoteException;
    public void setTo(java.lang.String to) throws java.rmi.RemoteException;
    public void setReqtype(java.lang.String reqtype) throws java.rmi.RemoteException;
    public int getBprice() throws java.rmi.RemoteException;
    public void setBseats(int bseats) throws java.rmi.RemoteException;
    public void setBprice(int bprice) throws java.rmi.RemoteException;
    public java.lang.String getTo() throws java.rmi.RemoteException;
    public int getFseats() throws java.rmi.RemoteException;
    public void setFrom(java.lang.String from) throws java.rmi.RemoteException;
    public void setPlane(java.lang.String plane) throws java.rmi.RemoteException;
    public java.lang.String getFid() throws java.rmi.RemoteException;
    public void setFprice(int fprice) throws java.rmi.RemoteException;
    public void setFseats(int fseats) throws java.rmi.RemoteException;
    public void setEprice(int eprice) throws java.rmi.RemoteException;
    public java.lang.String getPlane() throws java.rmi.RemoteException;
    public int getFprice() throws java.rmi.RemoteException;
    public void setEseats(int eseats) throws java.rmi.RemoteException;
    public int getEseats() throws java.rmi.RemoteException;
}
