<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="/assets/css/bootstrap.css" rel="stylesheet">
    <title>Укажите количество</title>
</head>
<form class="well-large" action="/2/howmuch" method="POST" id="amount_form" name="form">
    <c:set var="fruitName">
        <spring:message code="${fruit}"/>
    </c:set>
    ${name}, <spring:message code="sample2.howMuch" arguments="${fruitName}"/> <br/>
    <input class="span3" name="amount" placeholder="<spring:message code="sample2.enterAmount"/>"/>
    <input type="hidden" name="fruit" value="${fruit}">

    <div class="form-actions">
        <input type="submit" class="btn btn-success" value="<spring:message code="sample2.toCart"/>" id="to_cart_btn">
    </div>
</form>

<body>

</body>
</html>