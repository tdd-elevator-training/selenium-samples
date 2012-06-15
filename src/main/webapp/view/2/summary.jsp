<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title>Итого</title>
    <link href="/assets/css/bootstrap.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <h3>${name}, <spring:message code="sample2.yourOrder"/></h3>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>#</th>
            <th><spring:message code="sample2.whatDidYouWant"/></th>
            <th><spring:message code="sample2.howMuchDidYouWant"/></th>
        </tr>
        </thead>
        <c:forEach items="${items}" var="item" varStatus="status">
            <tr>
                <td>${status.index + 1}</td>
                <td><spring:message code="${item.name}"/></td>
                <td>${item.amount}</td>
            </tr>
        </c:forEach>
    </table>
    <p>
    <h4><spring:message code="sample2.totallyYouHave"/>
    <c:forEach items="${totals}" var="total" varStatus="status">
        ${total.value} <spring:message code="${total.key}"/>
        <c:if test="${!status.last}">,</c:if>
    </c:forEach>
    </h4>
</div>
</body>
</html>
