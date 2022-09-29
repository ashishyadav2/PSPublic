CREATE TABLE RESTAURANT_DIM (
    REST_ID VARCHAR(10) NOT NULL,
    REST_NAME VARCHAR(30) NOT NULL,
    CONTACT_NUMBER INT(10) NOT NULL,
    ADDRESS VARCHAR(50) NOT NULL,
    CUISINE VARCHAR(15) NOT NULL,
    PRIMARY KEY (REST_ID)
);
CREATE TABLE FOOD_DIM (
    FOOD_ITEM_ID VARCHAR(10) NOT NULL,
    NAME VARCHAR(15) NOT NULL,
    QUANTITY INT(4) NOT NULL,
    PRICE INT(4) NOT NULL,
    PRIMARY KEY (FOOD_ITEM_ID)
);
CREATE TABLE BILL_DIM (
    BILL_ID VARCHAR(10) NOT NULL,
    ORDER_DETAIL VARCHAR(50) NOT NULL,
    PRIMARY KEY (BILL_ID)
);
CREATE TABLE TIME_DIM (
    CURR_DATE VARCHAR(10) NOT NULL
);
CREATE TABLE CUSTOMER_DIM (
    CUST_ID VARCHAR(10) NOT NULL,
    CUST_NAME VARCHAR(10) NOT NULL,
    CONTACT_NUMBER INT(10) NOT NULL,
    ADDRESS VARCHAR(50) NOT NULL,
    PRIMARY KEY (CUST_ID)
);
CREATE TABLE EMPLOYEE_DIM (
    ADMIN_ID INT(10) NOT NULL,
    WAITER_ID INT(10) NOT NULL,
    CHEF_ID INT(10) NOT NULL,
    WAITER_NAME VARCHAR(15) NOT NULL,
    CHEF_NAME VARCHAR(15) NOT NULL,
    PRIMARY KEY (ADMIN_ID)
);

INSERT INTO FOOD_DIM VALUES('9508','Chole Bhature',3,920);
INSERT INTO FOOD_DIM VALUES('7934','Biryani',2,530);
INSERT INTO FOOD_DIM VALUES('3091','Paneer',8,250);
INSERT INTO FOOD_DIM VALUES('7997','Dosa',3,430);
INSERT INTO FOOD_DIM VALUES('8193','Obbattu',2,690);
INSERT INTO FOOD_DIM VALUES('6903','Paneer',4,850);
INSERT INTO FOOD_DIM VALUES('7750','Biryani',7,620);
INSERT INTO FOOD_DIM VALUES('2584','Paneer',7,760);
INSERT INTO FOOD_DIM VALUES('1201','Dosa',1,270);
INSERT INTO FOOD_DIM VALUES('9647','Obbattu',2,930);

INSERT INTO BILL_DIM VALUES('5897','Chole Bhature');
INSERT INTO BILL_DIM VALUES('7602','Biryani');
INSERT INTO BILL_DIM VALUES('1595','Paneer');
INSERT INTO BILL_DIM VALUES('2919','Dosa');
INSERT INTO BILL_DIM VALUES('5257','Obbattu');
INSERT INTO BILL_DIM VALUES('5387','Paneer');
INSERT INTO BILL_DIM VALUES('9629','Biryani');
INSERT INTO BILL_DIM VALUES('9252','Paneer');
INSERT INTO BILL_DIM VALUES('3335','Dosa');
INSERT INTO BILL_DIM VALUES('3567','Obbattu');

INSERT INTO CUSTOMER_DIM VALUES('9844','Todd Curtis','9933847771','202-203, 2, Millennium Park, Sector 3, Vashi');
INSERT INTO CUSTOMER_DIM VALUES('9199','Elizabeth Perez','9812588894','237, Shop No 3, Prabhu Niwas, Sane Guruji Rd, Nr Church, Jacob Circle');
INSERT INTO CUSTOMER_DIM VALUES('2264','Matthew Lyons','9831607723',' 5-8-496/1, Chirag Ali Lane');
INSERT INTO CUSTOMER_DIM VALUES('4174','Darlene Anderson','9831456229','137, Shastriamrket');
INSERT INTO CUSTOMER_DIM VALUES('5143','Cheryl Glenn','9929122154',' A/17, 224, Nandan, Savarkar Road, Mahim');
INSERT INTO CUSTOMER_DIM VALUES('8352','Tamara Brown','9824549407','B-10, Dalamal Towers, Nariman Point');
INSERT INTO CUSTOMER_DIM VALUES('8033','Thomas Mclaughlin','9939083188','B-10, Dalamal Towers, Nariman Point');
INSERT INTO CUSTOMER_DIM VALUES('3962','Roger Anderson','9975406061',' S No 208 A/3, Savitri Nagar, Sheikh Sarai');
INSERT INTO CUSTOMER_DIM VALUES('8111','Joseph Perez','9960720307','13, Amar Kunj, Sawarkar Marg, Shiwaji Udyan');
INSERT INTO CUSTOMER_DIM VALUES('9738','Timothy Black','9957922790','Kambali Wadi, 148 Nehru Road, Vile Parle (east)');

