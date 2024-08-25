<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%
    // Invalidate the session
    session.invalidate();
    // Redirect to the home page
    response.sendRedirect("index.jsp");
%>
