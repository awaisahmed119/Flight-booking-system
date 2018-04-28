package com.eL.webproject;

import model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ActivationServlet", urlPatterns = {"/Activation"})
public class ActivationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uName=request.getParameter("uname");
        // String pass=request.getParameter("psw");
        //User u=new User();


        String t= User.activate(uName) ;
       // request.setAttribute("psw2", t);

        request.setAttribute("error", "Your Account has been activated");

      RequestDispatcher view=request.getRequestDispatcher("login.jsp");
         view.forward(request, response);


    }
}
