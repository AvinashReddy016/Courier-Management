package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ShipServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Database configuration
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/shipping_db"; // Update with your database URL
    private static final String JDBC_USER = "root"; // Update with your database username
    private static final String JDBC_PASSWORD = "Laharirao@123"; // Update with your database password

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form parameters
        String senderName = request.getParameter("senderName").trim();
        String receiverName = request.getParameter("receiverName").trim();
        String receiverAddress = request.getParameter("receiverAddress").trim();
        String packageWeightStr = request.getParameter("packageWeight").trim();

        // Validate input
        if (senderName.isEmpty() || receiverName.isEmpty() || receiverAddress.isEmpty() || packageWeightStr.isEmpty()) {
            request.setAttribute("errorMessage", "All fields are required.");
            request.getRequestDispatcher("ship.jsp").forward(request, response);
            return;
        }

        double packageWeight;
        try {
            packageWeight = Double.parseDouble(packageWeightStr);
        } catch (NumberFormatException e) {
            request.setAttribute("errorMessage", "Invalid package weight. Please enter a valid number.");
            request.getRequestDispatcher("ship.jsp").forward(request, response);
            return;
        }

        // Store the information in the database
        String sql = "INSERT INTO shipments (sender_name, receiver_name, receiver_address, package_weight) VALUES (?, ?, ?, ?)";
        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, senderName);
            statement.setString(2, receiverName);
            statement.setString(3, receiverAddress);
            statement.setDouble(4, packageWeight);

            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                request.setAttribute("successMessage", "Shipment successfully recorded.");
            } else {
                request.setAttribute("errorMessage", "Failed to record shipment. Please try again.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Database error: " + e.getMessage());
        }

        // Forward to the JSP page with feedback messages
        request.getRequestDispatcher("ship.jsp").forward(request, response);
    }
}
