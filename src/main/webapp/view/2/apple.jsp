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
<div class="container-fluid">
    <div class="row-fluid" id="mydiv1">
        <div class="span7" id="mydiv2">
            <form class="well-large" action="/2/selection" method="POST" id="fruit_form" name="form">
                <h4><spring:message code="sample2.hello"/> , ${name}!</h4>
                <br/>
                <span id="myspan1"><spring:message code="sample2.doYouWant"/></span>
                <%
                    List<String> array = Arrays.asList("apples", "pears", "tomatos");
                    pageContext.setAttribute("fruits", array);
                %>
                <select name="fruit" id="fruit_id">
                    <c:forEach items="${fruits}" var="fruit">
                        <option value="${fruit}"><spring:message code="${fruit}"/></option>
                    </c:forEach>
                </select> ?
                <div class="form-actions" id="mydiv3">
                    <input type="submit" class="btn btn-primary" value="<spring:message code="sample2.yesVeryMuch"/>"
                           id="fruit_yes_btn" name="yes">
                    <input type="submit" class="btn" value="<spring:message code="sample2.noThanks"/>" name="no">
                </div>
            </form>
        </div>
        <div class="span3 well" id="mydiv4">
            <a href="/2/viewcart"><spring:message code="sample2.cart"/></a>
        </div>
    </div>
</div>
</body>
</html>