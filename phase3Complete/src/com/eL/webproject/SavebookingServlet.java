package com.eL.webproject;

import model.Flight;
import model.book;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "SavebookingServlet", urlPatterns = {"/savebook"})
public class SavebookingServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       HttpSession session=request.getSession();
       String email= (String) session.getAttribute("email");
       String seatclass= (String) session.getAttribute("seatclass");
        String fid=request.getParameter("fid");

        Flight fdata=new Flight();
        fdata=fdata.loadAtid(fid);

        String t = (String) session.getAttribute("totalseats");

       int totalseats= Integer.parseInt(t);

        book bk=new book();
        bk.Savebooking(email,seatclass,fdata,totalseats);


        HomeServlet h=new HomeServlet();
        h.doPost(request,response);




    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
