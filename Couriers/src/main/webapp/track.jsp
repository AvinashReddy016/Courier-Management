<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Track Your Shipment</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: auto;
            overflow: hidden;
        }
        header {
            background: #333;
            color: #fff;
            padding: 30px 0;
            min-height: 70px;
            border-bottom: #bbb 1px solid;
            text-align: center;
        }
        header h1 {
            margin: 0;
            font-size: 24px;
        }
        .form-container {
            background: #fff;
            padding: 20px;
            margin: 20px 0;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-container input[type="text"] {
            width: calc(100% - 22px);
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .form-container button {
            background: #333;
            color: #fff;
            border: 0;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }
        .form-container button:hover {
            background: #555;
        }
        .tracking-info {
            margin-top: 20px;
            padding: 20px;
            background: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .tracking-info p {
            margin: 10px 0;
        }
    </style>
</head>
<body>
    <header>
        <div class="container">
            <h1>Courier Tracking System</h1>
        </div>
    </header>
    <div class="container">
        <div class="form-container">
            <form action="trackServlet" method="post">
                <label for="trackingId">Enter Tracking ID:</label>
                <input type="text" id="trackingId" name="trackingId" required>
                <button type="submit">Track</button>
            </form>
        </div>
        
        <% 
            String trackingId = request.getParameter("trackingId");
            if (trackingId != null && !trackingId.isEmpty()) {
                // Call the tracking service or database to get tracking information
                // This is a placeholder; replace it with actual service call
                String trackingInfo = ""; // Replace with actual tracking info from service
                
                // For demonstration purposes
                if ("1".equals(trackingId)) {
                    trackingInfo = "Package is in transit. Expected delivery: 2024-08-01.";
                } else if ("2".equals(trackingId)){
                    trackingInfo = "Package is in transit. Expected delivery: 2024-09-01.";
                }else if ("3".equals(trackingId)){
                    trackingInfo = "Package is in transit. Expected delivery: 2024-09-05.";
                }else {
                    trackingInfo = "Tracking ID not found.";
                }
        %>
        
        <div class="tracking-info">
            <p><strong>Tracking ID:</strong> <%= trackingId %></p>
            <p><strong>Status:</strong> <%= trackingInfo %></p>
        </div>
        
        <% } %>
    </div>
</body>
</html>
