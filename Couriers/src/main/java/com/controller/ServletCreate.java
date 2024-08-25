package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.model.BeanManager;

public class ServletCreate extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public ServletCreate() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Optional: Handle GET request
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");

        BeanManager bm = new BeanManager();
        bm.setUsername(username);
        bm.setPassword(password);
        bm.setEmail(email);

        try {
            bm.insert();
            pw.println("Registration successful! You can now log in.");
        } catch (Exception e) {
            pw.println("Registration failed! Please try again.");
            e.printStackTrace(pw);
        }
    }
}
