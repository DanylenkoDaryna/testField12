package com.my;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/table")
public class TableServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("TableServlet#doGet");

        // obtain an input info
        int n = Integer.parseInt(req.getParameter("n"));

        // generate a result
        Map<Integer, Integer> map = new HashMap<>();
        for (int j = 1 ; j <= n; j++) {
           map.put(j, j *j);
        }

        // save a result as an attribute
        req.setAttribute("table", map);

        // forward to show table
        req.getRequestDispatcher("table2.jsp").forward(req, resp);
    }

}
