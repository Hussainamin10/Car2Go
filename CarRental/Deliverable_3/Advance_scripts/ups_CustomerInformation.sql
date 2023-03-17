Use master
Go

Use Car2Go
Go

/*	Display the most important information of a customer, just by giving the Driver license number. So, display the
	driver license number, first name, last name, email, country code, area code, local number, city, province, postal code	*/

CREATE PROCEDURE dbo.CustomerInformation
	@DriverLicense VARCHAR(20)
AS
	SELECT C.DRIVER_LICENSE_NO, FIRST_NAME, LAST_NAME, EMAIL_ADDRESS, COUNTRY_CODE, AREA_CODE, LOCAL_NUMBER, CITY, PROVINCE, POSTAL_CODE
			FROM CUSTOMER C
			INNER JOIN EMAIL E ON C.DRIVER_LICENSE_NO = E.DRIVER_LICENSE_NO
			INNER JOIN PHONE_NUMBER P ON E.DRIVER_LICENSE_NO = P.DRIVER_LICENSE_NO
			INNER JOIN ADDRESS A ON C.ADDRESS_ID = A.ADDRESS_ID
			WHERE C.DRIVER_LICENSE_NO = @DriverLicense;
GO

--DROP PROCEDURE CustomerInformation;


