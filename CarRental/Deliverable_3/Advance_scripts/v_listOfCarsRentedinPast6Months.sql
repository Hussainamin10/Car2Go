Use master
Go

Use Car2Go
Go

Drop view if exists v_listOfCarsRentedInPast6Months
Go

-- Display all license plates for cars rented in the past 6 months along with the driver license, first name, last name and phone number of the customer

Create view v_listOfCarsRentedInPast6Months
AS
select LICENSE_PLATE, renting_detail.DRIVER_LICENSE_NO, DAY_RENTED, FIRST_NAME, LAST_NAME 
from RENTING_DETAIL full join Customer on renting_detail.DRIVER_LICENSE_NO=Customer.DRIVER_LICENSE_NO
where DAY_RENTED >= DATEADD(year, -1, SYSDATETIME());


--DROP VIEW v_listOfCarsRentedInPast6Months;