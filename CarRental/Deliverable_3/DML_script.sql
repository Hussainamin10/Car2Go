
USE MASTER
GO

USE Car2Go
GO

INSERT INTO ADDRESS VALUES('AD001', 'Montreal', 'Quebec', 'H4A 1H3', 2976, 'Sherbrooke Ouest'),
						  ('AD002', 'Vancouver', 'British Columbia', 'V5T 1Z7', 4034, 'St George Street'),
						  ('AD003', 'Los Angeles', 'California', '90057', 1824, 'Brannon Street'),
						  ('AD004', 'New York', 'New York', '10023', 4700, 'Godfrey Road'),
						  
						  ('AD005', 'Toronto', 'Ontario', 'M2J 3T7', 1759, 'Victoria Park Ave'),
						  ('AD006', 'Las Vegas', 'Nevada', '89109', 2254, 'Hickory Ridge Drive'),
						  ('AD007', 'Chicago', 'Illinois', '60610', 2354, 'Patterson Fork Road'),
						  ('AD008', 'Houston', 'Texas', '77011', 4382, 'Margaret Street'),
						  ('AD009', 'Miami', 'Florida', '33169', 4550, 'Steve Hunt Road'),
						  ('AD010', 'Ottawa', 'Ontario', 'K1P 5M7', 2545, 'MacLaren Street'),
						  ('AD011', 'Montreal', 'Quebec', 'H3C 5K4', 4947, 'Rue Levy'),
						  ('AD012', 'Vancouver', 'British Columbia', 'V6B 3K9', 4388, 'Robson St'),
						  ('AD013', 'New York', 'New York', '10011', 3672, 'Heavner Court'),
						  ('AD014', 'Miami', 'Florida', '33128', 471, 'Arbutus Drive'),
						  ('AD015', 'Los Angeles', 'California', '90017', 3158, 'Paradise Lane'),
						  ('AD016', 'Atlanta', 'Georgia', '30303', 4523, 'Limer Street');

INSERT INTO CUSTOMER VALUES('S6615-411514-19', 'AD005', 'Tom', 'Smith', 508, 'CA'),
						   ('S7726-522625-30', 'AD006', 'Aarya', 'Stark', '', 'USA'),
						   ('V8837-633736-41', 'AD007', 'Matt', 'Varga', 204, 'USA'),
						   ('J9948-744847-52', 'AD008', 'Sonia', 'Jonas', 604, 'USA'),
						   ('S0059-855958-63', 'AD009', 'Sam', 'Smith', 316, 'USA'),
						   ('L1160-966069-74', 'AD010', 'Allen', 'Luther', 113, 'CA'),
						   ('H2271-077170-85', 'AD011', 'Matthew', 'Hudson', '', 'CA'),
						   ('F3382-188281-96', 'AD012', 'Nicole', 'Ford', 102, 'CA'),
						   ('J4493-299392-97', 'AD013', 'Nick', 'Jones', 911, 'USA'),
						   ('B5504-300403-08', 'AD014', 'Maria', 'Blake', 120, 'USA'),
						   ('F6615-411514-19', 'AD015', 'Adam', 'Ford', '', 'USA'),
						   ('G7726-522625-20', 'AD016', 'Marie', 'Girouard', 178, 'USA');

INSERT INTO EMAIL VALUES('S6615-411514-19','tom.smith@gmail.com'),
						('S7726-522625-30','aarya.stark@gmail.com'),
						('V8837-633736-41','matt.varga@gmail.com'),
						('J9948-744847-52','sonia.jonas@gmail.com'),
						('S0059-855958-63','sam.smith@gmail.com'),
						('L1160-966069-74','allen.luther@gmail.com'),
						('H2271-077170-85','matthew.hudson@gmail.com'),
						('F3382-188281-96','nicole.ford@gmail.com'),
						('J4493-299392-97',''),
						('B5504-300403-08','maria.blake@gmail.com'),
						('F6615-411514-19','adam.ford@gmail.com'),
						('G7726-522625-20','marie.girouard@gmail.com'),

						('S6615-411514-19','tommythegamer@gmail.com'),
						('H2271-077170-85','matthewto10@gmail.com');

INSERT INTO PHONE_NUMBER VALUES('S6615-411514-19','+1',416,'012-3456'),
							   ('S7726-522625-30','+1',702,'123-4567'),
							   ('V8837-633736-41','+1',312,'234-5678'),
							   ('J9948-744847-52','+1',281,'345-6789'),
							   ('S0059-855958-63','+1',786,'456-7890'),
							   ('L1160-966069-74','+1',343,'567-8901'),
							   ('H2271-077170-85','+1',514,'678-9012'),
							   ('F3382-188281-96','+1',604,'789-0123'),
							   ('J4493-299392-97','+1',212,'890-1234'),
							   ('B5504-300403-08','+1',786,'901-2345'),
							   ('F6615-411514-19','+1',310,'098-8765'),
							   ('G7726-522625-20','+1',404,'986-6543'),

							   ('S6615-411514-19','+1',416,'012-8456'),
							   ('J9948-744847-52','+1',281,'745-6789');							  

INSERT INTO COMPANY_LOCATION VALUES('COM001', 'AD001'),
                                   ('COM002', 'AD002'),
                                   ('COM003', 'AD003'),
                                   ('COM004', 'AD004');

INSERT INTO CAR_CLASS VALUES('Sedan', 400),
                            ('Compacts', 325),
                            ('Subcompacts', 250),
                            ('Luxury', 2000);