INSERT INTO EMPLOYEE_DIM VALUES('5639','9660','4130','Tucker Lowe','Damarion Massey');
INSERT INTO EMPLOYEE_DIM VALUES('5432','1370','4350','Dominick Landry','Rebecca Dodson');
INSERT INTO EMPLOYEE_DIM VALUES('6572','5628','1201','Leroy Forbes','Luke Sheppard');
INSERT INTO EMPLOYEE_DIM VALUES('2339','3473','2705','Juliette Snyder','Diya Goodwin');
INSERT INTO EMPLOYEE_DIM VALUES('7598','7183','4375','Maritza Glass','Kaitlyn Byrd');
INSERT INTO EMPLOYEE_DIM VALUES('6107','3329','3200','Ivy Becker','Kendal Hahn');
INSERT INTO EMPLOYEE_DIM VALUES('2098','2430','9108','Gerardo Strickland','Zachery Duarte');
INSERT INTO EMPLOYEE_DIM VALUES('7649','1634','1613','Gauge Edwards','Ayden Brady');
INSERT INTO EMPLOYEE_DIM VALUES('1778','9525','3196','Laylah Blackburn','Shania Eaton');
INSERT INTO EMPLOYEE_DIM VALUES('6845','9353','5874','Tania Fischer','Maritza Gates');

INSERT INTO RESTAURANT_DIM VALUES (9884,'Curry in a Hurry',9838962087,'Jhundpura, Awana Market, Main Road, Noida,201301','North Indian');
INSERT INTO RESTAURANT_DIM VALUES (3391,'Delhi in Minutes',9854962077,'44-b, Central Market, Lajpat Nagar,Delhi-110024','Punjabi');
INSERT INTO RESTAURANT_DIM VALUES (6444,'Spice is Nice',9838962023,'B/103, Asmita Cres, Nr Asmita Club, Naya Nagar, Mira Road East','Maharashtrian');
INSERT INTO RESTAURANT_DIM VALUES (1261,'Bengaluru Bites',9838914087,'58, Shirdi Sai Baba Mandir Road,Bengaluru','South Indian');
INSERT INTO RESTAURANT_DIM VALUES (8725,'Mumbai Tummy',9838966787,'2, Sai Sagar Apt, Mulund Bridge Rd,Airoli','North Indian');
INSERT INTO RESTAURANT_DIM VALUES (6240,'The Paneer Pot',9838122087,'18/4, Arya Samaj Road, Karol Bagh,Bangalore','North Indian');
INSERT INTO RESTAURANT_DIM VALUES (8833,'Oh! Calcutta',9838962867,'2/69A Dum Dum Road,Kolkata','Bengali');
INSERT INTO RESTAURANT_DIM VALUES (9022,'Curry Kitchen',9838962387,'Vinoba Bhave Road, Salatwada,Gujarat','Gujarati');
INSERT INTO RESTAURANT_DIM VALUES (7198,'Spice ‘N’ Rice',9838962077,'7/4, Parthasarathy Naidu St, Triplican,Tamil Nadu','Italian');
INSERT INTO RESTAURANT_DIM VALUES (2601,'Khana Khazana',9801962087,'Tower-C, 3rd Floor, DLF IT Park,Chandigarh','Punjabi');

INSERT INTO TIME_DIM VALUES('22-11-2020');
INSERT INTO TIME_DIM VALUES('25-6-2020');
INSERT INTO TIME_DIM VALUES('15-6-2020');
INSERT INTO TIME_DIM VALUES('19-9-2020');
INSERT INTO TIME_DIM VALUES('5-7-2020');
INSERT INTO TIME_DIM VALUES('16-8-2020');
INSERT INTO TIME_DIM VALUES('21-1-2020');
INSERT INTO TIME_DIM VALUES('10-5-2020');
INSERT INTO TIME_DIM VALUES('3-2-2020');
INSERT INTO TIME_DIM VALUES('8-3-2020');