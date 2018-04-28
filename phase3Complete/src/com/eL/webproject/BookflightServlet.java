package com.eL.webproject;

import model.Flight;
import model.book;
import org.jsoup.Jsoup;
import org.jsoup.safety.Whitelist;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.print.Book;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "BookflightServlet", urlPatterns = {"/book"})
public class BookflightServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();


        String from= Jsoup.clean(request.getParameter("from"), Whitelist.basic()); ;
        String to=Jsoup.clean(request.getParameter("to"), Whitelist.basic());
        String totalseats=Jsoup.clean(request.getParameter("totalseats"), Whitelist.basic());
        String seatclass=Jsoup.clean(request.getParameter("seatclass"), Whitelist.basic());

        int totals = Integer.parseInt(totalseats);
        session.setAttribute("totalseats",totals);
        session.setAttribute("seatclass",seatclass);
        book bk=new book();
        List<Flight> f = new ArrayList<Flight>();
         bk.ceckflight(f,from,to,seatclass,totals);
        request.setAttribute("f",f);
        request.getRequestDispatcher("temp.jsp").forward(request, response);





    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
