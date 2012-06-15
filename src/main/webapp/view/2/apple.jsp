<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Чего хотите?</title>
    <link href="/assets/css/bootstrap.css" rel="stylesheet">
</head>
<body>
<form class="well-large" action="/2/selection" method="POST" id="fruit_form" name="form">
    <h4><spring:message code="sample2.hello"/> , ${name}!</h4>
    <br/>
    <spring:message code="sample2.doYouWant"/>
    <%
        List<String> array = Arrays.asList("apples", "pears", "tomatos");
        pageContext.setAttribute("fruits", array);
    %>
    <select name="fruit" id="fruit_id">
        <c:forEach items="${fruits}" var="fruit">
            <option value="${fruit}"><spring:message code="${fruit}"/> </option>
        </c:forEach>
    </select> ?
    <div class="form-actions">
        <input type="submit" class="btn btn-primary" value="<spring:message code="sample2.yesVeryMuch"/>" id="fruit_yes_btn" name="yes">
        <input type="submit" class="btn" value="<spring:message code="sample2.noThanks"/>" id="fruit_no_btn" name="no">
    </div>
</form>
</body>
</html>