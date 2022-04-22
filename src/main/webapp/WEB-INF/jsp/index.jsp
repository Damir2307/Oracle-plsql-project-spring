<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
<div class="main">
    <header>
        <a href="/" class="logo">
            <img src="./img/Logo (1).png" alt="">
        </a>
        <div class="menu">
            <div class="burger_menu">
                <img src="./img/burger.svg" alt="">
            </div>
            <ul>
                <li>Спорт площадки</li>
                <li>Добавить площадку</li>
                <li>Войти</li>
            </ul>
        </div>
    </header>
    <section class="hero">
        <div class="hero_text">
            <div class="hero_text_div">
                <h1 class="hero_title">Аренда <span class=""><img src="./img/hero_circle.png" alt=""></span> площадок</h1>
                <p class="hero_subtitle">Занимайтесь спортом вместе с нами</p>
                <button class="hero_button">Забронировать</button>
            </div>
        </div>
        <div class="hero_img">
            <img src="img/hero%20img.png" alt="">
        </div>
    </section>
    <section class="sportType">
        <div class="sportType_list">
            <div class="sportType_card">
                <div class="sportType_card_bg">
                    <div class="sportType_card_img">
                        <img src="./img/basketball.png" alt="">
                        <div class="shadow"></div>
                    </div>
                    <p class="sportType_card_title">Футбольные площадки</p>
                    <p class="sportType_card_price"><span>oт</span><span>3500 т</span></p>
                    <button class="sportType_card_viewButton">
                        Посмотреть
                    </button>
                </div>
            </div>
            <div class="sportType_card">
                <div class="sportType_card_bg">
                    <div class="sportType_card_img">
                        <img src="./img/football.png" alt="">
                        <div class="shadow"></div>
                    </div>
                    <p class="sportType_card_title">Футбольные площадки</p>
                    <p class="sportType_card_price"><span>oт</span><span>3500 т</span></p>
                    <a href="/playgrounds" class="sportType_card_viewButton">
                        Посмотреть
                    </a>
                </div>
            </div>
            <div class="sportType_card">
                <div class="sportType_card_bg ">
                    <div class="sportType_card_img">
                        <img src="./img/volleyball.png" alt="">
                        <div class="shadow"></div>
                    </div>
                    <p class="sportType_card_title">Футбольные площадки</p>
                    <p class="sportType_card_price"><span>oт</span><span>3500 т</span></p>
                    <button class="sportType_card_viewButton">
                        Посмотреть
                    </button>
                </div>
            </div>
        </div>
    </section>


    <section class="playgrounds">
        <div class="playgrounds_div">
            <div class="sectionTitle">
                <div class="title_circle"></div>
                <h1>Спортивные площадки</h1>
            </div>
            <div class="playgrounds_list">
                <c:set var="count" value="1" scope="page" />

                <c:forEach var="playground" items="${ListPlaygrounds}">
                    <c:if test="${count <= 8}">

                        <div class="playground_card">
                            <div class="playground_img">
                                <img src="<c:out value="${playground.getUrl()}" />" alt="">
                            </div>
                            <p class="playground_name"><c:out value="${playground.getPlaygroundName()}" /></p>
                            <p class="playground_address"><c:out value="${playground.getPlaygroundAddress()}" /></p>
                            <p class="playground_price"><c:out value="${playground.getPrice()}" /> т/час</p>
                            <a href="productDetail.html" class="playground_card_button">
                                ЗАБРОНИРОВАЬ СЕЙЧАС
                            </a>
                        </div>
                        <c:set var="count" value="${count + 1}" scope="page"/>
                    </c:if>
                </c:forEach>
    </section>
    <section class="aboutUs">
        <div class="about_img">
            <img src="./img/aboutusImg.png" alt="">
        </div>
        <div class="about_text">
            <div class="about_title">
                <div class="about_title_circle"></div>
                <h1>О нас</h1>
            </div>
            <div class="about_info">
                <span>Keloyna.kz</span> - это удобный интернет-сервис для желающих заниматься спортом. Мы стремимся обеспечить каждого, кто ценит своё время и комфорт, простым и быстрым доступом к спортивным занятиям.
            </div>
            <div class="about_info">
                <span>Keloyna.kz</span> объединил спортивные секции и площадки крупнейших городов России. Выбирайте любой спорт из множества существующих, и будь то футбол, хоккей или танцы, положите начало тренировкам в один клик.
                В мире ещё столько всего, что вы хотели бы попробовать. Начинайте.
            </div>
        </div>
    </section>
    <section class="reviews">
        <div class="reviews_div">
            <div class="reviews_title">
                <div class="reviews_title_circle"></div>
                <h1>Отзывы</h1>
            </div>
            <div class="review_list">
                <div class="review_card">
                    <div class="review_header">
                        <div class="user_img">
                            <img src="./img/account1.png" alt="">
                        </div>
                        <div class="user_name">Дамир</div>
                    </div>
                    <div class="review_text">
                        Мне очень понравилось, все чисто и уютно. Спасибо вам!
                    </div>
                    <div class="review_rating">
                        <div class="rating">
                            <img src="./img/star.png" alt="">
                            <img src="./img/star.png" alt="">
                            <img src="./img/star.png" alt="">
                            <img src="./img/star.png" alt="">
                            <img src="./img/star.png" alt="">
                        </div>
                    </div>
                </div>
                <div class="review_card">
                    <div class="review_header">
                        <div class="user_img">
                            <img src="./img/account1.png" alt="">
                        </div>
                        <div class="user_name">Дамир</div>
                    </div>
                    <div class="review_text">
                        Мне очень понравилось, все чисто и уютно. Спасибо вам!
                    </div>
                    <div class="review_rating">
                        <div class="rating">
                            <img src="./img/star.png" alt="">
                            <img src="./img/star.png" alt="">
                            <img src="./img/star.png" alt="">
                            <img src="./img/star.png" alt="">
                            <img src="./img/star.png" alt="">
                        </div>
                    </div>
                </div>
                <div class="review_card">
                    <div class="review_header">
                        <div class="user_img">
                            <img src="./img/account1.png" alt="">
                        </div>
                        <div class="user_name">Дамир</div>
                    </div>
                    <div class="review_text">
                        Мне очень понравилось, все чисто и уютно. Спасибо вам!
                    </div>
                    <div class="review_rating">
                        <div class="rating">
                            <img src="./img/star.png" alt="">
                            <img src="./img/star.png" alt="">
                            <img src="./img/star.png" alt="">
                            <img src="./img/star.png" alt="">
                            <img src="./img/star.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <footer>
        <div class="first_row">
            <div class="logo">
                <img src="./img/Logo.png" alt="">
            </div>
            <div class="footer_address">
                <p>
                    Наш адрес:
                </p>
                <p>
                    Каскелен, Абылайхана 1/1
                </p>
            </div>
            <div class="footer_contact">
                <p>Контакты:</p>
                <p>+7 775 930 80 14</p>
            </div>
        </div>
        <div class="second_row">
            <div class="footer_playgrounds">
                <p>
                    Площадки:
                </p>
                <p>Баскетбольный</p>
                <p>Баскетбольный</p>
                <p>Баскетбольный</p>
            </div>
            <div class="footer_about">О нас</div>
        </div>
        <div class="third_row">
            <div class="social">
                <div class="social_item">
                    <img src="./img/instagram.png" alt="">
                </div>
                <div class="social_item">
                    <img src="./img/whatsapp.png" alt="">
                </div>
                <div class="social_item">
                    <img src="./img/telegram.png" alt="">
                </div>
            </div>
        </div>
    </footer>
</div>
</body>
</html>