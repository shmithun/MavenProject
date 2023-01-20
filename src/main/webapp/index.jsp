<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
		<meta charset="utf-8">
		<title>Welcome</title>
	</head> 
	<center><h1>Hello! welcome to Java App Deployment Page.This is sharan project.</h1></center>
	<body>
		<c:url value="/showMessage.html" var="messageUrl" />
		<a href="${messageUrl}">Click to enter</a><br>
		<br><c:url value="/showMessage.html" var="messageUrl" />
		<a href="${messageUrl}">Click to close</a>
	</body>
</html>
