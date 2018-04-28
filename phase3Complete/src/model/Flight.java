package model;

import com.eL.webproject.DBmanager;

import javax.jws.WebMethod;
import javax.jws.WebService;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.Vector;

@WebService
public class Flight {
    String fid;
    String plane;
    String from ;
    String to;
    String Time;
    int fseats;
    int fprice;
    int bseats;
    int bprice;
    int eseats;
    int eprice;
    String status;
    String reqtype;
    String reqid;
    public Flight() {


    }



    public Flight(String fid, String plane, String from, String to, String time, int fseats, int fprice, int bseats, int bprice, int eseats, int eprice,String status) {
        this.fid = fid;
        this.plane = plane;
        this.from = from;
        this.to = to;
        this.Time = time;
        this.fseats = fseats;
        this.fprice = fprice;
        this.bseats = bseats;
        this.bprice = bprice;
        this.eseats = eseats;
        this.eprice = eprice;
        this.status=status;

    }
    public Flight(String fid, String plane, String from, String to, String time, int fseats, int fprice, int bseats, int bprice, int eseats, int eprice, String status, String reqtype,String reqid) {
        this.fid = fid;
        this.plane = plane;
        this.from = from;
        this.to = to;
        Time = time;
        this.fseats = fseats;
        this.fprice = fprice;
        this.bseats = bseats;
        this.bprice = bprice;
        this.eseats = eseats;
        this.eprice = eprice;
        this.status = status;
        this.reqtype = reqtype;
        this.reqid=reqid;

    }


    public String getReqid() {
        return reqid;
    }

    public void setReqid(String reqid) {
        this.reqid = reqid;
    }



    public String getReqtype() {
        return reqtype;
    }

    public void setReqtype(String reqtype) {
        this.reqtype = reqtype;
    }

    //constructor with req type;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }



    public String getFid() {
        return fid;
    }

    public void setFid(String fid) {
        this.fid = fid;
    }

    public String getPlane() {
        return plane;
    }

    public void setPlane(String plane) {
        this.plane = plane;
    }

