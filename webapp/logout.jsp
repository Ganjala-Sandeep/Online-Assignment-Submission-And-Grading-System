<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
    // Invalidate the session to log the user out
    session.invalidate();
    
    // Redirect to the login page
    response.sendRedirect("adminlogin.jsp");
%>
