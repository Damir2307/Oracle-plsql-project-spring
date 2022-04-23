<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>Playground Details page</title>
    <link rel="stylesheet" href="css/productDetail.css">
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
                <a href="/playgrounds" style="text-decoration: none; color: #00AADE;"><li>Спорт площадки</li></a>
                <%if (session.getAttribute("user") != null) {%>
                <a href="/logout" style="text-decoration: none; color: #00AADE;"><li>Выйти</li></a>
                <%}else{%>
                <a href="/login" style="text-decoration: none; color: #00AADE;"><li>Войти</li></a>
                <%}%>
            </ul>
        </div>
    </header>
    <section class="playgroundDetail">
        <div class="hero">
            <div class="heroDiv">
                <div class="hero_info">
                    <div class="hero_infoDiv">
                        <h1 class="hero_title"><c:out value="${playgroundDetails.getPlaygroundName()}" /></h1>
                        <div class="service">
                            <div class="service_info">
                                <img src="./img/placeholder 1.svg" alt="">
                                <p class="service_text"><c:out value="${playgroundDetails.getPlaygroundAddress()}" /></p>
                            </div>
                        </div>
                        <div class="service">
                            <div class="service_info">
                                <img src="./img/football-field%201.svg" alt="">
                                <p class="service_text"><c:out value="${sportName}" />ьный зал | <c:out value="${playgroundDetails.getRoofType()}" /> | <c:out value="${playgroundDetails.getCover()}" /></p>
                            </div>
                        </div>
                        <div class="services">
                            <div class="service">
                                <div class="service_info">
                                    <img src="./img/shower.png" alt="">
                                    <p class="service_text">Душ</p>
                                </div>
                                <div class="status">
                                    <c:if test="${playgroundDetails.isShower() == true}">
                                    <img src="./img/tick.png" alt="">
                                    </c:if>
                                    <c:if test="${playgroundDetails.isShower() == false}">
                                        <img src="./img/x.png" alt="">
                                    </c:if>

                                </div>
                            </div>

                            <div class="service">
                                <div class="service_info">
                                    <img src="./img/changing-room.png" alt="">
                                    <p class="service_text">Раздевалка</p>
                                </div>
                                <div class="status">
                                    <c:if test="${playgroundDetails.isDressingRoom() == true}">
                                        <img src="./img/tick.png" alt="">
                                    </c:if>
                                    <c:if test="${playgroundDetails.isDressingRoom() == false}">
                                        <img src="./img/x.png" alt="">
                                    </c:if>
                                </div>
                            </div>

                            <div class="service">
                                <div class="service_info">
                                    <img src="./img/tribune.png" alt="">
                                    <p class="service_text">Трибуна</p>
                                </div>
                                <div class="status">
                                    <c:if test="${playgroundDetails.isTribune() == true}">
                                        <img src="./img/tick.png" alt="">
                                    </c:if>
                                    <c:if test="${playgroundDetails.isTribune() == false}">
                                        <img src="./img/x.png" alt="">
                                    </c:if>
                                </div>
                            </div>

                            <div class="service">
                                <div class="service_info">
                                    <img src="./img/parking.png" alt="">
                                    <p class="service_text">Парковка</p>
                                </div>
                                <div class="status">
                                    <c:if test="${playgroundDetails.isParking() == true}">
                                        <img src="./img/tick.png" alt="">
                                    </c:if>
                                    <c:if test="${playgroundDetails.isParking() == false}">
                                        <img src="./img/x.png" alt="">
                                    </c:if>
                                </div>
                            </div>

                            <div class="service">
                                <div class="service_info">
                                    <img src="./img/phone.png" alt="">
                                    <p class="service_text"><c:out value="${playgroundDetails.getPhone()}" /></p>
                                </div>
                            </div>

                        </div>
                        <div class="hero_price">
                            <div class="tablePrice"><c:out value="${playgroundDetails.getPrice()}" /> ТГ т/час</div>
                        </div>
                        <button class="booking_btn">
                            Забронировать
                        </button>
                    </div>
                </div>
                <div class="hero_img">
                    <img src="./img/5a296f63b3afc7%201.png" alt="">
                </div>
            </div>
        </div>
        <div class="slider">
            <div class="slider_div">
                <div class="slider_items">
                    <div class="slider_item"><img src="<c:out value="${playgroundDetails.getUrl()}" />" alt=""></div>
                    <div class="slider_item checked"><img src="<c:out value="${playgroundDetails.getUrl()}" />" alt=""></div>
                    <div class="slider_item"><img src="<c:out value="${playgroundDetails.getUrl()}" />" alt=""></div>
                </div>
                <div class="prev">
                    <img src="./img/arrow.png" alt="">
                </div>
                <div class="next">
                    <img src="./img/arrow.png" alt="">
                </div>
            </div>
        </div>
        <div class="calendar">
            <div class="calender_div">
                <div class="section_title">
                    <div class="title_circle"></div>
                    <h1>Расписание</h1>
                </div>
                <table class="">
                    <thead>

                    <th></th>
                    <th><fmt:formatDate pattern="d-MMMM" value = "${date[0]}" /> <span><fmt:formatDate pattern="EEEE" value = "${date[0]}" /></span></th>
                    <th><fmt:formatDate pattern="d-MMMM" value = "${date[1]}" /> <span><fmt:formatDate pattern="EEEE" value = "${date[1]}" /></span></th>
                    <th><fmt:formatDate pattern="d-MMMM" value = "${date[2]}" /> <span><fmt:formatDate pattern="EEEE" value = "${date[2]}" /></span></th>
                    <th><fmt:formatDate pattern="d-MMMM" value = "${date[3]}" /> <span><fmt:formatDate pattern="EEEE" value = "${date[3]}" /></span></th>
                    <th><fmt:formatDate pattern="d-MMMM" value = "${date[4]}" /> <span><fmt:formatDate pattern="EEEE" value = "${date[4]}" /></span></th>
                    <th><fmt:formatDate pattern="d-MMMM" value = "${date[5]}" /> <span><fmt:formatDate pattern="EEEE" value = "${date[5]}" /></span></th>


                    </thead>
                    <tbody>
                    <tr>
                        <td>12:00</td>
                        <td><div class="tablePrice checked">3000 ТГ</div></td>
                        <td><div class="tablePrice">3000 ТГ</div></td>
                        <td><div class="tablePrice">3000 ТГ</div></td>
                        <td><div class="tablePrice">3000 ТГ</div></td>
                        <td><div class="tablePrice">3000 ТГ</div></td>
                        <td><div class="tablePrice">3000 ТГ</div></td>
                    </tr>
                    <tr>
                        <td>13:00</td>
                        <td><div class="tablePrice">3000 ТГ</div></td>
                        <td><div class="tablePrice">3000 ТГ</div></td>
                        <td><div class="tablePrice">3000 ТГ</div></td>
                        <td><div class="tablePrice disabled">3000 ТГ</div></td>
                        <td><div class="tablePrice disabled">3000 ТГ</div></td>
                        <td><div class="tablePrice disabled">3000 ТГ</div></td>
                    </tr>
                    <tr>
                        <td>14:00</td>
                        <td><div class="tablePrice disabled">3000 ТГ</div></td>
                        <td><div class="tablePrice disabled">3000 ТГ</div></td>
                        <td><div class="tablePrice">3000 ТГ</div></td>
                        <td><div class="tablePrice">3000 ТГ</div></td>
                        <td><div class="tablePrice">3000 ТГ</div></td>
                        <td><div class="tablePrice">3000 ТГ</div></td>
                    </tr>
                    <tr>
                        <td>15:00</td>
                        <td><div class="tablePrice checked">3000 ТГ</div></td>
                        <td><div class="tablePrice">3000 ТГ</div></td>
                        <td><div class="tablePrice">3000 ТГ</div></td>
                        <td><div class="tablePrice disabled">3000 ТГ</div></td>
                        <td><div class="tablePrice disabled">3000 ТГ</div></td>
                        <td><div class="tablePrice disabled">3000 ТГ</div></td>
                    </tr>
                    <tr>
                        <td>16:00</td>
                        <td><div class="tablePrice">3000 ТГ</div></td>
                        <td><div class="tablePrice checked">3000 ТГ</div></td>
                        <td><div class="tablePrice">3000 ТГ</div></td>
                        <td><div class="tablePrice disabled">3000 ТГ</div></td>
                        <td><div class="tablePrice">3000 ТГ</div></td>
                        <td><div class="tablePrice disabled">3000 ТГ</div></td>
                    </tr>
                    <tr>
                        <td>17:00</td>
                        <td><div class="tablePrice">3000 ТГ</div></td>
                        <td><div class="tablePrice checked">3000 ТГ</div></td>
                        <td><div class="tablePrice disabled">3000 ТГ</div></td>
                        <td><div class="tablePrice">3000 ТГ</div></td>
                        <td><div class="tablePrice">3000 ТГ</div></td>
                        <td><div class="tablePrice">3000 ТГ</div></td>
                    </tr>
                    <tr>
                        <td>18:00</td>
                        <td><div class="tablePrice">3000 ТГ</div></td>
                        <td><div class="tablePrice">3000 ТГ</div></td>
                        <td><div class="tablePrice">3000 ТГ</div></td>
                        <td><div class="tablePrice">3000 ТГ</div></td>
                        <td><div class="tablePrice">3000 ТГ</div></td>
                        <td><div class="tablePrice">3000 ТГ</div></td>
                    </tr>

                    </tbody>
                </table>
                <hr/>
                <div class="chosen_section">
                    <div class="chosen_row">
                        <div class="chosen_date">20 февраля <span>сегодня</span></div>
                        <div class="chosen_time">с 12 :00 по 13:00</div>
                        <div class="chosen_section_price">3000 тг</div>
                        <div class="cancel_button">
                            <button class="cancel">Отменить</button>
                        </div>
                    </div>
                    <div class="chosen_row">
                        <div class="chosen_date">21 февраля пт</div>
                        <div class="chosen_time">с 12 :00 по 13:00</div>
                        <div class="chosen_section_price">3000 тг</div>
                        <div class="cancel_button">
                            <button class="cancel">Отменить</button>
                        </div>
                    </div>
                    <div class="total_info">
                        <div class="totalPrice">
                            Итого : <span>6000 тг</span>
                        </div>
                        <div class="booking_button">
                            <button>
                                Забронировать
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

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