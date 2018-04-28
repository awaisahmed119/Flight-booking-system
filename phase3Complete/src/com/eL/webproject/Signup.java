package com.eL.webproject;



import model.EmailUtility;
import model.User;
import org.jsoup.Jsoup;
import org.jsoup.safety.Whitelist;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Signup", urlPatterns = {"/signup"})
public class Signup extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

          String host="smtp.gmail.com";
          String port="587";
          String user="awais.ahmed119@gmail.com";
          String pass="needforrun";

        String uname= Jsoup.clean(request.getParameter("uname"), Whitelist.basic());
        String email=Jsoup.clean(request.getParameter("email"), Whitelist.basic());
        String pass1=Jsoup.clean(request.getParameter("pass"), Whitelist.basic());




        User user1 =new User(uname,email,pass1,"customer");
        user1.saveInDb();



        String url="<h3><a href='http://localhost:8080/Activation?uname="+uname+"'>Activate your Account</a></h3>";

        String resultMessage = "";
        String MessageContent = "";


        MessageContent += "<div style='background-color: lightblue ; position:relative'>";
        MessageContent +=  "<div style='height: 80px; color: black; display: inline'>";
        MessageContent += "<img src='http://pngimg.com/uploads/plane/plane_PNG5243.png' style='width: 120px; height: 120px; margin-top: 20px; margin-left: 15px' />";
        MessageContent += "<center><h1 style='font-size:80px;display:inline;color: gray;'>Pakistan Airlines</h1></center>";
        MessageContent += "</div>";
        MessageContent += "<div  style='padding-right: 50px;padding-left:50px; padding-top:20px;background-color: ghostwhite'>";
        MessageContent += "<p>";





        MessageContent += "<h2>Dear "+uname+ "<br/><br/><br/>";
        MessageContent += "Thanks for signing in...<br/>";
        MessageContent += "Pakistan Airlines welcomes you . We are offering the best prices for national and international travleing. <br/><br/><br/>";
        MessageContent += "Get Your account verified to Book tickets online<br/><br/>Thank you!</h2>";

        MessageContent += url;
        MessageContent += "</div>";
        MessageContent += "</div>";



        try {
            EmailUtility.sendEmail(host, port, user, pass, email, "Activate Your Account",
                    MessageContent);
            resultMessage = "The e-mail for Account verification was sent successfully";
        } catch (Exception ex) {
            ex.printStackTrace();
            resultMessage = "There were an error: " + ex.getMessage();
        }
        // response.getWriter().append("Served at: ").append(t+resultMessage);
        request.setAttribute("error", resultMessage);

        RequestDispatcher view=request.getRequestDispatcher("login.jsp");
        view.forward(request, response);


    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
