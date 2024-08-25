<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%
    String username = (String) session.getAttribute("username");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Speedy Courier</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <div class="container">
            <h1>Your Package, Our Priority</h1>
            <nav>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="#about">About Us</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                    <% if (username == null) { %>
                        <li><a href="login.jsp">Login</a></li>
                    <% } else { %>
                        <li>Welcome, <%= username %></li>
                        <li><a href="logout.jsp">Logout</a></li>
                    <% } %>
                </ul>
            </nav>
        </div>
    </header>

    <main>
        <section id="home" class="hero">
            <div class="container">
                <h2>Swift Deliveries, Secure Success</h2>
                <p>We ensure your packages arrive swiftly and securely, turning your delivery needs into seamless experiences.</p>
                <a href="track.jsp" class="btn">Track your product</a>
                <a href="ship.jsp" class="btn">Ship with us</a>
            </div>
        </section>

        <section id="destinations" class="section">
            <div class="container">
                <h2>Why Choose Us: Secure Packaging, Friendly Service, and Global Shipping</h2>
                <div class="destinations-grid">
                    <div class="destination">
                        <img src="resorces/images/index1.jpeg" alt="Eiffel Tower in Paris" />
                        <h3>Secure Packaging</h3>
                        <p>Secure packaging ensures your parcels arrive safely and intact, protected from damage and tampering. Trust our courier service to deliver your items with the highest standards of security and care.</p>
                    </div>
                    <div class="destination">
                        <img src="resorces/images/index2.jpeg"Cherry blossoms in Kyoto" />
                        <h3>Friendly Employees</h3>
                        <p>Our friendly employees are dedicated to providing exceptional service, ensuring your delivery experience is smooth and pleasant. With a smile and a helpful attitude, our team is here to assist you every step of the way</p>
                    </div>
                    <div class="destination">
                        <img src="resorces/images/index3.jpeg" alt="Times Square in New York" />
                        <h3>Shipment across the sea</h3>
                        <p>Experience seamless shipment across the sea with our reliable courier service. We ensure your packages reach international destinations safely and on time, navigating the complexities of global shipping with ease.</p>
                    </div>
                </div>
            </div>
        </section>

        <section id="about" class="section">
            <div class="container">
                <h2>About Us</h2>
                <p>We are a courier service dedicated to ensuring your packages reach their destinations safely and efficiently. Our team of experts is here to provide you with personalized delivery plans and reliable shipping solutions.</p>
            </div>
        </section>

        
    </main>

    <footer>
        <div class="container">
            <p>&#169; 2024 Explore the World. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
