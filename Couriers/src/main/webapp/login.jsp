<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap" %>
<%@ page session="true" %>
<%
    HashMap<String, String> users = (HashMap<String, String>) application.getAttribute("users");
    if (users == null) {
        users = new HashMap<>();
        application.setAttribute("users", users);
    }

    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String errorMessage = null;

    if (username != null && password != null) {
        String storedPassword = users.get(username);
        if (storedPassword != null && storedPassword.equals(password)) {
            session.setAttribute("username", username);
            response.sendRedirect("index.jsp");
            return; // Ensure no further processing occurs after redirect
        } else {
            errorMessage = "Invalid username or password!";
        }
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Speedy Courier</title>
    <link rel="stylesheet" href="login.css">
</head>
<body>
    <div class="form-container">
        <h2>Login</h2>
        <% if (errorMessage != null) { %>
            <p class="error"><%= errorMessage %></p>
        <% } %>
        <form action="login.jsp" method="post">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit" class="btn">Login</button>
        </form>
        <p><a href="register.jsp">Register here..</a></p>
    </div>
</body>
</html>
