package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class TrackServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String trackingId = request.getParameter("trackingId");
        
        // Validate input
        if (trackingId == null || trackingId.trim().isEmpty()) {
            request.setAttribute("errorMessage", "Tracking ID cannot be empty.");
            request.getRequestDispatcher("track.jsp").forward(request, response);
            return;
        }

        // Fetch tracking information
        String trackingInfo = getTrackingInfo(trackingId);
        
        // Set attributes and forward to track.jsp
        request.setAttribute("trackingId", trackingId);
        request.setAttribute("trackingInfo", trackingInfo);
        request.getRequestDispatcher("track.jsp").forward(request, response);
    }

    private String getTrackingInfo(String trackingId) {
        // Replace with actual database/service logic
        if ("12345".equals(trackingId)) {
            return "Package is in transit. Expected delivery: 2024-08-01.";
        } else {
            return "Tracking ID not found.";
        }
    }
}
