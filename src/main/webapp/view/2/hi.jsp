<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
    <title>Здравствуйте</title>
    <link href="/assets/css/bootstrap.css" rel="stylesheet">
</head>
<body>
<form class="well-large" action="" method="POST">
    <label><spring:message code="sample2.whatIsYourName"/></label>
    <input class="span3" name="name" placeholder="<spring:message code="sample2.enterYourName"/>"/>
    <input type="submit" class="btn" value="<spring:message code="sample2.save"/>"/>
</form>
</body>
</html>