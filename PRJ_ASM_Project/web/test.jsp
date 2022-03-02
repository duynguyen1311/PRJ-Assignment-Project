<%-- 
    Document   : test
    Created on : Mar 2, 2022, 11:56:50 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:forEach items="${listKhoa}" var="l">
            ${l.maKhoa}
            ${l.tenKhoa}
            ${l.diaChi}
            ${l.dienThoai}
            
        </c:forEach>
</body>
</html>
