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
                    <fmt:formatDate pattern="M" value = "${date[0]}" var="m0" />
                    <fmt:formatDate pattern="d" value = "${date[0]}" var="d0"/>
                    <fmt:formatDate pattern="M" value = "${date[1]}" var="m1" />
                    <fmt:formatDate pattern="d" value = "${date[1]}" var="d1"/>
                    <fmt:formatDate pattern="M" value = "${date[2]}" var="m2" />
                    <fmt:formatDate pattern="d" value = "${date[2]}" var="d2"/>
                    <fmt:formatDate pattern="M" value = "${date[3]}" var="m3" />
                    <fmt:formatDate pattern="d" value = "${date[3]}" var="d3"/>
                    <fmt:formatDate pattern="M" value = "${date[4]}" var="m4" />
                    <fmt:formatDate pattern="d" value = "${date[4]}" var="d4"/>
                    <fmt:formatDate pattern="M" value = "${date[5]}" var="m5" />
                    <fmt:formatDate pattern="d" value = "${date[5]}" var="d5"/>


                    </thead>
                    <tbody>
                    <tr>
                        <td>12:00</td>
                        <form action="/booking">
                            <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                            <input type="hidden" name="time" value="12">
                            <input type="hidden" name="month" value="${m0}">
                            <input type="hidden" name="day"  value="${d0}">
                            <c:set var="bool" value="true"/>
                            <c:forEach var="booking" items="${bookingList}">
                                <c:if test="${booking.getBronMonth() == m0}">
                                    <c:if test="${booking.getBronDay() == d0}">
                                        <c:if test="${booking.getBronTime() == 12}">
                                            <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                            <c:set var="bool" value="false"/>
                                        </c:if>
                                    </c:if>
                                </c:if>
                            </c:forEach>
                            <c:if test="${bool eq 'true'}">
                                <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                                <c:set var="bool" value="false"/>
                            </c:if>
                        </form>
                        <form action="/booking">
                            <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                            <input type="hidden" name="time" value="12">
                            <input type="hidden" name="month" value="${m1}">
                            <input type="hidden" name="day"  value="${d1}">
                            <c:set var="bool" value="true"/>
                            <c:forEach var="booking" items="${bookingList}">
                                <c:if test="${booking.getBronMonth() == m1}">
                                    <c:if test="${booking.getBronDay() == d1}">
                                        <c:if test="${booking.getBronTime() == 12}">
                                            <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                            <c:set var="bool" value="false"/>
                                        </c:if>
                                    </c:if>
                                </c:if>
                            </c:forEach>
                            <c:if test="${bool eq 'true'}">
                                <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                                <c:set var="bool" value="false"/>
                            </c:if>
                        </form>
                        <form action="/booking">
                            <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                            <input type="hidden" name="time" value="12">
                            <input type="hidden" name="month" value="${m2}">
                            <input type="hidden" name="day"  value="${d2}">
                            <c:set var="bool" value="true"/>
                            <c:forEach var="booking" items="${bookingList}">
                                <c:if test="${booking.getBronMonth() == m2}">
                                    <c:if test="${booking.getBronDay() == d2}">
                                        <c:if test="${booking.getBronTime() == 12}">
                                            <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                            <c:set var="bool" value="false"/>
                                        </c:if>
                                    </c:if>
                                </c:if>
                            </c:forEach>
                            <c:if test="${bool eq 'true'}">
                                <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                                <c:set var="bool" value="false"/>
                            </c:if>
                        </form>
                        <form action="/booking">
                            <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                            <input type="hidden" name="time" value="12">
                            <input type="hidden" name="month" value="${m3}">
                            <input type="hidden" name="day"  value="${d3}">
                            <c:set var="bool" value="true"/>
                            <c:forEach var="booking" items="${bookingList}">
                                <c:if test="${booking.getBronMonth() == m3}">
                                    <c:if test="${booking.getBronDay() == d3}">
                                        <c:if test="${booking.getBronTime() == 12}">
                                            <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                            <c:set var="bool" value="false"/>
                                        </c:if>
                                    </c:if>
                                </c:if>
                            </c:forEach>
                            <c:if test="${bool eq 'true'}">
                                <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                                <c:set var="bool" value="false"/>
                            </c:if>
                        </form>
                        <form action="/booking">
                            <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                            <input type="hidden" name="time" value="12">
                            <input type="hidden" name="month" value="${m4}">
                            <input type="hidden" name="day"  value="${d4}">
                            <c:set var="bool" value="true"/>
                            <c:forEach var="booking" items="${bookingList}">
                                <c:if test="${booking.getBronMonth() == m4}">
                                    <c:if test="${booking.getBronDay() == d4}">
                                        <c:if test="${booking.getBronTime() == 12}">
                                            <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                            <c:set var="bool" value="false"/>
                                        </c:if>
                                    </c:if>
                                </c:if>
                            </c:forEach>
                            <c:if test="${bool eq 'true'}">
                                <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                                <c:set var="bool" value="false"/>
                            </c:if>
                        </form>
                        <form action="/booking">
                            <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                            <input type="hidden" name="time" value="12">
                            <input type="hidden" name="month" value="${m5}">
                            <input type="hidden" name="day"  value="${d5}">
                            <c:set var="bool" value="true"/>
                            <c:forEach var="booking" items="${bookingList}">
                                <c:if test="${booking.getBronMonth() == m5}">
                                    <c:if test="${booking.getBronDay() == d5}">
                                        <c:if test="${booking.getBronTime() == 12}">
                                            <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                            <c:set var="bool" value="false"/>
                                        </c:if>
                                    </c:if>
                                </c:if>
                            </c:forEach>
                            <c:if test="${bool eq 'true'}">
                                <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                                <c:set var="bool" value="false"/>
                            </c:if>
                        </form>
                    </tr>
                    <tr>
                        <td>13:00</td>
                        <form action="/booking">
                            <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                            <input type="hidden" name="time" value="13">
                            <input type="hidden" name="month" value="${m0}">
                            <input type="hidden" name="day"  value="${d0}">
                            <c:set var="bool" value="true"/>
                            <c:forEach var="booking" items="${bookingList}">
                                <c:if test="${booking.getBronMonth() == m0}">
                                    <c:if test="${booking.getBronDay() == d0}">
                                        <c:if test="${booking.getBronTime() == 13}">
                                            <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                            <c:set var="bool" value="false"/>
                                        </c:if>
                                    </c:if>
                                </c:if>
                            </c:forEach>
                            <c:if test="${bool eq 'true'}">
                                <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                                <c:set var="bool" value="false"/>
                            </c:if>
                        </form>
                        <form action="/booking">
                            <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                            <input type="hidden" name="time" value="13">
                            <input type="hidden" name="month" value="${m1}">
                            <input type="hidden" name="day"  value="${d1}">
                            <c:set var="bool" value="true"/>
                            <c:forEach var="booking" items="${bookingList}">
                                <c:if test="${booking.getBronMonth() == m1}">
                                    <c:if test="${booking.getBronDay() == d1}">
                                        <c:if test="${booking.getBronTime() == 13}">
                                            <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                            <c:set var="bool" value="false"/>
                                        </c:if>
                                    </c:if>
                                </c:if>
                            </c:forEach>
                            <c:if test="${bool eq 'true'}">
                                <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                                <c:set var="bool" value="false"/>
                            </c:if>
                        </form>
                        <form action="/booking">
                            <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                            <input type="hidden" name="time" value="13">
                            <input type="hidden" name="month" value="${m2}">
                            <input type="hidden" name="day"  value="${d2}">
                            <c:set var="bool" value="true"/>
                            <c:forEach var="booking" items="${bookingList}">
                                <c:if test="${booking.getBronMonth() == m2}">
                                    <c:if test="${booking.getBronDay() == d2}">
                                        <c:if test="${booking.getBronTime() == 13}">
                                            <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                            <c:set var="bool" value="false"/>
                                        </c:if>
                                    </c:if>
                                </c:if>
                            </c:forEach>
                            <c:if test="${bool eq 'true'}">
                                <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                                <c:set var="bool" value="false"/>
                            </c:if>
                        </form>
                        <form action="/booking">
                            <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                            <input type="hidden" name="time" value="13">
                            <input type="hidden" name="month" value="${m3}">
                            <input type="hidden" name="day"  value="${d3}">
                            <c:set var="bool" value="true"/>
                            <c:forEach var="booking" items="${bookingList}">
                                <c:if test="${booking.getBronMonth() == m3}">
                                    <c:if test="${booking.getBronDay() == d3}">
                                        <c:if test="${booking.getBronTime() == 13}">
                                            <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                            <c:set var="bool" value="false"/>
                                        </c:if>
                                    </c:if>
                                </c:if>
                            </c:forEach>
                            <c:if test="${bool eq 'true'}">
                                <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                                <c:set var="bool" value="false"/>
                            </c:if>
                        </form>
                        <form action="/booking">
                            <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                            <input type="hidden" name="time" value="13">
                            <input type="hidden" name="month" value="${m4}">
                            <input type="hidden" name="day"  value="${d4}">
                            <c:set var="bool" value="true"/>
                            <c:forEach var="booking" items="${bookingList}">
                                <c:if test="${booking.getBronMonth() == m4}">
                                    <c:if test="${booking.getBronDay() == d4}">
                                        <c:if test="${booking.getBronTime() == 13}">
                                            <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                            <c:set var="bool" value="false"/>
                                        </c:if>
                                    </c:if>
                                </c:if>
                            </c:forEach>
                            <c:if test="${bool eq 'true'}">
                                <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                                <c:set var="bool" value="false"/>
                            </c:if>
                        </form>
                        <form action="/booking">
                            <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                            <input type="hidden" name="time" value="13">
                            <input type="hidden" name="month" value="${m5}">
                            <input type="hidden" name="day"  value="${d5}">
                            <c:set var="bool" value="true"/>
                            <c:forEach var="booking" items="${bookingList}">
                                <c:if test="${booking.getBronMonth() == m5}">
                                    <c:if test="${booking.getBronDay() == d5}">
                                        <c:if test="${booking.getBronTime() == 13}">
                                            <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                            <c:set var="bool" value="false"/>
                                        </c:if>
                                    </c:if>
                                </c:if>
                            </c:forEach>
                            <c:if test="${bool eq 'true'}">
                                <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                                <c:set var="bool" value="false"/>
                            </c:if>
                        </form>
                    </tr>
                    <tr>
                        <td>14:00</td>
                        <form action="/booking">
                            <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                            <input type="hidden" name="time" value="14">
                            <input type="hidden" name="month" value="${m0}">
                            <input type="hidden" name="day"  value="${d0}">
                            <c:set var="bool" value="true"/>
                            <c:forEach var="booking" items="${bookingList}">
                                <c:if test="${booking.getBronMonth() == m0}">
                                    <c:if test="${booking.getBronDay() == d0}">
                                        <c:if test="${booking.getBronTime() == 14}">
                                            <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                            <c:set var="bool" value="false"/>
                                        </c:if>
                                    </c:if>
                                </c:if>
                            </c:forEach>
                            <c:if test="${bool eq 'true'}">
                                <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                                <c:set var="bool" value="false"/>
                            </c:if>
                        </form>
                        <form action="/booking">
                            <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                            <input type="hidden" name="time" value="14">
                            <input type="hidden" name="month" value="${m1}">
                            <input type="hidden" name="day"  value="${d1}">
                            <c:set var="bool" value="true"/>
                            <c:forEach var="booking" items="${bookingList}">
                                <c:if test="${booking.getBronMonth() == m1}">
                                    <c:if test="${booking.getBronDay() == d1}">
                                        <c:if test="${booking.getBronTime() == 14}">
                                            <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                            <c:set var="bool" value="false"/>
                                        </c:if>
                                    </c:if>
                                </c:if>
                            </c:forEach>
                            <c:if test="${bool eq 'true'}">
                                <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                                <c:set var="bool" value="false"/>
                            </c:if>
                        </form>
                        <form action="/booking">
                            <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                            <input type="hidden" name="time" value="14">
                            <input type="hidden" name="month" value="${m2}">
                            <input type="hidden" name="day"  value="${d2}">
                            <c:set var="bool" value="true"/>
                            <c:forEach var="booking" items="${bookingList}">
                                <c:if test="${booking.getBronMonth() == m2}">
                                    <c:if test="${booking.getBronDay() == d2}">
                                        <c:if test="${booking.getBronTime() == 14}">
                                            <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                            <c:set var="bool" value="false"/>
                                        </c:if>
                                    </c:if>
                                </c:if>
                            </c:forEach>
                            <c:if test="${bool eq 'true'}">
                                <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                                <c:set var="bool" value="false"/>
                            </c:if>
                        </form>
                        <form action="/booking">
                            <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                            <input type="hidden" name="time" value="14">
                            <input type="hidden" name="month" value="${m3}">
                            <input type="hidden" name="day"  value="${d3}">
                            <c:set var="bool" value="true"/>
                            <c:forEach var="booking" items="${bookingList}">
                                <c:if test="${booking.getBronMonth() == m3}">
                                    <c:if test="${booking.getBronDay() == d3}">
                                        <c:if test="${booking.getBronTime() == 14}">
                                            <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                            <c:set var="bool" value="false"/>
                                        </c:if>
                                    </c:if>
                                </c:if>
                            </c:forEach>
                            <c:if test="${bool eq 'true'}">
                                <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                                <c:set var="bool" value="false"/>
                            </c:if>
                        </form>
                        <form action="/booking">
                            <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                            <input type="hidden" name="time" value="14">
                            <input type="hidden" name="month" value="${m4}">
                            <input type="hidden" name="day"  value="${d4}">
                            <c:set var="bool" value="true"/>
                            <c:forEach var="booking" items="${bookingList}">
                                <c:if test="${booking.getBronMonth() == m4}">
                                    <c:if test="${booking.getBronDay() == d4}">
                                        <c:if test="${booking.getBronTime() == 14}">
                                            <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                            <c:set var="bool" value="false"/>
                                        </c:if>
                                    </c:if>
                                </c:if>
                            </c:forEach>
                            <c:if test="${bool eq 'true'}">
                                <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                                <c:set var="bool" value="false"/>
                            </c:if>
                        </form>
                        <form action="/booking">
                            <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                            <input type="hidden" name="time" value="14">
                            <input type="hidden" name="month" value="${m5}">
                            <input type="hidden" name="day"  value="${d5}">
                            <c:set var="bool" value="true"/>
                            <c:forEach var="booking" items="${bookingList}">
                                <c:if test="${booking.getBronMonth() == m5}">
                                    <c:if test="${booking.getBronDay() == d5}">
                                        <c:if test="${booking.getBronTime() == 14}">
                                            <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                            <c:set var="bool" value="false"/>
                                        </c:if>
                                    </c:if>
                                </c:if>
                            </c:forEach>
                            <c:if test="${bool eq 'true'}">
                                <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                                <c:set var="bool" value="false"/>
                            </c:if>
                        </form>
                    </tr>
                        <td>15:00</td>
                    <form action="/booking">
                        <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                        <input type="hidden" name="time" value="15">
                        <input type="hidden" name="month" value="${m0}">
                        <input type="hidden" name="day"  value="${d0}">
                        <c:set var="bool" value="true"/>
                        <c:forEach var="booking" items="${bookingList}">
                            <c:if test="${booking.getBronMonth() == m0}">
                                <c:if test="${booking.getBronDay() == d0}">
                                    <c:if test="${booking.getBronTime() == 15}">
                                        <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                        <c:set var="bool" value="false"/>
                                    </c:if>
                                </c:if>
                            </c:if>
                        </c:forEach>
                        <c:if test="${bool eq 'true'}">
                            <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                            <c:set var="bool" value="false"/>
                        </c:if>
                    </form>
                    <form action="/booking">
                        <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                        <input type="hidden" name="time" value="15">
                        <input type="hidden" name="month" value="${m1}">
                        <input type="hidden" name="day"  value="${d1}">
                        <c:set var="bool" value="true"/>
                        <c:forEach var="booking" items="${bookingList}">
                            <c:if test="${booking.getBronMonth() == m1}">
                                <c:if test="${booking.getBronDay() == d1}">
                                    <c:if test="${booking.getBronTime() == 15}">
                                        <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                        <c:set var="bool" value="false"/>
                                    </c:if>
                                </c:if>
                            </c:if>
                        </c:forEach>
                        <c:if test="${bool eq 'true'}">
                            <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                            <c:set var="bool" value="false"/>
                        </c:if>
                    </form>
                    <form action="/booking">
                        <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                        <input type="hidden" name="time" value="15">
                        <input type="hidden" name="month" value="${m2}">
                        <input type="hidden" name="day"  value="${d2}">
                        <c:set var="bool" value="true"/>
                        <c:forEach var="booking" items="${bookingList}">
                            <c:if test="${booking.getBronMonth() == m2}">
                                <c:if test="${booking.getBronDay() == d2}">
                                    <c:if test="${booking.getBronTime() == 15}">
                                        <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                        <c:set var="bool" value="false"/>
                                    </c:if>
                                </c:if>
                            </c:if>
                        </c:forEach>
                        <c:if test="${bool eq 'true'}">
                            <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                            <c:set var="bool" value="false"/>
                        </c:if>
                    </form>
                    <form action="/booking">
                        <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                        <input type="hidden" name="time" value="15">
                        <input type="hidden" name="month" value="${m3}">
                        <input type="hidden" name="day"  value="${d3}">
                        <c:set var="bool" value="true"/>
                        <c:forEach var="booking" items="${bookingList}">
                            <c:if test="${booking.getBronMonth() == m3}">
                                <c:if test="${booking.getBronDay() == d3}">
                                    <c:if test="${booking.getBronTime() == 15}">
                                        <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                        <c:set var="bool" value="false"/>
                                    </c:if>
                                </c:if>
                            </c:if>
                        </c:forEach>
                        <c:if test="${bool eq 'true'}">
                            <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                            <c:set var="bool" value="false"/>
                        </c:if>
                    </form>
                    <form action="/booking">
                        <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                        <input type="hidden" name="time" value="15">
                        <input type="hidden" name="month" value="${m4}">
                        <input type="hidden" name="day"  value="${d4}">
                        <c:set var="bool" value="true"/>
                        <c:forEach var="booking" items="${bookingList}">
                            <c:if test="${booking.getBronMonth() == m4}">
                                <c:if test="${booking.getBronDay() == d4}">
                                    <c:if test="${booking.getBronTime() == 15}">
                                        <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                        <c:set var="bool" value="false"/>
                                    </c:if>
                                </c:if>
                            </c:if>
                        </c:forEach>
                        <c:if test="${bool eq 'true'}">
                            <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                            <c:set var="bool" value="false"/>
                        </c:if>
                    </form>
                    <form action="/booking">
                        <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                        <input type="hidden" name="time" value="15">
                        <input type="hidden" name="month" value="${m5}">
                        <input type="hidden" name="day"  value="${d5}">
                        <c:set var="bool" value="true"/>
                        <c:forEach var="booking" items="${bookingList}">
                            <c:if test="${booking.getBronMonth() == m5}">
                                <c:if test="${booking.getBronDay() == d5}">
                                    <c:if test="${booking.getBronTime() == 15}">
                                        <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                        <c:set var="bool" value="false"/>
                                    </c:if>
                                </c:if>
                            </c:if>
                        </c:forEach>
                        <c:if test="${bool eq 'true'}">
                            <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                            <c:set var="bool" value="false"/>
                        </c:if>
                    </form>
                    </tr>
                        <td>16:00</td>
                    <form action="/booking">
                        <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                        <input type="hidden" name="time" value="16">
                        <input type="hidden" name="month" value="${m0}">
                        <input type="hidden" name="day"  value="${d0}">
                        <c:set var="bool" value="true"/>
                        <c:forEach var="booking" items="${bookingList}">
                            <c:if test="${booking.getBronMonth() == m0}">
                                <c:if test="${booking.getBronDay() == d0}">
                                    <c:if test="${booking.getBronTime() == 16}">
                                        <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                        <c:set var="bool" value="false"/>
                                    </c:if>
                                </c:if>
                            </c:if>
                        </c:forEach>
                        <c:if test="${bool eq 'true'}">
                            <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                            <c:set var="bool" value="false"/>
                        </c:if>
                    </form>
                    <form action="/booking">
                        <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                        <input type="hidden" name="time" value="16">
                        <input type="hidden" name="month" value="${m1}">
                        <input type="hidden" name="day"  value="${d1}">
                        <c:set var="bool" value="true"/>
                        <c:forEach var="booking" items="${bookingList}">
                            <c:if test="${booking.getBronMonth() == m1}">
                                <c:if test="${booking.getBronDay() == d1}">
                                    <c:if test="${booking.getBronTime() == 16}">
                                        <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                        <c:set var="bool" value="false"/>
                                    </c:if>
                                </c:if>
                            </c:if>
                        </c:forEach>
                        <c:if test="${bool eq 'true'}">
                            <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                            <c:set var="bool" value="false"/>
                        </c:if>
                    </form>
                    <form action="/booking">
                        <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                        <input type="hidden" name="time" value="16">
                        <input type="hidden" name="month" value="${m2}">
                        <input type="hidden" name="day"  value="${d2}">
                        <c:set var="bool" value="true"/>
                        <c:forEach var="booking" items="${bookingList}">
                            <c:if test="${booking.getBronMonth() == m2}">
                                <c:if test="${booking.getBronDay() == d2}">
                                    <c:if test="${booking.getBronTime() == 16}">
                                        <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                        <c:set var="bool" value="false"/>
                                    </c:if>
                                </c:if>
                            </c:if>
                        </c:forEach>
                        <c:if test="${bool eq 'true'}">
                            <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                            <c:set var="bool" value="false"/>
                        </c:if>
                    </form>
                    <form action="/booking">
                        <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                        <input type="hidden" name="time" value="16">
                        <input type="hidden" name="month" value="${m3}">
                        <input type="hidden" name="day"  value="${d3}">
                        <c:set var="bool" value="true"/>
                        <c:forEach var="booking" items="${bookingList}">
                            <c:if test="${booking.getBronMonth() == m3}">
                                <c:if test="${booking.getBronDay() == d3}">
                                    <c:if test="${booking.getBronTime() == 16}">
                                        <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                        <c:set var="bool" value="false"/>
                                    </c:if>
                                </c:if>
                            </c:if>
                        </c:forEach>
                        <c:if test="${bool eq 'true'}">
                            <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                            <c:set var="bool" value="false"/>
                        </c:if>
                    </form>
                    <form action="/booking">
                        <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                        <input type="hidden" name="time" value="16">
                        <input type="hidden" name="month" value="${m4}">
                        <input type="hidden" name="day"  value="${d4}">
                        <c:set var="bool" value="true"/>
                        <c:forEach var="booking" items="${bookingList}">
                            <c:if test="${booking.getBronMonth() == m4}">
                                <c:if test="${booking.getBronDay() == d4}">
                                    <c:if test="${booking.getBronTime() == 16}">
                                        <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                        <c:set var="bool" value="false"/>
                                    </c:if>
                                </c:if>
                            </c:if>
                        </c:forEach>
                        <c:if test="${bool eq 'true'}">
                            <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                            <c:set var="bool" value="false"/>
                        </c:if>
                    </form>
                    <form action="/booking">
                        <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                        <input type="hidden" name="time" value="16">
                        <input type="hidden" name="month" value="${m5}">
                        <input type="hidden" name="day"  value="${d5}">
                        <c:set var="bool" value="true"/>
                        <c:forEach var="booking" items="${bookingList}">
                            <c:if test="${booking.getBronMonth() == m5}">
                                <c:if test="${booking.getBronDay() == d5}">
                                    <c:if test="${booking.getBronTime() == 16}">
                                        <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                        <c:set var="bool" value="false"/>
                                    </c:if>
                                </c:if>
                            </c:if>
                        </c:forEach>
                        <c:if test="${bool eq 'true'}">
                            <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                            <c:set var="bool" value="false"/>
                        </c:if>
                    </form>
                    </tr>
                        <td>17:00</td>
                    <form action="/booking">
                        <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                        <input type="hidden" name="time" value="17">
                        <input type="hidden" name="month" value="${m0}">
                        <input type="hidden" name="day"  value="${d0}">
                        <c:set var="bool" value="true"/>
                        <c:forEach var="booking" items="${bookingList}">
                            <c:if test="${booking.getBronMonth() == m0}">
                                <c:if test="${booking.getBronDay() == d0}">
                                    <c:if test="${booking.getBronTime() == 17}">
                                        <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                        <c:set var="bool" value="false"/>
                                    </c:if>
                                </c:if>
                            </c:if>
                        </c:forEach>
                        <c:if test="${bool eq 'true'}">
                            <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                            <c:set var="bool" value="false"/>
                        </c:if>
                    </form>
                    <form action="/booking">
                        <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                        <input type="hidden" name="time" value="17">
                        <input type="hidden" name="month" value="${m1}">
                        <input type="hidden" name="day"  value="${d1}">
                        <c:set var="bool" value="true"/>
                        <c:forEach var="booking" items="${bookingList}">
                            <c:if test="${booking.getBronMonth() == m1}">
                                <c:if test="${booking.getBronDay() == d1}">
                                    <c:if test="${booking.getBronTime() == 17}">
                                        <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                        <c:set var="bool" value="false"/>
                                    </c:if>
                                </c:if>
                            </c:if>
                        </c:forEach>
                        <c:if test="${bool eq 'true'}">
                            <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                            <c:set var="bool" value="false"/>
                        </c:if>
                    </form>
                    <form action="/booking">
                        <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                        <input type="hidden" name="time" value="17">
                        <input type="hidden" name="month" value="${m2}">
                        <input type="hidden" name="day"  value="${d2}">
                        <c:set var="bool" value="true"/>
                        <c:forEach var="booking" items="${bookingList}">
                            <c:if test="${booking.getBronMonth() == m2}">
                                <c:if test="${booking.getBronDay() == d2}">
                                    <c:if test="${booking.getBronTime() == 17}">
                                        <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                        <c:set var="bool" value="false"/>
                                    </c:if>
                                </c:if>
                            </c:if>
                        </c:forEach>
                        <c:if test="${bool eq 'true'}">
                            <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                            <c:set var="bool" value="false"/>
                        </c:if>
                    </form>
                    <form action="/booking">
                        <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                        <input type="hidden" name="time" value="17">
                        <input type="hidden" name="month" value="${m3}">
                        <input type="hidden" name="day"  value="${d3}">
                        <c:set var="bool" value="true"/>
                        <c:forEach var="booking" items="${bookingList}">
                            <c:if test="${booking.getBronMonth() == m3}">
                                <c:if test="${booking.getBronDay() == d3}">
                                    <c:if test="${booking.getBronTime() == 17}">
                                        <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                        <c:set var="bool" value="false"/>
                                    </c:if>
                                </c:if>
                            </c:if>
                        </c:forEach>
                        <c:if test="${bool eq 'true'}">
                            <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                            <c:set var="bool" value="false"/>
                        </c:if>
                    </form>
                    <form action="/booking">
                        <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                        <input type="hidden" name="time" value="17">
                        <input type="hidden" name="month" value="${m4}">
                        <input type="hidden" name="day"  value="${d4}">
                        <c:set var="bool" value="true"/>
                        <c:forEach var="booking" items="${bookingList}">
                            <c:if test="${booking.getBronMonth() == m4}">
                                <c:if test="${booking.getBronDay() == d4}">
                                    <c:if test="${booking.getBronTime() == 17}">
                                        <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                        <c:set var="bool" value="false"/>
                                    </c:if>
                                </c:if>
                            </c:if>
                        </c:forEach>
                        <c:if test="${bool eq 'true'}">
                            <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                            <c:set var="bool" value="false"/>
                        </c:if>
                    </form>
                    <form action="/booking">
                        <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                        <input type="hidden" name="time" value="17">
                        <input type="hidden" name="month" value="${m5}">
                        <input type="hidden" name="day"  value="${d5}">
                        <c:set var="bool" value="true"/>
                        <c:forEach var="booking" items="${bookingList}">
                            <c:if test="${booking.getBronMonth() == m5}">
                                <c:if test="${booking.getBronDay() == d5}">
                                    <c:if test="${booking.getBronTime() == 17}">
                                        <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                        <c:set var="bool" value="false"/>
                                    </c:if>
                                </c:if>
                            </c:if>
                        </c:forEach>
                        <c:if test="${bool eq 'true'}">
                            <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                            <c:set var="bool" value="false"/>
                        </c:if>
                    </form>
                    </tr>
                        <td>18:00</td>
                    <form action="/booking">
                        <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                        <input type="hidden" name="time" value="18">
                        <input type="hidden" name="month" value="${m0}">
                        <input type="hidden" name="day"  value="${d0}">
                        <c:set var="bool" value="true"/>
                        <c:forEach var="booking" items="${bookingList}">
                            <c:if test="${booking.getBronMonth() == m0}">
                                <c:if test="${booking.getBronDay() == d0}">
                                    <c:if test="${booking.getBronTime() == 18}">
                                        <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                        <c:set var="bool" value="false"/>
                                    </c:if>
                                </c:if>
                            </c:if>
                        </c:forEach>
                        <c:if test="${bool eq 'true'}">
                            <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                            <c:set var="bool" value="false"/>
                        </c:if>
                    </form>
                    <form action="/booking">
                        <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                        <input type="hidden" name="time" value="18">
                        <input type="hidden" name="month" value="${m1}">
                        <input type="hidden" name="day"  value="${d1}">
                        <c:set var="bool" value="true"/>
                        <c:forEach var="booking" items="${bookingList}">
                            <c:if test="${booking.getBronMonth() == m1}">
                                <c:if test="${booking.getBronDay() == d1}">
                                    <c:if test="${booking.getBronTime() == 18}">
                                        <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                        <c:set var="bool" value="false"/>
                                    </c:if>
                                </c:if>
                            </c:if>
                        </c:forEach>
                        <c:if test="${bool eq 'true'}">
                            <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                            <c:set var="bool" value="false"/>
                        </c:if>
                    </form>
                    <form action="/booking">
                        <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                        <input type="hidden" name="time" value="18">
                        <input type="hidden" name="month" value="${m2}">
                        <input type="hidden" name="day"  value="${d2}">
                        <c:set var="bool" value="true"/>
                        <c:forEach var="booking" items="${bookingList}">
                            <c:if test="${booking.getBronMonth() == m2}">
                                <c:if test="${booking.getBronDay() == d2}">
                                    <c:if test="${booking.getBronTime() == 18}">
                                        <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                        <c:set var="bool" value="false"/>
                                    </c:if>
                                </c:if>
                            </c:if>
                        </c:forEach>
                        <c:if test="${bool eq 'true'}">
                            <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                            <c:set var="bool" value="false"/>
                        </c:if>
                    </form>
                    <form action="/booking">
                        <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                        <input type="hidden" name="time" value="18">
                        <input type="hidden" name="month" value="${m3}">
                        <input type="hidden" name="day"  value="${d3}">
                        <c:set var="bool" value="true"/>
                        <c:forEach var="booking" items="${bookingList}">
                            <c:if test="${booking.getBronMonth() == m3}">
                                <c:if test="${booking.getBronDay() == d3}">
                                    <c:if test="${booking.getBronTime() == 18}">
                                        <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                        <c:set var="bool" value="false"/>
                                    </c:if>
                                </c:if>
                            </c:if>
                        </c:forEach>
                        <c:if test="${bool eq 'true'}">
                            <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                            <c:set var="bool" value="false"/>
                        </c:if>
                    </form>
                    <form action="/booking">
                        <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                        <input type="hidden" name="time" value="18">
                        <input type="hidden" name="month" value="${m4}">
                        <input type="hidden" name="day"  value="${d4}">
                        <c:set var="bool" value="true"/>
                        <c:forEach var="booking" items="${bookingList}">
                            <c:if test="${booking.getBronMonth() == m4}">
                                <c:if test="${booking.getBronDay() == d4}">
                                    <c:if test="${booking.getBronTime() == 18}">
                                        <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                        <c:set var="bool" value="false"/>
                                    </c:if>
                                </c:if>
                            </c:if>
                        </c:forEach>
                        <c:if test="${bool eq 'true'}">
                            <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                            <c:set var="bool" value="false"/>
                        </c:if>
                    </form>
                    <form action="/booking">
                        <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                        <input type="hidden" name="time" value="18">
                        <input type="hidden" name="month" value="${m5}">
                        <input type="hidden" name="day"  value="${d5}">
                        <c:set var="bool" value="true"/>
                        <c:forEach var="booking" items="${bookingList}">
                            <c:if test="${booking.getBronMonth() == m5}">
                                <c:if test="${booking.getBronDay() == d5}">
                                    <c:if test="${booking.getBronTime() == 18}">
                                        <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                        <c:set var="bool" value="false"/>
                                    </c:if>
                                </c:if>
                            </c:if>
                        </c:forEach>
                        <c:if test="${bool eq 'true'}">
                            <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                            <c:set var="bool" value="false"/>
                        </c:if>
                    </form>
                    </tr>
                    <tr>
                        <td>19:00</td>
                        <form action="/booking">
                            <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                            <input type="hidden" name="time" value="19">
                            <input type="hidden" name="month" value="${m0}">
                            <input type="hidden" name="day"  value="${d0}">
                            <c:set var="bool" value="true"/>
                            <c:forEach var="booking" items="${bookingList}">
                                <c:if test="${booking.getBronMonth() == m0}">
                                    <c:if test="${booking.getBronDay() == d0}">
                                        <c:if test="${booking.getBronTime() == 19}">
                                            <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                            <c:set var="bool" value="false"/>
                                        </c:if>
                                    </c:if>
                                </c:if>
                            </c:forEach>
                            <c:if test="${bool eq 'true'}">
                                <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                                <c:set var="bool" value="false"/>
                            </c:if>
                        </form>
                        <form action="/booking">
                            <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                            <input type="hidden" name="time" value="19">
                            <input type="hidden" name="month" value="${m1}">
                            <input type="hidden" name="day"  value="${d1}">
                            <c:set var="bool" value="true"/>
                            <c:forEach var="booking" items="${bookingList}">
                                <c:if test="${booking.getBronMonth() == m1}">
                                    <c:if test="${booking.getBronDay() == d1}">
                                        <c:if test="${booking.getBronTime() == 19}">
                                            <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                            <c:set var="bool" value="false"/>
                                        </c:if>
                                    </c:if>
                                </c:if>
                            </c:forEach>
                            <c:if test="${bool eq 'true'}">
                                <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                                <c:set var="bool" value="false"/>
                            </c:if>
                        </form>
                        <form action="/booking">
                            <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                            <input type="hidden" name="time" value="19">
                            <input type="hidden" name="month" value="${m2}">
                            <input type="hidden" name="day"  value="${d2}">
                            <c:set var="bool" value="true"/>
                            <c:forEach var="booking" items="${bookingList}">
                                <c:if test="${booking.getBronMonth() == m2}">
                                    <c:if test="${booking.getBronDay() == d2}">
                                        <c:if test="${booking.getBronTime() == 19}">
                                            <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                            <c:set var="bool" value="false"/>
                                        </c:if>
                                    </c:if>
                                </c:if>
                            </c:forEach>
                            <c:if test="${bool eq 'true'}">
                                <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                                <c:set var="bool" value="false"/>
                            </c:if>
                        </form>
                        <form action="/booking">
                            <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                            <input type="hidden" name="time" value="19">
                            <input type="hidden" name="month" value="${m3}">
                            <input type="hidden" name="day"  value="${d3}">
                            <c:set var="bool" value="true"/>
                            <c:forEach var="booking" items="${bookingList}">
                                <c:if test="${booking.getBronMonth() == m3}">
                                    <c:if test="${booking.getBronDay() == d3}">
                                        <c:if test="${booking.getBronTime() == 19}">
                                            <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                            <c:set var="bool" value="false"/>
                                        </c:if>
                                    </c:if>
                                </c:if>
                            </c:forEach>
                            <c:if test="${bool eq 'true'}">
                                <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                                <c:set var="bool" value="false"/>
                            </c:if>
                        </form>
                        <form action="/booking">
                            <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                            <input type="hidden" name="time" value="19">
                            <input type="hidden" name="month" value="${m4}">
                            <input type="hidden" name="day"  value="${d4}">
                            <c:set var="bool" value="true"/>
                            <c:forEach var="booking" items="${bookingList}">
                                <c:if test="${booking.getBronMonth() == m4}">
                                    <c:if test="${booking.getBronDay() == d4}">
                                        <c:if test="${booking.getBronTime() == 19}">
                                            <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                            <c:set var="bool" value="false"/>
                                        </c:if>
                                    </c:if>
                                </c:if>
                            </c:forEach>
                            <c:if test="${bool eq 'true'}">
                                <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                                <c:set var="bool" value="false"/>
                            </c:if>
                        </form>
                        <form action="/booking">
                            <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                            <input type="hidden" name="time" value="19">
                            <input type="hidden" name="month" value="${m5}">
                            <input type="hidden" name="day"  value="${d5}">
                            <c:set var="bool" value="true"/>
                            <c:forEach var="booking" items="${bookingList}">
                                <c:if test="${booking.getBronMonth() == m5}">
                                    <c:if test="${booking.getBronDay() == d5}">
                                        <c:if test="${booking.getBronTime() == 19}">
                                            <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                            <c:set var="bool" value="false"/>
                                        </c:if>
                                    </c:if>
                                </c:if>
                            </c:forEach>
                            <c:if test="${bool eq 'true'}">
                                <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                                <c:set var="bool" value="false"/>
                            </c:if>
                        </form>
                    </tr>
                        <td>20:00</td>
                    <form action="/booking">
                        <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                        <input type="hidden" name="time" value="20">
                        <input type="hidden" name="month" value="${m0}">
                        <input type="hidden" name="day"  value="${d0}">
                        <c:set var="bool" value="true"/>
                        <c:forEach var="booking" items="${bookingList}">
                            <c:if test="${booking.getBronMonth() == m0}">
                                <c:if test="${booking.getBronDay() == d0}">
                                    <c:if test="${booking.getBronTime() == 20}">
                                        <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                        <c:set var="bool" value="false"/>
                                    </c:if>
                                </c:if>
                            </c:if>
                        </c:forEach>
                        <c:if test="${bool eq 'true'}">
                            <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                            <c:set var="bool" value="false"/>
                        </c:if>
                    </form>
                    <form action="/booking">
                        <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                        <input type="hidden" name="time" value="20">
                        <input type="hidden" name="month" value="${m1}">
                        <input type="hidden" name="day"  value="${d1}">
                        <c:set var="bool" value="true"/>
                        <c:forEach var="booking" items="${bookingList}">
                            <c:if test="${booking.getBronMonth() == m1}">
                                <c:if test="${booking.getBronDay() == d1}">
                                    <c:if test="${booking.getBronTime() == 20}">
                                        <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                        <c:set var="bool" value="false"/>
                                    </c:if>
                                </c:if>
                            </c:if>
                        </c:forEach>
                        <c:if test="${bool eq 'true'}">
                            <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                            <c:set var="bool" value="false"/>
                        </c:if>
                    </form>
                    <form action="/booking">
                        <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                        <input type="hidden" name="time" value="20">
                        <input type="hidden" name="month" value="${m2}">
                        <input type="hidden" name="day"  value="${d2}">
                        <c:set var="bool" value="true"/>
                        <c:forEach var="booking" items="${bookingList}">
                            <c:if test="${booking.getBronMonth() == m2}">
                                <c:if test="${booking.getBronDay() == d2}">
                                    <c:if test="${booking.getBronTime() == 20}">
                                        <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                        <c:set var="bool" value="false"/>
                                    </c:if>
                                </c:if>
                            </c:if>
                        </c:forEach>
                        <c:if test="${bool eq 'true'}">
                            <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                            <c:set var="bool" value="false"/>
                        </c:if>
                    </form>
                    <form action="/booking">
                        <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                        <input type="hidden" name="time" value="20">
                        <input type="hidden" name="month" value="${m3}">
                        <input type="hidden" name="day"  value="${d3}">
                        <c:set var="bool" value="true"/>
                        <c:forEach var="booking" items="${bookingList}">
                            <c:if test="${booking.getBronMonth() == m3}">
                                <c:if test="${booking.getBronDay() == d3}">
                                    <c:if test="${booking.getBronTime() == 20}">
                                        <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                        <c:set var="bool" value="false"/>
                                    </c:if>
                                </c:if>
                            </c:if>
                        </c:forEach>
                        <c:if test="${bool eq 'true'}">
                            <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                            <c:set var="bool" value="false"/>
                        </c:if>
                    </form>
                    <form action="/booking">
                        <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                        <input type="hidden" name="time" value="20">
                        <input type="hidden" name="month" value="${m4}">
                        <input type="hidden" name="day"  value="${d4}">
                        <c:set var="bool" value="true"/>
                        <c:forEach var="booking" items="${bookingList}">
                            <c:if test="${booking.getBronMonth() == m4}">
                                <c:if test="${booking.getBronDay() == d4}">
                                    <c:if test="${booking.getBronTime() == 20}">
                                        <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                        <c:set var="bool" value="false"/>
                                    </c:if>
                                </c:if>
                            </c:if>
                        </c:forEach>
                        <c:if test="${bool eq 'true'}">
                            <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                            <c:set var="bool" value="false"/>
                        </c:if>
                    </form>
                    <form action="/booking">
                        <input type="hidden" name="id" value="${playgroundDetails.getId()}">
                        <input type="hidden" name="time" value="20">
                        <input type="hidden" name="month" value="${m5}">
                        <input type="hidden" name="day"  value="${d5}">
                        <c:set var="bool" value="true"/>
                        <c:forEach var="booking" items="${bookingList}">
                            <c:if test="${booking.getBronMonth() == m5}">
                                <c:if test="${booking.getBronDay() == d5}">
                                    <c:if test="${booking.getBronTime() == 20}">
                                        <td><div class="tablePrice disabled"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</div></td>
                                        <c:set var="bool" value="false"/>
                                    </c:if>
                                </c:if>
                            </c:if>
                        </c:forEach>
                        <c:if test="${bool eq 'true'}">
                            <td><button class="brn"><c:out value="${playgroundDetails.getPrice()}" /> ТГ</button></td>
                            <c:set var="bool" value="false"/>
                        </c:if>
                    </form>
                    </tr>

                    </tbody>
                </table>
                <hr/>

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