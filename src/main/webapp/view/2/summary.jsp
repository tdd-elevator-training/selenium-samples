<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Итого</title>
    <link href="/assets/css/bootstrap.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <h3>${name}, Ваш заказ</h3>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>#</th>
            <th>Чего хотели</th>
            <th>Сколько хотели</th>
        </tr>
        </thead>
        <c:forEach items="${items}" var="item" varStatus="status">
            <tr>
                <td>${status.index + 1}</td>
                <td>${item.name}</td>
                <td>${item.amount}</td>
            </tr>
        </c:forEach>
    </table>
    <p>
    <label class="label">Итого у Вас
    <c:forEach items="${totals}" var="total" varStatus="status">
        ${total.value} ${total.key}
        <c:if test="${!status.last}">,</c:if>
    </c:forEach>
    </label>
</div>
</body>
</html>
