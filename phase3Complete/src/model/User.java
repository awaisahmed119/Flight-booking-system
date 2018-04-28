package model;

import com.eL.webproject.DBmanager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class User {
    String uname;
    String email;
    String pass;
    String role;

    public User(String email) {
        this.email = email;
    }

    public User() {

    }


    public User(String uname, String email, String pass, String role) {
        this.uname = uname;
        this.email = email;
        this.pass = pass;
        this.role=role;

    }


    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }



    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getemail() {
        return email;
    }

    public void setemail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public boolean saveInDb(){
        DBmanager db = null;
        Connection conn = db.getConnection();

        String sql = "insert into users(uname,email,pass,role)  values("+ "'" + uname + "'"  + "," + "'" + email+"'" +", "+ "'"+ pass + "'" +","+ "'" +role+ "'" +")";

        try {
            PreparedStatement stmt = conn.prepareStatement(sql);

            int rs = stmt.executeUpdate();


        } catch (Exception ex) {
            // TODO: handle exception
            return  false;
        }

        return true ;

        
    }

    public static String activate(String uName2){
        String pass="";
        try {
            DBmanager db = null;
            Connection conn = db.getConnection();
            //	Statement stmt = conn.createStatement();
            String sql2 = "UPDATE users SET status=? WHERE uname=?";
            PreparedStatement statement = conn.prepareStatement(sql2);
            statement.setString(1,"verified");
            statement.setString(2, uName2);
            int row = statement.executeUpdate();

            return pass;
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }


        return "";
    }
}
