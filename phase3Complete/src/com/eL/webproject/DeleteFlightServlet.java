package com.eL.webproject;

import model.Flight;
import org.jsoup.Jsoup;
import org.jsoup.safety.Whitelist;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteFlightServlet", urlPatterns = {"/delete"})
public class DeleteFlightServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String fid= Jsoup.clean(request.getParameter("fid"), Whitelist.basic());
        Flight f=new Flight();

       f= f.loadAtid(fid);

       f.saveInDb(3);
        request.setAttribute("button","admin");
        DisplayFlightServlet ob=new DisplayFlightServlet();
        ob.doPost(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