INSERT INTO CAR VALUES('F123456','Sedan','COM001','Toyota','Corolla','2015','White'),
					  ('F234567','Compacts','COM002','Honda','Accord','2022','Blue'),
					  ('F345678','Subcompacts','COM001','Kia','Soul','2016','Orange'),
					  ('F456789','Luxury','COM004','BMW','X7','2018','Vhite'),
					  ('F567890','Luxury','COM003','Mercedes','S580','2020','Black'),
					  ('F678901','Sedan','COM004','Toyota','Camry','2022','Red'),
					  ('F789012','Compacts','COM001','Honda','Civic','2019','Red'),
					  ('F890123','Sedan','COM003','Hyundai','Elantra','2017','Black'),
					  ('F901234','Subcompacts','COM002','Honda','Fit','2022','Blue'),
					  ('F012345','Luxury','COM001','Rolls Royce','Phantom','2018','Silver Metallic'),
					  ('F098765','Luxury','COM004' ,'Bentley','Continental GT','2020','White'),
					  ('F987654','Compacts','COM003','Toyota','Prius','2017','Violet'),
					  ('F876543','Sedan','COM002','Acura','TLX','2018','Graphite Blue'),
					  ('F765432','Sedan','COM001','Dodge','Charger','2018','Blue'),
					  ('F654321','Subcompacts','COM004','Volkswagen','Golf GTI','2020','Pink');

INSERT INTO PROMOTION VALUES('P001', 'Sedan', 50, '2020/02/28', '2020/03/06'),
							('P002', 'Compacts', 40, '2020/07/12', '2020/07/18'),
							('P003', 'Subcompacts', 60, '2020/09/29', '2020/10/05'),
							('P004', 'Luxury', 25, '2020/12/31', '2021/01/06');
INSERT INTO RENTING_DETAIL VALUES('RD001','2020/02/24', '2020/03/24','F123456', 'S6615-411514-19', 93124, 100032, 'Full', 29,'AD001','AD002'),
		  						 ('RD002','2021/08/24', '2022/08/24','F234567', 'S7726-522625-30', 2456, 25785, 'Empty', 365,'AD004','AD004'),
		  						 ('RD003','2020/03/12', '2020/03/15','F567890', 'V8837-633736-41', 55238, 56873, 'Quarter Full', 4,'AD002','AD003'),
		  						 ('RD004','2020/05/30', '2022/06/10','F765432', 'J9948-744847-52', 67582, 69321, 'Three Quarters Full', 12,'AD004','AD002'),
		  						 ('RD005','2022/09/29', '2022/10/01','F456789', 'S0059-855958-63', 43879, 44154, 'Full', 3,'AD003','AD004'),
		  						 ('RD006','2020/01/01', '2020/01/31','F345678', 'L1160-966069-74', 78432, 80021, 'Three Quarters Full', 31,'AD002','AD001'),
		  						 ('RD007','2020/12/31', '2021/01/06','F012345', 'H2271-077170-85', 1043, 1765, 'Half Full', 7,'AD003','AD003'),
		  						 ('RD008','2022/03/21', '2022/03/30','F765432', 'F3382-188281-96', 64523, 65032, 'Empty', 10,'AD001','AD004'),
		  						 ('RD009','2021/10/02', '2022/10/18','F098765', 'J4493-299392-97', 35647, 36322, 'Full', 17,'AD004','AD003'),
		  						 ('RD010','2020/09/28', '2022/10/10','F901234', 'B5504-300403-08', 87635, 88120, 'Half Full', 13,'AD003','AD002'),
		  						 ('RD011','2021/07/18', '2022/07/18','F678901', 'F6615-411514-19', 5876, 5934, 'Three Quarters Full', 1,'AD001','AD001'),
		  						 ('RD012','2022/06/17', '2022/06/27','F876543', 'G7726-522625-20', 76843, 77432, 'Quarter Full', 11,'AD002','AD004');

ALTER TABLE dbo.PAYMENT
DROP CONSTRAINT check_Promotion_id, check_Return_id;

INSERT INTO PAYMENT VALUES('BL001', 'Sedan', 'P001', 'RD001', 5800), 
						  ('BL012', 'Subcompacts', 'P003', 'RD005', 300), 
		  				  ('BL005', 'Luxury', 'P004', 'RD006', 46500), 
						  ('BL009', 'Subcompacts', 'P003', 'RD010', 1300), 
		 				  ('BL010', 'Compacts', 'P002', 'RD011', 195);

INSERT INTO PAYMENT (BILLING_ID, CLASS_DESCRIPTION,RETURN_ID, TOTAL_AMOUNT) 
					VALUES('BL002', 'Compacts','RD002', 118625), 
		  				  ('BL003', 'Luxury','RD003', 8000), 
		  				  ('BL004', 'Subcompacts','RD004', 3000), 
		  				  ('BL006', 'Sedan','RD007', 2800), 
		 				  ('BL007', 'Compacts','RD008', 3250), 
		 				  ('BL008', 'Luxury','RD009', 34000), 
		  				  ('BL011', 'Sedan','RD012', 4400);
						 

SELECT * FROM ADDRESS;
SELECT * FROM CUSTOMER;
SELECT * FROM EMAIL;
SELECT * FROM PHONE_NUMBER;
SELECT * FROM COMPANY_LOCATION;
SELECT * FROM CAR_CLASS;
SELECT * FROM CAR;
SELECT * FROM PROMOTION;
SELECT * FROM RENTING_DETAIL;
SELECT * FROM PAYMENT order by BILLING_ID;
