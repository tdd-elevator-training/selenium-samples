<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Чего хотите?</title>
    <link href="/assets/css/bootstrap.css" rel="stylesheet">
</head>
<body>
<form class="well-large" action="/2/selection" method="POST" id="fruit_form" name="form">
    <h4>Здравствуйте, ${name}!</h4>
    <br/>
    Хотите
    <select name="fruit" id="fruit_id">
        <option value="яблок">яблок</option>
        <option value="груш">груш</option>
        <option value="помидор">помидор</option>
    </select> ?
    <div class="form-actions">
        <input type="submit" class="btn btn-primary" value="Да, очень хочу" id="fruit_yes_btn" name="yes">
        <input type="submit" class="btn" value="Нет, спасибо" id="fruit_no_btn" name="no">
    </div>
</form>
</body>
</html>