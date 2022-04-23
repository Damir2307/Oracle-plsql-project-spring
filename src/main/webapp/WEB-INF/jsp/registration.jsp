<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Registration</title>
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <link rel="stylesheet" href="css/registration.css">
</head>
<body>
<header>
    <a href="/" class="logo">
        <img src="./img/Logo.png" alt="">
    </a>
    <div class="menu">
        <div class="burger_menu">
            <img src="./img/burger.svg" alt="">
        </div>
        <ul>
            <a href="/playgrounds" style="text-decoration: none; color: #00AADE;"><li>Спорт площадки</li></a>
            <a href="/login" style="text-decoration: none; color: #00AADE;"><li>Войти</li></a>
        </ul>
    </div>
</header>
<form action="/registrationSubmit">
<div class="container">
    <div class="login_form">
        <h1 class="login_title">Регистрация</h1>
        <input placeholder="Имя" type="text" class="name" name="firstname" required>
        <input placeholder="Фамилия" type="text" class="name" name="lastname" required>
        <input placeholder="Эл.почта" type="text" class="email" name="email" required>
        <input placeholder="Номер телефона" type="text" class="email" name="phone">
        <input type="password" placeholder="Придумайте пароль" class="password" name="password1" required>
        <input type="password" placeholder="Повторите пароль" class="password" name="password2" required>
        <c:forEach var="error" items="${errors}">
            <p style="color: red;"><c:out value="${error}" /></p>
        </c:forEach>
        <p style="color: limegreen;"><c:out value="${success}" /></p>
        <button class="reg_btn" type="submit">Зарегистрироваться</button>
        <p class="log_text">Уже есть аккаунт? <span><a href="/login">Вход</a></span></p>
    </div>
</div>
</form>
</body>
</html>