<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<sql:setDataSource var="webappDataSource" driver="com.mysql.jdbc.Driver"
				   url="jdbc:mysql://localhost:3306/class360" 
				   user="root"	
				   password="root"/>
<c:set var="webappDataSource" scope="request"  />
</body>
</html>