    public String getFrom() {
        return from;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public String getTo() {
        return to;
    }

    public void setTo(String to) {
        this.to = to;
    }

    public String getTime() {
        return Time;
    }

    public void setTime(String time) {
        Time = time;
    }

    public int getFseats() {
        return fseats;
    }

    public void setFseats(int fseats) {
        this.fseats = fseats;
    }

    public int getFprice() {
        return fprice;
    }

    public void setFprice(int fprice) {
        this.fprice = fprice;
    }

    public int getBseats() {
        return bseats;
    }

    public void setBseats(int bseats) {
        this.bseats = bseats;
    }

    public int getBprice() {
        return bprice;
    }

    public void setBprice(int bprice) {
        this.bprice = bprice;
    }

    public int getEseats() {
        return eseats;
    }

    public void setEseats(int eseats) {
        this.eseats = eseats;
    }

    public int getEprice() {
        return eprice;
    }

    public void setEprice(int eprice) {
        this.eprice = eprice;
    }

    public boolean saveInDb(int flag){
        DBmanager db = null;
        Connection conn = db.getConnection();
        String sql="";


        try {
          //  sql="select fid from tempflights where fid="+"'"+fid+"'";
            sql="select fid from tempflights where fid=?";
            PreparedStatement s  = conn.prepareStatement(sql);
            s .setString(1,fid);

            ResultSet r = s .executeQuery();

            if(flag==1) {
                //sql = "insert into tempflights(fid,plane,from1,to1,time,fseats,fprice,bseats,bprice,eseats,eprice)  values(" + "'" + fid + "'" + "," + "'" + plane + "'" + ", " + "'" + from + "'" + "," + "'" + to + "'" + "," + "'" + Time + "'" + "," + "'" + fseats + "'" + "," + "'" + fprice + "'" + "," + "'" + bseats + "'" + "," + "'" + bprice + "'" + "," + "'" + eseats + "'" + "," + "'" + eprice + "'" + ")";
                sql="insert into tempflights(fid,plane,from1,to1,time,fseats,fprice,bseats,bprice,eseats,eprice)  values(?,?,?,?,?,?,?,?,?,?,?)";
                PreparedStatement stmt = conn.prepareStatement(sql);
                stmt.setString(1,fid);
                stmt.setString(2,plane);
                stmt.setString(3,from);
                stmt.setString(4,to);
                stmt.setString(5,Time);
                stmt.setInt(6,fseats);
                stmt.setInt(7,fprice);
                stmt.setInt(8,bseats);
                stmt.setInt(9,bprice);
                stmt.setInt(10,eseats);
                stmt.setInt(11,eprice);

                int rs = stmt.executeUpdate();
            }
            else if(flag==2){

             //   sql = "insert into tempflights(fid,plane,from1,to1,time,fseats,fprice,bseats,bprice,eseats,eprice,reqtype)  values(" + "'" + fid + "'" + "," + "'" + plane + "'" + ", " + "'" + from + "'" + "," + "'" + to + "'" + "," + "'" + Time + "'" + "," + "'" + fseats + "'" + "," + "'" + fprice + "'" + "," + "'" + bseats + "'" + "," + "'" + bprice + "'" + "," + "'" + eseats + "'" + "," + "'" + eprice + "'" + "," + "'" + "Update" + "'" + ")";
                sql = "insert into tempflights(fid,plane,from1,to1,time,fseats,fprice,bseats,bprice,eseats,eprice,reqtype)  values(?,?,?,?,?,?,?,?,?,?,?,?)";
                PreparedStatement stmt = conn.prepareStatement(sql);
                stmt.setString(1,fid);
                stmt.setString(2,plane);
                stmt.setString(3,from);
                stmt.setString(4,to);
                stmt.setString(5,Time);
                stmt.setInt(6,fseats);
                stmt.setInt(7,fprice);
                stmt.setInt(8,bseats);
                stmt.setInt(9,bprice);
                stmt.setInt(10,eseats);
                stmt.setInt(11,eprice);
                stmt.setString(12,"Update");


                int rs = stmt.executeUpdate();
                //sql="update flights set status='Not Approved Yet' where fid="+"'"+fid+"'";
                sql="update flights set status='Not Approved Yet' where fid=?";
                stmt = conn.prepareStatement(sql);
                stmt.setString(1,fid);


                 rs = stmt.executeUpdate();
            }

            else if(flag==3){
              //  if(r.next()) {
                //    sql="   UPDATE tempflights SET plane=" + "'" +plane+"'"+","+ "from1="+"'"+from+"'"+","+ "to1="+"'"+to+"'"+","+"time="+"'"+Time+"'"+","+"fseats="+"'"+fseats+"'"+","+"fprice="+"'"+fprice+"'"+","+"eseats="+"'"+eseats+"'"+","+ "status='Not Aprroved Yet'"+","+"reqtype="+"'"+"Update"+"'"+  " WHERE fid="+"'"+fid+"'";
                //}
                //sql="   UPDATE tempflights SET plane=" + "'" +plane+"'"+","+ "from1="+"'"+from+"'"+","+ "to1="+"'"+to+"'"+","+"time="+"'"+Time+"'"+","+"fseats="+"'"+fseats+"'"+","+"fprice="+"'"+fprice+"'"+","+"eseats="+"'"+eseats+"'"+ "status=Not Aprroved Yet"+" WHERE fid="+"'"+fid+"'";

                //sql = "insert into tempflights(fid,plane,from1,to1,time,fseats,fprice,bseats,bprice,eseats,eprice,reqtype)  values(" + "'" + fid + "'" + "," + "'" + plane + "'" + ", " + "'" + from + "'" + "," + "'" + to + "'" + "," + "'" + Time + "'" + "," + "'" + fseats + "'" + "," + "'" + fprice + "'" + "," + "'" + bseats + "'" + "," + "'" + bprice + "'" + "," + "'" + eseats + "'" + "," + "'" + eprice + "'" + "," + "'" + "Delete" + "'" + ")";

                sql = "insert into tempflights(fid,plane,from1,to1,time,fseats,fprice,bseats,bprice,eseats,eprice,reqtype)  values(?,?,?,?,?,?,?,?,?,?,?,?)";
                PreparedStatement stmt = conn.prepareStatement(sql);
                stmt.setString(1,fid);
                stmt.setString(2,plane);
                stmt.setString(3,from);
                stmt.setString(4,to);
                stmt.setString(5,Time);
                stmt.setInt(6,fseats);
                stmt.setInt(7,fprice);
                stmt.setInt(8,bseats);
                stmt.setInt(9,bprice);
                stmt.setInt(10,eseats);
                stmt.setInt(11,eprice);
                stmt.setString(12,"Delete");
                int rs = stmt.executeUpdate();

               // sql="update flights set status='Not Approved Yet' where fid="+"'"+fid+"'";
                sql="update flights set status='Not Approved Yet' where fid=?";
                stmt = conn.prepareStatement(sql);
                stmt.setString(1,fid);
                rs = stmt.executeUpdate();
            }



        } catch (Exception ex) {
            // TODO: handle exception
            return  false;
        }

        return true ;


    }

    public int loadfromDb( List<Flight> f,boolean flag ) {
        DBmanager db = null;
        Connection conn = db.getConnection();
        String sql="";
        int i=0;
        if(flag) {
              sql = "select * from flights";
        }
        else{
            sql = "select * from tempflights";
        }
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);

            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
             if(flag) {
                 Flight tempp = new Flight(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6), rs.getInt(7), rs.getInt(8), rs.getInt(9), rs.getInt(10), rs.getInt(11), rs.getString(12));
                 f.add(tempp);
             }
             else{
                 Flight tempp = new Flight(rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getInt(9), rs.getInt(10), rs.getInt(11), rs.getInt(12), rs.getString(13),rs.getString(14),rs.getString(1));
                 f.add(tempp);
             }


