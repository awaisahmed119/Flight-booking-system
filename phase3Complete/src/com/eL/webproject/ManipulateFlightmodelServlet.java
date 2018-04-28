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
import java.io.PrintWriter;

@WebServlet(name = "ManipulateFlightmodelServlet", urlPatterns = {"/manipulate"})
public class ManipulateFlightmodelServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fid= Jsoup.clean(request.getParameter("fidinput"), Whitelist.basic());
        Flight fdata=new Flight();

         fdata=fdata.loadAtid(fid);

            request.setAttribute("fdata", fdata);
            request.getRequestDispatcher("editflight.jsp").forward(request, response);








    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
