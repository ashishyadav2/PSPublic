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