          //  f[i++]=tempp;

            }

        } catch (Exception ex) {
            // TODO: handle exception
            return  -1;
        }

        return i ;



    }

    public Flight loadAtid(String fid){
        DBmanager db = null;
        Connection conn = db.getConnection();
        Flight tempp=null;
        int i=0;
      //  String sql = "select * from flights where fid="+"'"+fid+"'";

        try {
            String sql = "select * from flights where fid=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1,fid);

            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                 tempp=new Flight(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getInt(6),rs.getInt(7),rs.getInt(8),rs.getInt(9),rs.getInt(10),rs.getInt(11),rs.getString(12));
                String t= tempp.plane;


            }

        } catch (Exception ex) {
            // TODO: handle exception
            return  null;
        }

        return tempp ;


    }


    public boolean approveReq(String fid,String reqid){

        DBmanager db = null;
        Connection conn = db.getConnection();
        String sql="";
        int i=0;int reqtype=0;

            //sql= "UPDATE tempflights SET status='Approved' where fid="+"'"+fid+"';";
           // sql = sql+ " INSERT INTO flights select * from tempflights where fid ="+"'"+fid+"';";
           // sql=sql+"DELETE FROM tempflights where fid ="+"'"+fid+"';";

      //  sql="select reqtype from tempflights where reqid="+"'"+reqid+"'";







        try {
            sql="select reqtype from tempflights where reqid=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1,reqid);
            ResultSet rs = stmt.executeQuery();
            if(rs.next()){
                if(rs.getString(1).equals("Update")) reqtype=2;
                else if(rs.getString(1).equals("Delete")) reqtype=3;
                else if(rs.getString(1).equals("Add")) reqtype=1;

            }

            sql="select*from tempflights where reqid="+"'"+reqid+"'";
            stmt = conn.prepareStatement(sql);
             rs = stmt.executeQuery();
           if(rs.next()) {
               if(reqtype==1) {
                   sql = "insert into flights(fid,plane,from1,to1,time,fseats,fprice,bseats,bprice,eseats,eprice,status)  values(" + "'" + rs.getString(2) + "'" + "," + "'" + rs.getString(3) + "'" + ", " + "'" + rs.getString(4) + "'" + "," + "'" + rs.getString(5) + "'" + "," + "'" + rs.getString(6) + "'" + "," + "'" + rs.getString(7) + "'" + "," + "'" + rs.getString(8) + "'" + "," + "'" + rs.getString(9) + "'" + "," + "'" + rs.getString(10) + "'" + "," + "'" + rs.getString(11) + "'" + "," + "'" + rs.getString(12) + "'" + "," + "'" + "Approved" + "'" + ");";
                   PreparedStatement stmt2 = conn.prepareStatement(sql);
                   int rs2 = stmt2.executeUpdate();
               }
            else if(reqtype==2){
                   sql="   UPDATE flights SET plane=" + "'" +rs.getString(3)+"'"+","+ "from1="+"'"+rs.getString(4)+"'"+","+ "to1="+"'"+rs.getString(5)+"'"+","+"time="+"'"+rs.getString(6)+"'"+","+"fseats="+"'"+rs.getString(7)+"'"+","+"fprice="+"'"+rs.getString(8)+"'"+","+"eseats="+"'"+rs.getString(9)+"'"+","+"eprice="+"'"+rs.getString(10)+"'"+","+"bseats="+"'"+rs.getString(11)+"'"+","+"bprice="+"'"+rs.getString(12)+"'"+","+ "status='Approved'"+" WHERE fid="+"'"+fid+"'";
                   PreparedStatement stmt2 = conn.prepareStatement(sql);
                   int rs2 = stmt2.executeUpdate();
               }
            else if(reqtype==3){
                   sql = "DELETE FROM flights where fid =?";
                   PreparedStatement stmt3 = conn.prepareStatement(sql);
                   stmt3.setString(1,fid);
                   int rs2 = stmt3.executeUpdate();
               }

               // sql = sql + "DELETE FROM tempflights where fid =" + "'" + fid + "';";
                sql = "DELETE FROM tempflights where reqid =?";

               PreparedStatement stmt3 = conn.prepareStatement(sql);
               stmt3.setString(1,reqid);
               int rs2 = stmt3.executeUpdate();

           }

        } catch (Exception ex) {
            // TODO: handle exception
            return  false;
        }

        return true ;

    }

