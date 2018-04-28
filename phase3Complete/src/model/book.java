package model;

import  com.eL.webproject.DBmanager;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.util.List;

public class book {

    public book() {
    }

    public boolean ceckflight(List<Flight> f, String from, String to, String seatclass, int totalseats){




        DBmanager db = null;
        Connection conn = db.getConnection();
        String sql="";
        int i=0;
           if(seatclass.equals("1"))
            sql = "select * from flights where from1 Like '%"+from+"%'"+" and to1 Like '%" +to+ "%'"+" and fseats>="+totalseats;

       else if(seatclass.equals("2"))
            sql = "select * from flights where from1 Like '%"+from+"%'"+" and to1 Like '%" +to+ "%'"+" and bseats>="+totalseats;
       else if(seatclass.equals("3"))
            sql = "select * from flights where from1 Like '%"+from+"%'"+" and to1 Like '%" +to+ "%'"+" and eseats>="+totalseats;

        try {
            PreparedStatement stmt = conn.prepareStatement(sql);

            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {

                    Flight tempp = new Flight(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6), rs.getInt(7), rs.getInt(8), rs.getInt(9), rs.getInt(10), rs.getInt(11), rs.getString(12));
                    f.add(tempp);




                //  f[i++]=tempp;

            }

        } catch (Exception ex) {
            // TODO: handle exception
            return  false;
        }

        return true;



    }

    public boolean Savebooking(String email ,String seatclass,Flight f,int totalseats){
        DBmanager db = null;
        Connection conn = db.getConnection();
        String sql="";
        int t=totalseats;

        try {
            if(seatclass.equals("1")) {
                while (totalseats > 0) {

                    sql = "insert into booking(email,seatclass,plane,from1,to1,time,price)  values(" + "'" + email + "'" + "," + "'" + "First Class Seat" + "'" + ", " + "'" + f.getPlane() + "'" + "," + "'" + f.getFrom() + "'" + "," + "'" + f.getTo() + "'" + "," + "'" + f.getTime() + "'" + "," + "'" + f.getFprice() + "'" + ")";
                    PreparedStatement stmt = conn.prepareStatement(sql);
                    int rs = stmt.executeUpdate();

                    sql = "update flights set fseats=fseats-1 where fid=" + "'" + f.getFid()+ "'";
                    stmt = conn.prepareStatement(sql);
                    rs = stmt.executeUpdate();
                    totalseats--;

                }
            }

            else if(seatclass.equals("2")) {
                while (totalseats > 0) {

                    sql = "insert into booking(email,seatclass,plane,from1,to1,time,price)  values(" + "'" + email + "'" + "," + "'" + "Business Class Seat" + "'" + ", " + "'" + f.getPlane() + "'" + "," + "'" + f.getFrom() + "'" + "," + "'" + f.getTo() + "'" + "," + "'" + f.getTime() + "'" + "," + "'" + f.getBprice() + "'" + ")";
                    PreparedStatement stmt = conn.prepareStatement(sql);
                    int rs = stmt.executeUpdate();

                    sql = "update flights set bseats=bseats-1 where fid=" + "'" + f.getFid()+ "'";
                    stmt = conn.prepareStatement(sql);
                    rs = stmt.executeUpdate();
                    totalseats--;
                }
            }

            else if(seatclass.equals("3")) {
                while (totalseats > 0) {

                    sql = "insert into booking(email,seatclass,plane,from1,to1,time,price)  values(" + "'" + email + "'" + "," + "'" + "Economy Class Seat" + "'" + ", " + "'" + f.getPlane() + "'" + "," + "'" + f.getFrom() + "'" + "," + "'" + f.getTo() + "'" + "," + "'" + f.getTime() + "'" + "," + "'" + f.getFprice() + "'" + ")";
                    PreparedStatement stmt = conn.prepareStatement(sql);
                    int rs = stmt.executeUpdate();

                    sql = "update flights set fseats=fseats-1 where fid=" + "'" + f.getFid()+ "'";
                    stmt = conn.prepareStatement(sql);
                    rs = stmt.executeUpdate();
                    totalseats--;
                }
            }
              sendmail(f.getPlane(),f.getTime(),f.getFrom(),f.getTo(),t,email);
        }

        catch (Exception ex) {
            // TODO: handle exception
            return  false;
        }
        return true;
    }
    public void sendmail(String plane,String time,String from,String to, int totalseats,String email){

        String host="smtp.gmail.com";
        String port="587";
        String user="awais.ahmed119@gmail.com";
        String pass="needforrun";






        String MessageContent = "";


        MessageContent += "<div style='background-color: lightblue ; position:relative'>";
        MessageContent +=  "<div style='height: 80px; color: black; display: inline'>";
        MessageContent += "<img src='http://pngimg.com/uploads/plane/plane_PNG5243.png' style='width: 120px; height: 120px; margin-top: 20px; margin-left: 15px' />";
        MessageContent += "<center><h1 style='font-size:80px;display:inline;color: gray;'>Pakistan Airlines</h1></center>";
        MessageContent += "</div>";
        MessageContent += "<div  style='padding-right: 50px;padding-left:50px; padding-top:20px;background-color: ghostwhite'>";
        MessageContent += "<p>";





        MessageContent += "<h2>Dear Awais Ahmed <br/><br/><br/>";
        MessageContent += "Thanks for Online Booking from our Website...<br/>";
        MessageContent += "You have reserved "+totalseats+" seats  in Plane "+plane+" From= "+from+" To="+to+" <br/><br/><br/>";
        MessageContent += "Your time of Flight is"+time+" be there at your time <br/><br/>Thank you!</h2>";


        MessageContent += "</div>";
        MessageContent += "</div>";



        try {
            EmailUtility.sendEmail(host, port, user, pass, email, "Ticket Confirmation",
                    MessageContent);

        } catch (Exception ex) {
            ex.printStackTrace();

        }
        // response.getWriter().append("Served at: ").append(t+resultMessage);







    }
}
