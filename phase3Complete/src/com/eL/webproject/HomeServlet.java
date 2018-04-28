package com.eL.webproject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "HomeServlet", urlPatterns = {"/home"})
public class HomeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session == null) {

            request.getRequestDispatcher("login.jsp").forward(request, response);
        }

        String roll = (String) session.getAttribute("roll");

        if(roll==null){
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
        if (roll.equals("customer")) {
            request.getRequestDispatcher("customerhome.jsp").forward(request, response);
        } else if (roll.equals("admin")) {
            request.getRequestDispatcher("adminhome.jsp").forward(request, response);
        } else if (roll.equals("manager")) {
            request.getRequestDispatcher("managerhome.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}