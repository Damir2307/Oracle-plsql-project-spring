--sport inserts
insert into SPORT (SPORT_NAME, ID) values ('Футбол',SPORT_SEQ.nextval);

insert into SPORT (SPORT_NAME, ID) values ('Волейбол',SPORT_SEQ.nextval);

insert into SPORT (SPORT_NAME, ID) values ('Баскетбол',SPORT_SEQ.nextval);

--playground inserts
insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('ФУТБОЛЬНЫЕ ПОЛЯ OLZHA SPORT','угол улиц Шевченко - Жарокова',7000,7,2,'7 (701) 5013330',1,1,PLAYGROUND_SEQ.nextval,'./img/1.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('АКАДЕМИИ AIFA','проспект Аль-фараби 142',15000,9,0,'7 (771) 7626030',1,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/2.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('ПОЛЕ КАЗНУ','проспект Аль-Фараби, 71/20а',7000,9,0,'7 (701) 8002220',1,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/3.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('ПОЛЕ АУЭИС','Территория АУЭС въезд с Сатпаева - Масанчи',7000,9,23,'7 (701) 0222212',1,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/4.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('ПОЛЕ ТУРАН ','Наурызбай Батыра - Сатпаева',7000,9,0,'7 (701) 9494419',1,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/5.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('ФУТБОЛЬНЫЕ ПОЛЯ НА АКАН СЕРЫ 156 ','пр. Сейфуллина ул. Акан Серы 156',9000,9,23,'7 (727) 2945184',1,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/6.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('ФУТБОЛЬНЫЕ ПОЛЯ НА ШАЛАПИНА ','ул. Шаляпина, уг. ул. Яссауи',3000,9,1,'7 (747) 3276168',1,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/7.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('Футбольное поле Арман ','ул. Шевченко 110',12000,6,0,'7 (777) 1227120',1,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/8.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('ПОЛЕ НА УЛИЦЕ ЛИЗЫ ЧАЙКИНОЙ','Ул. Лизы Чайкиной 3Б',5000,9,23,'7 (707) 0258518',1,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/9.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('ПОЛЕ ПРИ ШКОЛЕ KIFS ','Шевченко 110',8000,20,0,'7 (707) 3452268',1,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/10.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('Golgol kz ','микрорайон Аксай 2, 33в',10000,9,0,'7?707?867?59?60',1,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/11.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('KIFS','Шевченко, 110/1',5000,9,0,'7?708?111?22?64',1,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/12.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('Ala sport Almaty','проспект Аль-Фараби, 42',8000,9,0,'7?701?555?12?12',1,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/13.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('BI Sport','Алатауский район, Алматы',10000,9,3,'7?701?550?79?00',1,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/14.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('площадка Алатау','Алматы, мкр.Шугыла д.50А',3500,9,22,'7(727)254-93-43',3,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/15.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('площадка в Рахат Фитнес','Алматы, ул. Абая проспект, 48',12500,9,20,'7(727)255-58-88',3,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/16.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('Баскетбол в академии Жармухамедова','пр. Абая 85/83',12000,9,18,'7(707)660-75-65',3,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/17.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('Баскетбольная площадка Выше крыши','ул. Ташкентская 496 а',3000,9,23,'7(707)733-75-30',3,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/18.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('Баскетбольная площадка 8 озер','Алматы, Поселок Каменное Плато',2000,9,21,'7(727)330-09-90 ',3,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/19.jpg','.');


insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('Футбольное поле "Greenwich"','Алматы, ул. Розыбакиева 247',6000,9,23,'7(727)275-58-76',1,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/20.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('Мини-Футбольное поле','Саина и Момышулы',15000,19,1,'7(701)091-33-33',1,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/21.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('Футбольное поле Olympic Plaza','Алматы, ул. Дулати 9/10',10000,9,23,'7(701)137-78-80',1,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/22.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('Центр Семейного Отдыха "Weekend"','Алматы, ул.Дулати 114',7000,9,3,'7(701)949-12-09',1,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/23.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('Футбольное поле Каравелла','Алматы, Адрес: мкр 1, ул. Жубанова 18Б',3000,9,23,'7(727)276-15-66',1,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/24.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('Футбольной Школе Молодежи','Алматы, ул.Серикова 2а',4000,9,21,'7(701)519-59-07',1,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/25.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('АFAЙЫН','Алматы, мкр.Айнабулак-4, 172 Г/1',8000,9,3,'7(775)866-13-13',1,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/26.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('Футбольное поле Димаш','Алматы, г. Алматы, мкр. Таугуль 3',5000,9,3,'7(727)293-66-89',1,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/27.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('Крытое футбольное поле "Жайлау"','Талгарский тракт',8000,9,3,'7(747)951-30-05 ',1,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/28.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('Футбольное поле на Чайкина 3б','Алматы, ул. Чайкина 3б',3000,10,22,'7(771)465-21-66 ',1,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/29.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('Футбольное поле PLAY-OFF','Алматы, Алматинская, 11/11',23000,8,18,'7(707)873-87-81',1,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/30.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('Family Tennis Club','Алматы, мкр.Думан ул.Алмалы-3',8000,10,22,'77772400703',2,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/31.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('ABB Arena','Алматы, Алматы 3-й переулок, 53',18000,9,23,'77003000291',2,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/32.jpg','.');


insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('Футбольное поле возле Трамплинов','проспект Аль-Фараби 128/8',10000,9,0,'7(778)600-88-66 ',1,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/33.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('Футбольное поле Аккент','Алматы, Микрорайон Аккент 33/1',5000,8,22,'7(775)390-66-01 ',1,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/34.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('Футбольное поле Медина','ул. Яссауи 1Б уг. ул.Джандосова',6000,9,18,'7(727)256-95-42 ',1,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/35.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('Футзал в спортивном клубе Абылайхан','Сейфуллина 14, уг. ул Молдагалиевой',25000,7,23,'7(721)221-21-44 ',1,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/36.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('Футбольное поле Dostar Football Club ','Ул. Елебекова',5000,9,22,'7(775)152-91-11 ',1,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/37.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('Champions','Самал 3-й микрорайон 1',8000,9,23,'7(777)552-27-55 ',1,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/38.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('Беназир - Benazir 1','ул. Ынтымак (Центральная) 1',10000,9,1,'7(707)244-77-73 ',1,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/39.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('"Нурдаулет"','мкр.Таугуль Жандосова 310 г',5000,10,23,'7(701)707-75-85 ',1,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/40.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('Футбольное поле ALA-SPORT','Сейфуллина - Алдар Косе',8000,8,0,'7(701)555-12-12',1,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/41.jpg','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('"Арена Спорт Завет"','ул.Абая 28а',4000,7,1,'7(707)517-66-99',1,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/42.jpg','.');


insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('mycourt.kz','Алматы, Утеген батыра, 17Б к1/1',8000,19,1,'77771238039',3,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/43.png','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('hoops','микрорайон Самал-2',5000,9,23,'77762222211',3,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/44.png','.');

insert into PLAYGROUND (PLAYGROUND_NAME, PLAYGROUND_ADDRESS, PRICE, STARTTIME, CLOSETIME, PHONE, SPORT_ID,
                        SPECIFICATION_ID, ID, URL,DESCRIPTION) values ('Баскетбольные площадки в аренду','Алматы, 3й переулок 53',18000,12,22,'77003000291',3,PLAYGROUND_SEQ.currval,PLAYGROUND_SEQ.nextval,'./img/45.png','.');


insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('газон','крытая',0,0,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('газон','крытая',0,0,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('газон','крытая',1,1,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('газон','открытая',0,1,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('газон','открытая',0,1,1,1,SPECIFICATION_SEQ.nextval);


insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('газон','открытая',1,0,1,1,SPECIFICATION_SEQ.nextval);


insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('газон','открытая',0,0,1,1,SPECIFICATION_SEQ.nextval);


insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('газон','крытая',0,1,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('газон','открытая',0,0,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('газон','открытая',0,0,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('газон','открытая',0,0,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('газон','открытая',0,0,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('газон','открытая',0,0,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('газон','крытая',0,1,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('хард','открытая',0,1,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('паркет','крытая',1,1,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('паркет','крытая',1,1,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('хард','открытая',0,1,0,0,SPECIFICATION_SEQ.nextval);


insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('хард','открытая',0,0,0,0,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('газон','открытая',0,1,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('газон','открытая',0,1,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('газон','открытая',0,1,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('газон','открытая',0,1,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('газон','открытая',0,0,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('газон','открытая',0,1,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('газон','крытая',1,1,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('газон','открытая',0,0,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('газон','крытая',0,1,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('газон','открытая',0,0,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('газон','открытая',0,1,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('хард','крытая',0,1,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('паркет','открытая',0,1,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('газон','открытая',0,0,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('газон','открытая',0,0,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('газон','крытая',0,1,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('паркет','крытая',1,1,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('газон','открытая',0,1,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('газон','открытая',0,1,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('газон','открытая',1,1,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('газон','крытая',0,1,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('газон','открытая',0,0,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('газон','открытая',0,1,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('хард','открытая',0,1,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('паркет','крытая',0,1,1,1,SPECIFICATION_SEQ.nextval);

insert into SPECIFICATION (COVER, ROOFTYPE,TRIBUNE,PARKING, SHOWER, DRESSINGROOM, ID)
values ('паркет','крытая',0,1,1,1,SPECIFICATION_SEQ.nextval);
