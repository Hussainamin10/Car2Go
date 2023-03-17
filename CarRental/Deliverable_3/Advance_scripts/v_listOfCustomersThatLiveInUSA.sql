Use master
Go

Use Car2Go
Go

Drop view if exists v_listOfCustomersThatLiveInUSA;
Go

--Display DRIVER_LISCENSE_NO, FIRST_NAME, LAST_NAME and EMAIL_ADDRESS of cutomers that live in USA

Create view v_listOfCustomersThatLiveInUSA
As
Select CUSTOMER.DRIVER_LICENSE_NO, FIRST_NAME, LAST_NAME, EMAIL_ADDRESS from CUSTOMER inner join EMAIL on CUSTOMER.DRIVER_LICENSE_NO = EMAIL.DRIVER_LICENSE_NO where COUNTRY = 'USA';

--DROP VIEW v_listOfCustomersThatLiveInUSA;