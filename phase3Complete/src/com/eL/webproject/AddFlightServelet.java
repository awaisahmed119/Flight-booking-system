package com.eL.webproject;

import model.Flight;
import org.jsoup.Jsoup;
import org.jsoup.safety.Whitelist;
import org.owasp.esapi.ESAPI;
import org.owasp.esapi.errors.EncodingException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

@WebServlet(name = "AddFlightServelet", urlPatterns = {"/addflight"})
public class AddFlightServelet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fid="";String plane=""; String from=""; String to="";String time=""; String fs="";String fp="";String bs="";String bp="";String es="";String ep="";



          fid = Jsoup.clean(request.getParameter("fid"), Whitelist.basic());


         plane =Jsoup.clean(request.getParameter("plane"), Whitelist.basic());
        from =Jsoup.clean(request.getParameter("from"), Whitelist.basic());
        ;
          to =Jsoup.clean(request.getParameter("to"), Whitelist.basic());
        ;
          time =Jsoup.clean(request.getParameter("time"), Whitelist.basic());
        ;
         fs = Jsoup.clean(request.getParameter("fseats"), Whitelist.basic());
        ;
         fp = Jsoup.clean(request.getParameter("fprice"), Whitelist.basic());
        ;
          bs =Jsoup.clean(request.getParameter("bseats"), Whitelist.basic());
        ;
          bp = Jsoup.clean(request.getParameter("bprice"), Whitelist.basic());
        ;
          es =Jsoup.clean(request.getParameter("eseats"), Whitelist.basic());
          ep = Jsoup.clean(request.getParameter("eprice"), Whitelist.basic());







        String isUp=request.getParameter("up");
        int upflag=1;
       if(isUp!=null) {
           if (isUp.equals("update")) {
               upflag = 2;

           }

           }

        int fseats = Integer.parseInt(fs);
        int fprice = Integer.parseInt(fp);
        int bseats = Integer.parseInt(bs);
        int bprice = Integer.parseInt(bp);
        int eseats = Integer.parseInt(es);
        int eprice = Integer.parseInt(ep);

        Flight f=new Flight(fid,plane,from,to,time,fseats,fprice,bseats,bprice,eseats,eprice,"Not Approved Yet");
         Flight temp=new Flight();


        PrintWriter out = response.getWriter();
       //out.println(f[0].getBprice());


        if( f.saveInDb(upflag))
        ;
        else;

        request.setAttribute("button","admin");
        DisplayFlightServlet ob=new DisplayFlightServlet();
        ob.doPost(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
