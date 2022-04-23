<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <link rel="stylesheet" href="css/login.css">
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
<form action="/loginSubmit">
<div class="container">
    <div class="login_form">
        <h1 class="login_title">Логин</h1>
        <input placeholder="Эл.почта" type="text" class="email" name="email">
        <input type="password" placeholder="Пароль" class="password" name="password">
        <span class="forget_password">Забыли пароль?</span>
        <button class="login_btn" type="submit">Войти</button>
        <p style="color: red;"><c:out value="${error}" /></p>
        <p class="reg_text">Еще нет аккаунта? <span><a href="/registration">Регистрация</a></span></p>
    </div>
</div>
</form>
</body>
</html>