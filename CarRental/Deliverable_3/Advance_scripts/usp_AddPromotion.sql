Use master
Go

Use Car2Go
Go

-- This procedure adds an additional 50$ promotion for all vehicles belonging to a given class

Create PROCEDURE dbo.uspAddPromotion
	@Class_Description varchar(30)
AS
	BEGIN
		UPDATE PROMOTION
			SET DISCOUNT = DISCOUNT + 50
			WHERE CLASS_DESCRIPTION = @Class_Description;
		PRINT '* * DISCOUNT HAS BEEN ADDED * *';
	END
GO

/*	EXEC dbo.uspAddPromotion 'Luxury';
	EXEC dbo.uspAddPromotion 'Sedan';
	SELECT * FROM PROMOTION;

DROP PROCEDURE dbo.uspAddPromotion
*/