package com.eL.webproject;

import model.Flight;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "DisplayFlightServlet", urlPatterns = {"/displayflight"})
public class DisplayFlightServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bvalue=request.getParameter("button");

        boolean flag=true;

        if(bvalue!=null) {
            if (bvalue.equals("manager")) flag = false;
        }

        Flight temp=new Flight();

        List<Flight> f = new ArrayList<Flight>();
         int fsize= temp.loadfromDb(f,flag);

        PrintWriter out = response.getWriter();
        //out.println(f[0].getBprice());

        request.setAttribute("f",f);





        if(bvalue==null){
            HomeServlet h=new HomeServlet();
            h.doPost(request,response);

            // request.getRequestDispatcher("index.jsp").forward(request, response);
         AlertServlet alertServlet=new AlertServlet();
         alertServlet.doPost(request,response);


        }

        else if(flag) {
            request.getRequestDispatcher("admin.jsp").forward(request, response);
        }
        else{
            request.getRequestDispatcher("manager.jsp").forward(request, response);
        }




    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
