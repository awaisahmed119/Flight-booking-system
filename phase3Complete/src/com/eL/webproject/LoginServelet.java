package com.eL.webproject;

import model.Flight;
import model.LoginModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.safety.Whitelist;
import org.owasp.esapi.ESAPI;

@WebServlet(name = "LoginServelet", urlPatterns = {"/login"})
public class LoginServelet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

       // Flight flight=new Flight();
       // String result = flight.getPrice("Lahore","Islamabad");

        String Email= Jsoup.clean(request.getParameter("j_username"), Whitelist.basic());
       // fid = ESAPI.encoder() .canonicalize(request.getParameter("fid"));

        String Password=Jsoup.clean(request.getParameter("j_password"),Whitelist.basic());
        String type="";


        LoginModel m=new LoginModel(Email,Password);
        int uid;
        String email;
        HttpSession session=request.getSession();
        int m1=m.login_authenticate();
        if(m1==1)
        {
            uid=m.getuserid();
            email=m.getEmailadd();
            session.setAttribute("userid",uid);
            session.setAttribute("email",email);
            session.setAttribute("roll","customer");
            type="customer";

           // request.getRequestDispatcher("/customerhome.jsp").forward(request, response);
        }
        else if(m1==2)
        {
            uid=m.getuserid();
            email=m.getEmailadd();

            session.setAttribute("userid",uid);
            session.setAttribute("email",email);
            session.setAttribute("roll","admin");
            //request.getRequestDispatcher("/adminhome.jsp").forward(request, response);
            type="adminhome";
        }
        else if(m1==3)
        {
            uid=m.getuserid();
            email=m.getEmailadd();

            session.setAttribute("userid",uid);
            session.setAttribute("email",email);
            session.setAttribute("roll","manager");
          //  request.getRequestDispatcher("/managerhome.jsp").forward(request, response);
            type="manager";
        }
        else if(m1==-1){
           // out.println("error in logging ");
            type="";
        }
        else
        {
            //out.println("Error in loggin  ");
        }
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        JSONObject obj=new JSONObject();

        try {
            obj.put("type",type);
        } catch (Exception e) {
            e.printStackTrace();
        }
        out.println(obj);
        out.flush();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
