<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ship Your Product</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 70%;
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
        .form-container input[type="text"],
        .form-container input[type="number"] {
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
        .form-container h2 {
            margin-bottom: 20px;
        }
        .message {
            margin-top: 10px;
            padding: 10px;
            border-radius: 5px;
        }
        .message.success {
            color: green;
            background-color: #e0f8e0;
            border: 1px solid #c2f0c2;
        }
        .message.error {
            color: red;
            background-color: #f8e0e0;
            border: 1px solid #f0c2c2;
        }
    </style>
</head>
<body>
    <header>
        <div class="container">
            <h1>Ship Your Product</h1>
        </div>
    </header>
    <div class="container">
        <div class="form-container">
            <h2>Shipping Details</h2>
            <form action="shipServlet" method="post">
                <label for="senderName">Sender's Name:</label>
                <input type="text" id="senderName" name="senderName" required>

                <label for="receiverName">Receiver's Name:</label>
                <input type="text" id="receiverName" name="receiverName" required>

                <label for="receiverAddress">Receiver's Address:</label>
                <input type="text" id="receiverAddress" name="receiverAddress" required>

                <label for="packageWeight">Package Weight (kg):</label>
                <input type="number" id="packageWeight" name="packageWeight" step="0.01" required>

                <button type="submit">Ship Now</button>
            </form>
            <% 
                String successMessage = (String) request.getAttribute("successMessage");
                String errorMessage = (String) request.getAttribute("errorMessage");
                if (successMessage != null) { 
            %>
                <div class="message success"><%= successMessage %></div>
            <% } else if (errorMessage != null) { %>
                <div class="message error"><%= errorMessage %></div>
            <% } %>
        </div>
    </div>
</body>
</html>
