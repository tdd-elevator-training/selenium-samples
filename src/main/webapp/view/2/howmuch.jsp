<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="/assets/css/bootstrap.css" rel="stylesheet">
    <title>Укажите количество</title>
</head>
<form class="well-large" action="/2/howmuch" method="POST" id="amount_form" name="form">
    ${name}, сколько ${fruit} Вам положить? <br/>
    <input class="span3" name="amount" placeholder="Введите количество..."/>
    <input type="hidden" name="fruit" value="${fruit}">

    <div class="form-actions">
        <input type="submit" class="btn btn-success" value="В корзину" id="to_cart_btn">
    </div>
</form>

<body>

</body>
</html>