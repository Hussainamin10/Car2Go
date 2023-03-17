
USE Car2Go
GO

--1) Display city, postal code and street name located in Quebec.
SELECT CITY, POSTAL_CODE, STREET_NAME FROM ADDRESS WHERE PROVINCE IN ('Quebec');
--SELECT * FROM ADDRESS;

--2) Display the cars that where made before 2018.
SELECT * FROM CAR WHERE YEAR_MADE < 2018;
--SELECT * FROM CAR;

--3) Display the driver licenses of all customers that have an area code 404, 702 and 604.
SELECT DRIVER_LICENSE_NO FROM PHONE_NUMBER WHERE AREA_CODE IN ('404' , '702' , '604');
--SELECT * FROM PHONE_NUMBER;

--4) Display all values of customers that have an email address that start with "mat".
SELECT * FROM EMAIL WHERE EMAIL_ADDRESS LIKE 'mat%';
--SELECT * FROM EMAIL;

--5) Display license plate and the odometer before and after of all cars that are "Three Quarters Full".
SELECT LICENSE_PLATE, ODOMETER_BEFORE, ODOMETER_AFTER FROM RENTING_DETAIL WHERE TANK_VOLUME IN ('Three Quarters Full');
--SELECT * FROM RENTING_DETAIL;

--6) Display the class description, and the number of cars for each class description
SELECT CLASS_DESCRIPTION, COUNT(LICENSE_PLATE) AS NUM_OF_CARS 
FROM CAR GROUP BY CLASS_DESCRIPTION 
ORDER BY NUM_OF_CARS;

--SELECT * FROM CAR;

--7) Display the first name, last name, country, country code, area code and local number of all customers
SELECT FIRST_NAME, LAST_NAME, COUNTRY, COUNTRY_CODE, AREA_CODE, LOCAL_NUMBER
FROM CUSTOMER C, PHONE_NUMBER P
WHERE C.DRIVER_LICENSE_NO = P.DRIVER_LICENSE_NO ORDER BY AREA_CODE;

--SELECT * FROM PHONE_NUMBER;
--SELECT * FROM CUSTOMER;

--8) Display location id, address id, make, model, and color of all cars made before 2019
SELECT CAR.LOCATION_ID, ADDRESS_ID, MAKE, MODEL, COLOR FROM CAR, COMPANY_LOCATION 
WHERE CAR.LOCATION_ID = COMPANY_LOCATION.LOCATION_ID AND YEAR_MADE < 2019;

--SELECT * FROM CAR;
--SELECT * FROM COMPANY_LOCATION;

--9) Display the license plate, make, color, and year made of all cars that have a promotion that starts after '2020-09-01'. 
--	 Use subqueries.
SELECT CAR.LICENSE_PLATE , MAKE, COLOR, YEAR_MADE 
FROM CAR WHERE CLASS_DESCRIPTION 
IN (SELECT P.CLASS_DESCRIPTION FROM PROMOTION P WHERE START_DATE > '2020-09-01') ORDER BY YEAR_MADE DESC;

--SELECT * FROM CAR;
--SELECT * FROM PROMOTION;

--10) Create a function that will calculate the total Amount ( total price ) of a Billing ID. 

DROP FUNCTION IF EXISTS dbo.ufnGetcalculatePayment;

CREATE FUNCTION dbo.ufnGetcalculatePayment(@BillingID VARCHAR(10) )
RETURNS MONEY
AS
	BEGIN 
		DECLARE @totAmount MONEY;
		DECLARE @totWithDiscount MONEY;
		DECLARE @promotionDecimal MONEY;
		DECLARE @carPrice MONEY;
		DECLARE @numOfDays int;

		DECLARE @P_ID VARCHAR(10) ;
		SELECT @P_ID = PROMOTION_ID from PAYMENT WHERE BILLING_ID = @BillingID;

	if @P_ID is NULL	--IF @P_ID (so the PROMOTION_ID) is NULL, then we will calculate the total_Amount without the promotion 
		BEGIN
			SELECT @numOfDays = (NUM_DAYS_RENTED ) FROM RENTING_DETAIL R, PAYMENT P 
			WHERE  R.RETURN_ID = P.RETURN_ID and BILLING_ID = @BillingID;

			SELECT @carPrice = (CAR_CLASS_PRICE) FROM CAR_CLASS C, PAYMENT P 
			WHERE C.CLASS_DESCRIPTION = P.CLASS_DESCRIPTION and BILLING_ID = @BillingID;

			SELECT @totAmount = @carPrice * @numOfDays;

			SELECT @totWithDiscount = @totAmount;
		END;

	ELSE				--IF @P_ID EXISTs then we will calculate the total_amount with the promotion, which gives us the total Amount with Promotion (@totWithDiscount)
		BEGIN
			SELECT @numOfDays = (NUM_DAYS_RENTED ) FROM RENTING_DETAIL R, PAYMENT P 
			WHERE  R.RETURN_ID = P.RETURN_ID and BILLING_ID = @BillingID;

			SELECT @carPrice = (CAR_CLASS_PRICE) FROM CAR_CLASS C, PAYMENT P
			WHERE C.CLASS_DESCRIPTION = P.CLASS_DESCRIPTION and BILLING_ID = @BillingID;

			SELECT @promotionDecimal = ( CAST(DISCOUNT AS MONEY) /100 ) FROM PROMOTION, PAYMENT 
			WHERE PROMOTION.PROMOTION_ID = PAYMENT.PROMOTION_ID and BILLING_ID = @BillingID;
			----------------------------------------------------------------------
			SELECT @totAmount = @carPrice * @numOfDays;
			SELECT @totWithDiscount = @totAmount - (@totAmount * @promotionDecimal);
		END;
	
		return @totWithDiscount;

	END;

-- queries for each Billing_ID
/*
SELECT dbo.ufnGetcalculatePayment('BL001') AS total_payment_price;
SELECT dbo.ufnGetcalculatePayment('BL002') AS total_payment_price;
SELECT dbo.ufnGetcalculatePayment('BL003') AS total_payment_price;
SELECT dbo.ufnGetcalculatePayment('BL004') AS total_payment_price;
SELECT dbo.ufnGetcalculatePayment('BL005') AS total_payment_price;
SELECT dbo.ufnGetcalculatePayment('BL006') AS total_payment_price;
SELECT dbo.ufnGetcalculatePayment('BL007') AS total_payment_price;
SELECT dbo.ufnGetcalculatePayment('BL008') AS total_payment_price;
SELECT dbo.ufnGetcalculatePayment('BL009') AS total_payment_price;
SELECT dbo.ufnGetcalculatePayment('BL010') AS total_payment_price;
SELECT dbo.ufnGetcalculatePayment('BL011') AS total_payment_price;
SELECT dbo.ufnGetcalculatePayment('BL012') AS total_payment_price;
*/

--SELECT * FROM PAYMENT;
--SELECT * FROM PROMOTION;
--SELECT * FROM CAR_CLASS;
--SELECT * FROM RENTING_DETAIL;
 
 ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT * FROM ADDRESS;
SELECT * FROM CUSTOMER;
SELECT * FROM EMAIL;
SELECT * FROM PHONE_NUMBER;
SELECT * FROM COMPANY_LOCATION;
SELECT * FROM CAR;
SELECT * FROM CAR_CLASS;
SELECT * FROM PROMOTION;
SELECT * FROM RENTING_DETAIL;
SELECT * FROM PAYMENT;