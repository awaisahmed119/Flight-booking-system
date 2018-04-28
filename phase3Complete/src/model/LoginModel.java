package model;

import com.eL.webproject.DBmanager;

import java.sql.Connection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginModel {
    private

            int userid;
    String Emailadd;
    String password;


    public LoginModel(String e,String p){
        Emailadd=e;
        password=p;


    }
    public LoginModel(){
        Emailadd="";
        password="";
        userid=0;


    }
    public

    void setEmailadd(String n)
    {
        Emailadd=n;
    }
    void setpassword(String n)
    {
        password=n;
    }
    public void setuserid(int n){userid=n;}


    public String getEmailadd()
    {
        return Emailadd;
    }
    public String getpassword()
    {
        return password;
    }
    public int getuserid()
    {
        return userid;
    }


    public int login_authenticate(){
        DBmanager db = null;
        Connection conn = db.getConnection();
        String sql= "SELECT * FROM users where email="+"'"+Emailadd+"' "+" and pass="+"'"+ password+"' "+"and status='verified'";

        try {
            PreparedStatement stmt = conn.prepareStatement(sql);

            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
              //  userid=rs.getInt(1);
               if(rs.getString(4).equals("customer"))
               {
                   return 1;
               }
               else if(rs.getString(4).equals("admin"))
               {
                   return 2;
               }
               else if(rs.getString(4).equals("manager"))
               {
                   return 3;
               }

            }



        } catch (Exception ex) {
            // TODO: handle exception
            return  -1;
        }
        return 0;
    }
}
