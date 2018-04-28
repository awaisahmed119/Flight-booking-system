package com.eL.webproject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet(name = "TestingServlet", urlPatterns = {"/a"})
public class TestingServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        int count = 0;
        DBmanager db = null;
        Connection conn = db.getConnection();

        String sql = "select count(*) as count from users";

        try {
            PreparedStatement stmt = conn.prepareStatement(sql);

            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                count = rs.getInt("count");
            }

            PrintWriter out = response.getWriter();
            out.println(count);

            rs.close();
        } catch (Exception e) {
            // TODO: handle exception
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();
        out.println("<h1>Hello</h1>");
        out.flush();
    }
}