public String setfid(String reqid){
    DBmanager db = null;
    Connection conn = db.getConnection();
    Flight tempp=null;
    int i=0;
   // String sql = "select fid from tempflights where reqid="+"'"+reqid+"'";
    String sql = "select fid from tempflights where reqid=?";
    String fid="";

    try {
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setString(1,reqid);
        ResultSet rs = stmt.executeQuery();

        if (rs.next()) {
            fid=rs.getString("fid");


        }

    } catch (Exception ex) {
        // TODO: handle exception
        return  null;
    }

return fid;
}
//
@WebMethod
    public String getPrice(String o, String d){
    String[] words=o.split("\\s");
    o=words[0];
    d=words[1];
        String price="Not Fount";
        DBmanager db = null;
        Connection conn = db.getConnection();

        String sql = "select fprice,bprice,eprice from flights where from1=? and to1=?";

        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1,o);
            stmt.setString(2,d);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                price="First Class Seat Price= ";
                price=price+rs.getString("fprice");
                price=price +" Economy Class Seat Price= ";
                price=price+rs.getString("eprice");
                price=price+" Business Class Seat Price= ";
                price=price+rs.getString("bprice");
            }
        }

        catch (Exception ex) {
            // TODO: handle exception
            return  null;
        }

    String xml=("<FlightPrice>"+price+"</FlightPrice>");

        return xml;
    }


    @WebMethod
    public String getSeats(String id, String time){
            String[] words=id.split("\\s");
            id=words[0];
            time=words[1];

        String seats="Not Fount";
        DBmanager db = null;
        Connection conn = db.getConnection();

        String sql = "select fseats,bseats,eseats from flights where fid=? and time=?";

        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1,id);
            stmt.setString(2,time);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                seats="First Class Seat seats= ";
                seats=seats+rs.getString("fseats");
                seats=seats +" Economy Class Seat seats= ";
                seats=seats+rs.getString("eseats");
                seats=seats+" Business Class Seat seats= ";
                seats=seats+rs.getString("bseats");
            }
        }

        catch (Exception ex) {
            // TODO: handle exception
            return  null;
        }


        String xml=("<FlightSeat>"+seats+"</FlightSeat>");

        return xml;
    }

}
