<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/playgrounds.css">
</head>
<body>
<div class="main">
    <header>
        <a href="/" class="logo">
            <img src="./img/Logo.png" alt="">
        </a>
        <div class="menu">
            <div class="burger_menu">
                <img src="./img/burger.svg" alt="">
            </div>
            <ul>
                <%if (session.getAttribute("user") != null) {%>
                <a href="/logout" style="text-decoration: none; color: #00AADE;"><li>Выйти</li></a>
                <%}else{%>
                <a href="/login" style="text-decoration: none; color: #00AADE;"><li>Войти</li></a>
                <%}%>
            </ul>
        </div>
    </header>
    <section class="container">
        <form action="/filterByPrice">
        <div class="filter">
            <div class="filter_title">
                <h2 style="color: #00AADE;">Фильтр</h2>
            </div>
            <div class="filter_name filter_price_">
                <p>Цена, тг </p>
                <div class="filter_sub">
                    <p>до</p>
                    <input type="text" name="price" class="price-input">
                </div>

            </div>

            <div class="filter_button">
                <button type="submit">Найти</button>
            </div>
        </div>
        </form>
        <div class="playgrounds">
            <h1 style="font-size: 30px;" class="anau">Список спортивных площадок</h1>
            <form action="/search">
                <input type="text" placeholder="Алматы арена"  name="search" class="search_input">
                <input type="submit" style="position: absolute; left: -9999px"/>
            </form>
            <div class="list_playgrounds">
                <c:forEach var="playground" items="${ListPlaygrounds}">
                <div class="playground_card">
                    <div class="playground_card_photo" style="background-image: url(${playground.getUrl()});"></div>
                    <div class="playground_card_info">
                        <div class="playground_card_info_title">
                            <h2><c:out value="${playground.getPlaygroundName()}" /></h2>
                        </div>
                        <div class="playground_card_info_subtitle">
                            <img src="img/placeholder1.png" alt="">
                            <p><c:out value="${playground.getPlaygroundAddress()}" /></p>
                        </div>
                        <div class="playground_card_info_subtitle2">
                            <img src="img/football-field 1.png" alt="">
                            <p class="playground_type"><c:out value="${playground.getSportName()}" /></p>
                            <hr class="seperator">
                            <p class="playground_info"><c:out value="${playground.getPhone()}" /></p>
                        </div>
                        <div class="playground_card_info_subtitle">
                            <img src="img/star.png" alt="">
                            <p><c:out value="${playground.getStartTime()}" />:00 - <c:out value="${playground.getCloseTime()}" />:00
                            </p>
                        </div>
                        <div class="playground_card_price">
                            <p><c:out value="${playground.getPrice()}" /> т <slot class="price-info">/час</slot> </p>
                        </div>
                        <div class="playground_more_info">
                            <form action="/playgroundDetails">
                                <input type="hidden" name="id" value="<c:out value="${playground.getId()}" />">
                                <input type="hidden" name="sportName" value="<c:out value="${playground.getSportName()}" />">
                                <button><h2>Подробнее</h2></button>
                            </form>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>
        </div>
    </section>
</div>
</body>
</html>