<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap" %>
<%@ page import="com.model.BeanManager" %> <!-- Import BeanManager -->
<%@ page session="true" %>
<%
    // Retrieve the HashMap of users from the application scope
    HashMap<String, String> users = (HashMap<String, String>) application.getAttribute("users");
    if (users == null) {
        users = new HashMap<>();
        application.setAttribute("users", users);
    }
    
    // Retrieve form parameters
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String confirmPassword = request.getParameter("confirm_password");
    String email = request.getParameter("email");
    String name = request.getParameter("name");
    String errorMessage = null;
    String successMessage = null;

    // Check if form parameters are provided
    if (username != null && password != null && confirmPassword != null && email != null && name != null) {
        if (!password.equals(confirmPassword)) {
            errorMessage = "Passwords do not match!";
        } else if (users.containsKey(username)) {
            errorMessage = "Username already exists!";
        } else {
            // Add user to the HashMap
            users.put(username, password);
            // Save user to the database using BeanManager
            BeanManager bm = new BeanManager();
            bm.setUsername(username);
            bm.setPassword(password);
            bm.setEmail(email);
            bm.setName(name);
            try {
                bm.insert(); // Insert user into the database
                successMessage = "Registration successful! You can now log in.";
            } catch (Exception e) {
                e.printStackTrace();
                errorMessage = "Registration failed! Please try again.";
            }
        }
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - Explore the World</title>
    <link rel="stylesheet" href="register.css">
</head>
<body>
    <div class="form-container">
        <h2>Register</h2>
        <% if (errorMessage != null) { %>
            <p class="error"><%= errorMessage %></p>
        <% } %>
        <% if (successMessage != null) { %>
            <p class="success"><%= successMessage %></p>
        <% } %>
        <form action="register.jsp" method="post">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="name">Full Name:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <label for="confirm_password">Confirm Password:</label>
                <input type="password" id="confirm_password" name="confirm_password" required>
            </div>
            <button type="submit" class="btn">Register</button>
            <li><a href="login.jsp">Back to Login</a></li>
        </form>
    </div>
</body>
</html>
