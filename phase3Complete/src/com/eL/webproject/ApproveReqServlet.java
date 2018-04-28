package com.eL.webproject;

import model.Flight;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ApproveReqServlet", urlPatterns = {"/approve"})
public class ApproveReqServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String reqid=request.getParameter("reqid");
        Flight f=new Flight();
        String fid=f.setfid(reqid);

        f.approveReq(fid,reqid);

        request.setAttribute("button","manager");
        DisplayFlightServlet ob=new DisplayFlightServlet();
        ob.doPost(request, response);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
