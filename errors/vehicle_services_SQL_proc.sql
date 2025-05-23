USE [DSTraining]
GO
/****** Object:  StoredProcedure [dbo].[BLD_WRK_vehicle_services]    Script Date: 07-05-2025 14:47:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROC [dbo].[BLD_WRK_vehicle_services]


-- =============================================
-- Author:		AAKASH VARIER
-- Create date: 20250505
-- Description:	RAW -> WRK
-- MOD DATE:
-- =============================================



AS
BEGIN


-- =============================================
-- DROP TABLE
-- =============================================

IF OBJECT_ID('WRK_vehicle_services') IS NOT NULL
DROP TABLE WRK_vehicle_services

-- =============================================
-- CREATE TABLE BLOCK
-- =============================================

CREATE TABLE WRK_vehicle_services
(
	[RowNumber]			INT IDENTITY(1,1)
      ,[CustomerID]		VARCHAR(100)
      ,[CustomerSince]	DATE
      ,[Vehicle]		VARCHAR(100)
      ,[2014]			FLOAT
      ,[2015]			FLOAT
      ,[2016E]			FLOAT

	  )

-- =============================================
-- TRUNCATE TABLE
-- =============================================

TRUNCATE TABLE [WRK_vehicle_services]

-- =============================================
-- INSERT TABLE BLOCK
-- =============================================

INSERT INTO [WRK_vehicle_services]
(
	[CustomerID]
      ,[CustomerSince]
      ,[Vehicle]
      ,[2014]
      ,[2015]
      ,[2016E]	
)

	SELECT
	[CustomerID]
      ,[CustomerSince]
      ,[Vehicle]
      ,[2014]
      ,[2015]
      ,[2016E]
  FROM [dbo].[RAW_vehicle_services_20250321]
  -- EXCLUSIONS
  WHERE
  ISNUMERIC([2015]) = 1 OR  [2015] = ''  --(1049998 rows affected)

  /*
  EXCLUDED ROWS:
   select * from [DSTraining].[dbo].[RAW_vehicle_services_20250321]
  WHERE
  ISNUMERIC([2015]) = 0 AND
  [2014] <> ''

  */
 
 /*
 --ADDITIONAL CHECKS

 SELECT CustomerID, count(*) as count
 FROM [WRK_vehicle_services]
 GROUP BY CustomerID
 HAVING count(*) >1

 SELECT *
 FROM [WRK_vehicle_services]
 WHERE CustomerID like '3490750'

 SELECT *
 FROM [WRK_vehicle_services]
 WHERE CustomerSince < '1999-01-01'

  SELECT avg([2014])
 FROM [WRK_vehicle_services]

  SELECT *
 FROM [WRK_vehicle_services]
 WHERE [2014]>10000

   SELECT sum([2016E])
 FROM [WRK_vehicle_services]

 */

END

/*
SELECT * FROM [dbo].[RAW_vehicle_services_20250321]
SELECT * FROM [dbo].[WRK_vehicle_services]
*/