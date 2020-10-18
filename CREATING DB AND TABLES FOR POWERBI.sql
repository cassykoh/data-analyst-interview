USE CDGTest;
#Scroll to bottom for sql codes on exporting final file for power bi
DROP TABLE IF EXISTS FACTSTORE;
CREATE TABLE FactStore
(DateID date,
 StoreID integer,
 ProductID integer,
 OnHandQty integer,
 OnOrderQty integer,
 DaysInStock integer,
 MinDayInStock integer,
 MaxDayInStock integer);

DROP TABLE IF EXISTS DimDates;
CREATE TABLE DimDates(
	DateID datetime NOT NULL,
	FullDateLabel nvarchar(20) NOT NULL,
	CalendarYear int NOT NULL,
	CalendarQuarter int NOT NULL,
	CalendarMonth int NOT NULL,
	CalendarMonthName nvarchar(20) NOT NULL,
	CalendarDayOfWeek int NOT NULL,
	WeekDayName nvarchar(10) NOT NULL,
	EuropeSeason nvarchar(50) NULL,
	NorthAmericaSeason nvarchar(50) NULL,
	AsiaSeason nvarchar(50) NULL
) ;


DROP TABLE IF EXISTS DimProducts;
CREATE TABLE DimProducts(
	ProductID int NOT NULL,
	ProductName nvarchar(500) NULL,
	ProductDescription nvarchar(400) NULL,
	ProductCateryName nvarchar(30) NOT NULL,
	ProductSubcateryName nvarchar(50) NOT NULL,
	Manufacturer nvarchar(50) NULL
);


DROP TABLE IF EXISTS DimStores;
CREATE TABLE DimStores(
	StoreID int NOT NULL,
	StoreName nvarchar(100) NOT NULL,
	CityName nvarchar(100) NULL,
	StateProvinceName nvarchar(100) NULL,
	RegionCountryName nvarchar(100) NULL,
	StoreManager nvarchar(101) NOT NULL,
	StoreType nvarchar(15) NULL
) ;

LOAD DATA INFILE '/Applications/MAMP/conf/data.txt' INTO TABLE FactStore
FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' IGNORE 1 LINES

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-01-01T00:00:00.000' AS DateTime), N'2009-01-01', 2009, 20091, 200901, N'January', 2009015, N'Thursday', N'Holiday', N'Spring/Back to Business', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-01-02T00:00:00.000' AS DateTime), N'2009-01-02', 2009, 20091, 200901, N'January', 2009016, N'Friday', N'Holiday', N'Spring/Back to Business', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-01-03T00:00:00.000' AS DateTime), N'2009-01-03', 2009, 20091, 200901, N'January', 2009017, N'Saturday', N'Holiday', N'Spring/Back to Business', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-01-04T00:00:00.000' AS DateTime), N'2009-01-04', 2009, 20091, 200901, N'January', 2009021, N'Sunday', N'Holiday', N'Spring/Back to Business', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-01-05T00:00:00.000' AS DateTime), N'2009-01-05', 2009, 20091, 200901, N'January', 2009022, N'Monday', N'Holiday', N'Spring/Back to Business', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-01-06T00:00:00.000' AS DateTime), N'2009-01-06', 2009, 20091, 200901, N'January', 2009023, N'Tuesday', N'Holiday', N'Spring/Back to Business', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-01-07T00:00:00.000' AS DateTime), N'2009-01-07', 2009, 20091, 200901, N'January', 2009024, N'Wednesday', N'Holiday', N'Spring/Back to Business', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-01-08T00:00:00.000' AS DateTime), N'2009-01-08', 2009, 20091, 200901, N'January', 2009025, N'Thursday', N'Holiday', N'Spring/Back to Business', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-01-09T00:00:00.000' AS DateTime), N'2009-01-09', 2009, 20091, 200901, N'January', 2009026, N'Friday', N'Holiday', N'Spring/Back to Business', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-01-10T00:00:00.000' AS DateTime), N'2009-01-10', 2009, 20091, 200901, N'January', 2009027, N'Saturday', N'Holiday', N'Spring/Back to Business', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-01-11T00:00:00.000' AS DateTime), N'2009-01-11', 2009, 20091, 200901, N'January', 2009031, N'Sunday', N'Holiday', N'Spring/Back to Business', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-01-12T00:00:00.000' AS DateTime), N'2009-01-12', 2009, 20091, 200901, N'January', 2009032, N'Monday', N'Holiday', N'Spring/Back to Business', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-01-13T00:00:00.000' AS DateTime), N'2009-01-13', 2009, 20091, 200901, N'January', 2009033, N'Tuesday', N'Holiday', N'Spring/Back to Business', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-01-14T00:00:00.000' AS DateTime), N'2009-01-14', 2009, 20091, 200901, N'January', 2009034, N'Wednesday', N'Holiday', N'Spring/Back to Business', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-01-15T00:00:00.000' AS DateTime), N'2009-01-15', 2009, 20091, 200901, N'January', 2009035, N'Thursday', N'Holiday', N'Spring/Back to Business', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-01-16T00:00:00.000' AS DateTime), N'2009-01-16', 2009, 20091, 200901, N'January', 2009036, N'Friday', N'Holiday', N'Spring/Back to Business', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-01-17T00:00:00.000' AS DateTime), N'2009-01-17', 2009, 20091, 200901, N'January', 2009037, N'Saturday', N'Holiday', N'Spring/Back to Business', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-01-18T00:00:00.000' AS DateTime), N'2009-01-18', 2009, 20091, 200901, N'January', 2009041, N'Sunday', N'Holiday', N'Spring/Back to Business', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-01-19T00:00:00.000' AS DateTime), N'2009-01-19', 2009, 20091, 200901, N'January', 2009042, N'Monday', N'Holiday', N'Spring/Back to Business', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-01-20T00:00:00.000' AS DateTime), N'2009-01-20', 2009, 20091, 200901, N'January', 2009043, N'Tuesday', N'Holiday', N'Spring/Back to Business', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-01-21T00:00:00.000' AS DateTime), N'2009-01-21', 2009, 20091, 200901, N'January', 2009044, N'Wednesday', N'Holiday', N'Spring/Back to Business', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-01-22T00:00:00.000' AS DateTime), N'2009-01-22', 2009, 20091, 200901, N'January', 2009045, N'Thursday', N'Holiday', N'Spring/Back to Business', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-01-23T00:00:00.000' AS DateTime), N'2009-01-23', 2009, 20091, 200901, N'January', 2009046, N'Friday', N'Holiday', N'Spring/Back to Business', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-01-24T00:00:00.000' AS DateTime), N'2009-01-24', 2009, 20091, 200901, N'January', 2009047, N'Saturday', N'Holiday', N'Spring/Back to Business', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-01-25T00:00:00.000' AS DateTime), N'2009-01-25', 2009, 20091, 200901, N'January', 2009051, N'Sunday', N'Holiday', N'Spring/Back to Business', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-01-26T00:00:00.000' AS DateTime), N'2009-01-26', 2009, 20091, 200901, N'January', 2009052, N'Monday', N'Holiday', N'Spring/Back to Business', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-01-27T00:00:00.000' AS DateTime), N'2009-01-27', 2009, 20091, 200901, N'January', 2009053, N'Tuesday', N'Holiday', N'Spring/Back to Business', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-01-28T00:00:00.000' AS DateTime), N'2009-01-28', 2009, 20091, 200901, N'January', 2009054, N'Wednesday', N'Holiday', N'Spring/Back to Business', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-01-29T00:00:00.000' AS DateTime), N'2009-01-29', 2009, 20091, 200901, N'January', 2009055, N'Thursday', N'Holiday', N'Spring/Back to Business', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-01-30T00:00:00.000' AS DateTime), N'2009-01-30', 2009, 20091, 200901, N'January', 2009056, N'Friday', N'Holiday', N'Spring/Back to Business', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-01-31T00:00:00.000' AS DateTime), N'2009-01-31', 2009, 20091, 200901, N'January', 2009057, N'Saturday', N'Holiday', N'Spring/Back to Business', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-02-01T00:00:00.000' AS DateTime), N'2009-02-01', 2009, 20091, 200902, N'February', 2009061, N'Sunday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-02-02T00:00:00.000' AS DateTime), N'2009-02-02', 2009, 20091, 200902, N'February', 2009062, N'Monday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-02-03T00:00:00.000' AS DateTime), N'2009-02-03', 2009, 20091, 200902, N'February', 2009063, N'Tuesday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-02-04T00:00:00.000' AS DateTime), N'2009-02-04', 2009, 20091, 200902, N'February', 2009064, N'Wednesday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-02-05T00:00:00.000' AS DateTime), N'2009-02-05', 2009, 20091, 200902, N'February', 2009065, N'Thursday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-02-06T00:00:00.000' AS DateTime), N'2009-02-06', 2009, 20091, 200902, N'February', 2009066, N'Friday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-02-07T00:00:00.000' AS DateTime), N'2009-02-07', 2009, 20091, 200902, N'February', 2009067, N'Saturday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-02-08T00:00:00.000' AS DateTime), N'2009-02-08', 2009, 20091, 200902, N'February', 2009071, N'Sunday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-02-09T00:00:00.000' AS DateTime), N'2009-02-09', 2009, 20091, 200902, N'February', 2009072, N'Monday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-02-10T00:00:00.000' AS DateTime), N'2009-02-10', 2009, 20091, 200902, N'February', 2009073, N'Tuesday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-02-11T00:00:00.000' AS DateTime), N'2009-02-11', 2009, 20091, 200902, N'February', 2009074, N'Wednesday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-02-12T00:00:00.000' AS DateTime), N'2009-02-12', 2009, 20091, 200902, N'February', 2009075, N'Thursday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-02-13T00:00:00.000' AS DateTime), N'2009-02-13', 2009, 20091, 200902, N'February', 2009076, N'Friday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-02-14T00:00:00.000' AS DateTime), N'2009-02-14', 2009, 20091, 200902, N'February', 2009077, N'Saturday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-02-15T00:00:00.000' AS DateTime), N'2009-02-15', 2009, 20091, 200902, N'February', 2009081, N'Sunday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-02-16T00:00:00.000' AS DateTime), N'2009-02-16', 2009, 20091, 200902, N'February', 2009082, N'Monday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-02-17T00:00:00.000' AS DateTime), N'2009-02-17', 2009, 20091, 200902, N'February', 2009083, N'Tuesday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-02-18T00:00:00.000' AS DateTime), N'2009-02-18', 2009, 20091, 200902, N'February', 2009084, N'Wednesday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-02-19T00:00:00.000' AS DateTime), N'2009-02-19', 2009, 20091, 200902, N'February', 2009085, N'Thursday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-02-20T00:00:00.000' AS DateTime), N'2009-02-20', 2009, 20091, 200902, N'February', 2009086, N'Friday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-02-21T00:00:00.000' AS DateTime), N'2009-02-21', 2009, 20091, 200902, N'February', 2009087, N'Saturday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-02-22T00:00:00.000' AS DateTime), N'2009-02-22', 2009, 20091, 200902, N'February', 2009091, N'Sunday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-02-23T00:00:00.000' AS DateTime), N'2009-02-23', 2009, 20091, 200902, N'February', 2009092, N'Monday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-02-24T00:00:00.000' AS DateTime), N'2009-02-24', 2009, 20091, 200902, N'February', 2009093, N'Tuesday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-02-25T00:00:00.000' AS DateTime), N'2009-02-25', 2009, 20091, 200902, N'February', 2009094, N'Wednesday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-02-26T00:00:00.000' AS DateTime), N'2009-02-26', 2009, 20091, 200902, N'February', 2009095, N'Thursday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-02-27T00:00:00.000' AS DateTime), N'2009-02-27', 2009, 20091, 200902, N'February', 2009096, N'Friday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-02-28T00:00:00.000' AS DateTime), N'2009-02-28', 2009, 20091, 200902, N'February', 2009097, N'Saturday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-03-01T00:00:00.000' AS DateTime), N'2009-03-01', 2009, 20091, 200903, N'March', 2009101, N'Sunday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-03-02T00:00:00.000' AS DateTime), N'2009-03-02', 2009, 20091, 200903, N'March', 2009102, N'Monday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-03-03T00:00:00.000' AS DateTime), N'2009-03-03', 2009, 20091, 200903, N'March', 2009103, N'Tuesday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-03-04T00:00:00.000' AS DateTime), N'2009-03-04', 2009, 20091, 200903, N'March', 2009104, N'Wednesday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-03-05T00:00:00.000' AS DateTime), N'2009-03-05', 2009, 20091, 200903, N'March', 2009105, N'Thursday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-03-06T00:00:00.000' AS DateTime), N'2009-03-06', 2009, 20091, 200903, N'March', 2009106, N'Friday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-03-07T00:00:00.000' AS DateTime), N'2009-03-07', 2009, 20091, 200903, N'March', 2009107, N'Saturday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-03-08T00:00:00.000' AS DateTime), N'2009-03-08', 2009, 20091, 200903, N'March', 2009111, N'Sunday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-03-09T00:00:00.000' AS DateTime), N'2009-03-09', 2009, 20091, 200903, N'March', 2009112, N'Monday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-03-10T00:00:00.000' AS DateTime), N'2009-03-10', 2009, 20091, 200903, N'March', 2009113, N'Tuesday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-03-11T00:00:00.000' AS DateTime), N'2009-03-11', 2009, 20091, 200903, N'March', 2009114, N'Wednesday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-03-12T00:00:00.000' AS DateTime), N'2009-03-12', 2009, 20091, 200903, N'March', 2009115, N'Thursday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-03-13T00:00:00.000' AS DateTime), N'2009-03-13', 2009, 20091, 200903, N'March', 2009116, N'Friday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-03-14T00:00:00.000' AS DateTime), N'2009-03-14', 2009, 20091, 200903, N'March', 2009117, N'Saturday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-03-15T00:00:00.000' AS DateTime), N'2009-03-15', 2009, 20091, 200903, N'March', 2009121, N'Sunday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-03-16T00:00:00.000' AS DateTime), N'2009-03-16', 2009, 20091, 200903, N'March', 2009122, N'Monday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-03-17T00:00:00.000' AS DateTime), N'2009-03-17', 2009, 20091, 200903, N'March', 2009123, N'Tuesday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-03-18T00:00:00.000' AS DateTime), N'2009-03-18', 2009, 20091, 200903, N'March', 2009124, N'Wednesday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-03-19T00:00:00.000' AS DateTime), N'2009-03-19', 2009, 20091, 200903, N'March', 2009125, N'Thursday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-03-20T00:00:00.000' AS DateTime), N'2009-03-20', 2009, 20091, 200903, N'March', 2009126, N'Friday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-03-21T00:00:00.000' AS DateTime), N'2009-03-21', 2009, 20091, 200903, N'March', 2009127, N'Saturday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-03-22T00:00:00.000' AS DateTime), N'2009-03-22', 2009, 20091, 200903, N'March', 2009131, N'Sunday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-03-23T00:00:00.000' AS DateTime), N'2009-03-23', 2009, 20091, 200903, N'March', 2009132, N'Monday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-03-24T00:00:00.000' AS DateTime), N'2009-03-24', 2009, 20091, 200903, N'March', 2009133, N'Tuesday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-03-25T00:00:00.000' AS DateTime), N'2009-03-25', 2009, 20091, 200903, N'March', 2009134, N'Wednesday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-03-26T00:00:00.000' AS DateTime), N'2009-03-26', 2009, 20091, 200903, N'March', 2009135, N'Thursday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-03-27T00:00:00.000' AS DateTime), N'2009-03-27', 2009, 20091, 200903, N'March', 2009136, N'Friday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-03-28T00:00:00.000' AS DateTime), N'2009-03-28', 2009, 20091, 200903, N'March', 2009137, N'Saturday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-03-29T00:00:00.000' AS DateTime), N'2009-03-29', 2009, 20091, 200903, N'March', 2009141, N'Sunday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-03-30T00:00:00.000' AS DateTime), N'2009-03-30', 2009, 20091, 200903, N'March', 2009142, N'Monday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-03-31T00:00:00.000' AS DateTime), N'2009-03-31', 2009, 20091, 200903, N'March', 2009143, N'Tuesday', N'Spring/Business', N'Spring/Back to Business', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-04-01T00:00:00.000' AS DateTime), N'2009-04-01', 2009, 20092, 200904, N'April', 2009144, N'Wednesday', N'None', N'None', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-04-02T00:00:00.000' AS DateTime), N'2009-04-02', 2009, 20092, 200904, N'April', 2009145, N'Thursday', N'None', N'None', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-04-03T00:00:00.000' AS DateTime), N'2009-04-03', 2009, 20092, 200904, N'April', 2009146, N'Friday', N'None', N'None', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-04-04T00:00:00.000' AS DateTime), N'2009-04-04', 2009, 20092, 200904, N'April', 2009147, N'Saturday', N'None', N'None', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-04-05T00:00:00.000' AS DateTime), N'2009-04-05', 2009, 20092, 200904, N'April', 2009151, N'Sunday', N'None', N'None', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-04-06T00:00:00.000' AS DateTime), N'2009-04-06', 2009, 20092, 200904, N'April', 2009152, N'Monday', N'None', N'None', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-04-07T00:00:00.000' AS DateTime), N'2009-04-07', 2009, 20092, 200904, N'April', 2009153, N'Tuesday', N'None', N'None', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-04-08T00:00:00.000' AS DateTime), N'2009-04-08', 2009, 20092, 200904, N'April', 2009154, N'Wednesday', N'None', N'None', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-04-09T00:00:00.000' AS DateTime), N'2009-04-09', 2009, 20092, 200904, N'April', 2009155, N'Thursday', N'None', N'None', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-04-10T00:00:00.000' AS DateTime), N'2009-04-10', 2009, 20092, 200904, N'April', 2009156, N'Friday', N'None', N'None', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-04-11T00:00:00.000' AS DateTime), N'2009-04-11', 2009, 20092, 200904, N'April', 2009157, N'Saturday', N'None', N'None', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-04-12T00:00:00.000' AS DateTime), N'2009-04-12', 2009, 20092, 200904, N'April', 2009161, N'Sunday', N'None', N'None', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-04-13T00:00:00.000' AS DateTime), N'2009-04-13', 2009, 20092, 200904, N'April', 2009162, N'Monday', N'None', N'None', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-04-14T00:00:00.000' AS DateTime), N'2009-04-14', 2009, 20092, 200904, N'April', 2009163, N'Tuesday', N'None', N'None', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-04-15T00:00:00.000' AS DateTime), N'2009-04-15', 2009, 20092, 200904, N'April', 2009164, N'Wednesday', N'None', N'None', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-04-16T00:00:00.000' AS DateTime), N'2009-04-16', 2009, 20092, 200904, N'April', 2009165, N'Thursday', N'None', N'None', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-04-17T00:00:00.000' AS DateTime), N'2009-04-17', 2009, 20092, 200904, N'April', 2009166, N'Friday', N'None', N'None', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-04-18T00:00:00.000' AS DateTime), N'2009-04-18', 2009, 20092, 200904, N'April', 2009167, N'Saturday', N'None', N'None', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-04-19T00:00:00.000' AS DateTime), N'2009-04-19', 2009, 20092, 200904, N'April', 2009171, N'Sunday', N'None', N'None', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-04-20T00:00:00.000' AS DateTime), N'2009-04-20', 2009, 20092, 200904, N'April', 2009172, N'Monday', N'None', N'None', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-04-21T00:00:00.000' AS DateTime), N'2009-04-21', 2009, 20092, 200904, N'April', 2009173, N'Tuesday', N'None', N'None', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-04-22T00:00:00.000' AS DateTime), N'2009-04-22', 2009, 20092, 200904, N'April', 2009174, N'Wednesday', N'None', N'None', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-04-23T00:00:00.000' AS DateTime), N'2009-04-23', 2009, 20092, 200904, N'April', 2009175, N'Thursday', N'None', N'None', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-04-24T00:00:00.000' AS DateTime), N'2009-04-24', 2009, 20092, 200904, N'April', 2009176, N'Friday', N'None', N'None', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-04-25T00:00:00.000' AS DateTime), N'2009-04-25', 2009, 20092, 200904, N'April', 2009177, N'Saturday', N'None', N'None', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-04-26T00:00:00.000' AS DateTime), N'2009-04-26', 2009, 20092, 200904, N'April', 2009181, N'Sunday', N'None', N'None', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-04-27T00:00:00.000' AS DateTime), N'2009-04-27', 2009, 20092, 200904, N'April', 2009182, N'Monday', N'None', N'None', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-04-28T00:00:00.000' AS DateTime), N'2009-04-28', 2009, 20092, 200904, N'April', 2009183, N'Tuesday', N'None', N'None', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-04-29T00:00:00.000' AS DateTime), N'2009-04-29', 2009, 20092, 200904, N'April', 2009184, N'Wednesday', N'None', N'None', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-04-30T00:00:00.000' AS DateTime), N'2009-04-30', 2009, 20092, 200904, N'April', 2009185, N'Thursday', N'None', N'None', N'Spring/Back to School')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-05-01T00:00:00.000' AS DateTime), N'2009-05-01', 2009, 20092, 200905, N'May', 2009186, N'Friday', N'None', N'None', N'Tax Time/Summer')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-05-02T00:00:00.000' AS DateTime), N'2009-05-02', 2009, 20092, 200905, N'May', 2009187, N'Saturday', N'None', N'None', N'Tax Time/Summer')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-05-03T00:00:00.000' AS DateTime), N'2009-05-03', 2009, 20092, 200905, N'May', 2009191, N'Sunday', N'None', N'None', N'Tax Time/Summer')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-05-04T00:00:00.000' AS DateTime), N'2009-05-04', 2009, 20092, 200905, N'May', 2009192, N'Monday', N'None', N'None', N'Tax Time/Summer')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-05-05T00:00:00.000' AS DateTime), N'2009-05-05', 2009, 20092, 200905, N'May', 2009193, N'Tuesday', N'None', N'None', N'Tax Time/Summer')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-05-06T00:00:00.000' AS DateTime), N'2009-05-06', 2009, 20092, 200905, N'May', 2009194, N'Wednesday', N'None', N'None', N'Tax Time/Summer')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-05-07T00:00:00.000' AS DateTime), N'2009-05-07', 2009, 20092, 200905, N'May', 2009195, N'Thursday', N'None', N'None', N'Tax Time/Summer')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-05-08T00:00:00.000' AS DateTime), N'2009-05-08', 2009, 20092, 200905, N'May', 2009196, N'Friday', N'None', N'None', N'Tax Time/Summer')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-05-09T00:00:00.000' AS DateTime), N'2009-05-09', 2009, 20092, 200905, N'May', 2009197, N'Saturday', N'None', N'None', N'Tax Time/Summer')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-05-10T00:00:00.000' AS DateTime), N'2009-05-10', 2009, 20092, 200905, N'May', 2009201, N'Sunday', N'None', N'None', N'Tax Time/Summer')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-05-11T00:00:00.000' AS DateTime), N'2009-05-11', 2009, 20092, 200905, N'May', 2009202, N'Monday', N'None', N'None', N'Tax Time/Summer')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-05-12T00:00:00.000' AS DateTime), N'2009-05-12', 2009, 20092, 200905, N'May', 2009203, N'Tuesday', N'None', N'None', N'Tax Time/Summer')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-05-13T00:00:00.000' AS DateTime), N'2009-05-13', 2009, 20092, 200905, N'May', 2009204, N'Wednesday', N'None', N'None', N'Tax Time/Summer')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-05-14T00:00:00.000' AS DateTime), N'2009-05-14', 2009, 20092, 200905, N'May', 2009205, N'Thursday', N'None', N'None', N'Tax Time/Summer')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-05-15T00:00:00.000' AS DateTime), N'2009-05-15', 2009, 20092, 200905, N'May', 2009206, N'Friday', N'None', N'None', N'Tax Time/Summer')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-05-16T00:00:00.000' AS DateTime), N'2009-05-16', 2009, 20092, 200905, N'May', 2009207, N'Saturday', N'None', N'None', N'Tax Time/Summer')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-05-17T00:00:00.000' AS DateTime), N'2009-05-17', 2009, 20092, 200905, N'May', 2009211, N'Sunday', N'None', N'None', N'Tax Time/Summer')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-05-18T00:00:00.000' AS DateTime), N'2009-05-18', 2009, 20092, 200905, N'May', 2009212, N'Monday', N'None', N'None', N'Tax Time/Summer')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-05-19T00:00:00.000' AS DateTime), N'2009-05-19', 2009, 20092, 200905, N'May', 2009213, N'Tuesday', N'None', N'None', N'Tax Time/Summer')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-05-20T00:00:00.000' AS DateTime), N'2009-05-20', 2009, 20092, 200905, N'May', 2009214, N'Wednesday', N'None', N'None', N'Tax Time/Summer')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-05-21T00:00:00.000' AS DateTime), N'2009-05-21', 2009, 20092, 200905, N'May', 2009215, N'Thursday', N'None', N'None', N'Tax Time/Summer')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-05-22T00:00:00.000' AS DateTime), N'2009-05-22', 2009, 20092, 200905, N'May', 2009216, N'Friday', N'None', N'None', N'Tax Time/Summer')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-05-23T00:00:00.000' AS DateTime), N'2009-05-23', 2009, 20092, 200905, N'May', 2009217, N'Saturday', N'None', N'None', N'Tax Time/Summer')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-05-24T00:00:00.000' AS DateTime), N'2009-05-24', 2009, 20092, 200905, N'May', 2009221, N'Sunday', N'None', N'None', N'Tax Time/Summer')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-05-25T00:00:00.000' AS DateTime), N'2009-05-25', 2009, 20092, 200905, N'May', 2009222, N'Monday', N'None', N'None', N'Tax Time/Summer')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-05-26T00:00:00.000' AS DateTime), N'2009-05-26', 2009, 20092, 200905, N'May', 2009223, N'Tuesday', N'None', N'None', N'Tax Time/Summer')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-05-27T00:00:00.000' AS DateTime), N'2009-05-27', 2009, 20092, 200905, N'May', 2009224, N'Wednesday', N'None', N'None', N'Tax Time/Summer')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-05-28T00:00:00.000' AS DateTime), N'2009-05-28', 2009, 20092, 200905, N'May', 2009225, N'Thursday', N'None', N'None', N'Tax Time/Summer')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-05-29T00:00:00.000' AS DateTime), N'2009-05-29', 2009, 20092, 200905, N'May', 2009226, N'Friday', N'None', N'None', N'Tax Time/Summer')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-05-30T00:00:00.000' AS DateTime), N'2009-05-30', 2009, 20092, 200905, N'May', 2009227, N'Saturday', N'None', N'None', N'Tax Time/Summer')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-05-31T00:00:00.000' AS DateTime), N'2009-05-31', 2009, 20092, 200905, N'May', 2009231, N'Sunday', N'None', N'None', N'Tax Time/Summer')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-06-01T00:00:00.000' AS DateTime), N'2009-06-01', 2009, 20092, 200906, N'June', 2009232, N'Monday', N'None', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-06-02T00:00:00.000' AS DateTime), N'2009-06-02', 2009, 20092, 200906, N'June', 2009233, N'Tuesday', N'None', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-06-03T00:00:00.000' AS DateTime), N'2009-06-03', 2009, 20092, 200906, N'June', 2009234, N'Wednesday', N'None', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-06-04T00:00:00.000' AS DateTime), N'2009-06-04', 2009, 20092, 200906, N'June', 2009235, N'Thursday', N'None', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-06-05T00:00:00.000' AS DateTime), N'2009-06-05', 2009, 20092, 200906, N'June', 2009236, N'Friday', N'None', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-06-06T00:00:00.000' AS DateTime), N'2009-06-06', 2009, 20092, 200906, N'June', 2009237, N'Saturday', N'None', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-06-07T00:00:00.000' AS DateTime), N'2009-06-07', 2009, 20092, 200906, N'June', 2009241, N'Sunday', N'None', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-06-08T00:00:00.000' AS DateTime), N'2009-06-08', 2009, 20092, 200906, N'June', 2009242, N'Monday', N'None', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-06-09T00:00:00.000' AS DateTime), N'2009-06-09', 2009, 20092, 200906, N'June', 2009243, N'Tuesday', N'None', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-06-10T00:00:00.000' AS DateTime), N'2009-06-10', 2009, 20092, 200906, N'June', 2009244, N'Wednesday', N'None', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-06-11T00:00:00.000' AS DateTime), N'2009-06-11', 2009, 20092, 200906, N'June', 2009245, N'Thursday', N'None', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-06-12T00:00:00.000' AS DateTime), N'2009-06-12', 2009, 20092, 200906, N'June', 2009246, N'Friday', N'None', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-06-13T00:00:00.000' AS DateTime), N'2009-06-13', 2009, 20092, 200906, N'June', 2009247, N'Saturday', N'None', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-06-14T00:00:00.000' AS DateTime), N'2009-06-14', 2009, 20092, 200906, N'June', 2009251, N'Sunday', N'None', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-06-15T00:00:00.000' AS DateTime), N'2009-06-15', 2009, 20092, 200906, N'June', 2009252, N'Monday', N'None', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-06-16T00:00:00.000' AS DateTime), N'2009-06-16', 2009, 20092, 200906, N'June', 2009253, N'Tuesday', N'None', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-06-17T00:00:00.000' AS DateTime), N'2009-06-17', 2009, 20092, 200906, N'June', 2009254, N'Wednesday', N'None', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-06-18T00:00:00.000' AS DateTime), N'2009-06-18', 2009, 20092, 200906, N'June', 2009255, N'Thursday', N'None', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-06-19T00:00:00.000' AS DateTime), N'2009-06-19', 2009, 20092, 200906, N'June', 2009256, N'Friday', N'None', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-06-20T00:00:00.000' AS DateTime), N'2009-06-20', 2009, 20092, 200906, N'June', 2009257, N'Saturday', N'None', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-06-21T00:00:00.000' AS DateTime), N'2009-06-21', 2009, 20092, 200906, N'June', 2009261, N'Sunday', N'None', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-06-22T00:00:00.000' AS DateTime), N'2009-06-22', 2009, 20092, 200906, N'June', 2009262, N'Monday', N'None', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-06-23T00:00:00.000' AS DateTime), N'2009-06-23', 2009, 20092, 200906, N'June', 2009263, N'Tuesday', N'None', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-06-24T00:00:00.000' AS DateTime), N'2009-06-24', 2009, 20092, 200906, N'June', 2009264, N'Wednesday', N'None', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-06-25T00:00:00.000' AS DateTime), N'2009-06-25', 2009, 20092, 200906, N'June', 2009265, N'Thursday', N'None', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-06-26T00:00:00.000' AS DateTime), N'2009-06-26', 2009, 20092, 200906, N'June', 2009266, N'Friday', N'None', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-06-27T00:00:00.000' AS DateTime), N'2009-06-27', 2009, 20092, 200906, N'June', 2009267, N'Saturday', N'None', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-06-28T00:00:00.000' AS DateTime), N'2009-06-28', 2009, 20092, 200906, N'June', 2009271, N'Sunday', N'None', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-06-29T00:00:00.000' AS DateTime), N'2009-06-29', 2009, 20092, 200906, N'June', 2009272, N'Monday', N'None', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-06-30T00:00:00.000' AS DateTime), N'2009-06-30', 2009, 20092, 200906, N'June', 2009273, N'Tuesday', N'None', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-07-01T00:00:00.000' AS DateTime), N'2009-07-01', 2009, 20093, 200907, N'July', 2009274, N'Wednesday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-07-02T00:00:00.000' AS DateTime), N'2009-07-02', 2009, 20093, 200907, N'July', 2009275, N'Thursday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-07-03T00:00:00.000' AS DateTime), N'2009-07-03', 2009, 20093, 200907, N'July', 2009276, N'Friday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-07-04T00:00:00.000' AS DateTime), N'2009-07-04', 2009, 20093, 200907, N'July', 2009277, N'Saturday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-07-05T00:00:00.000' AS DateTime), N'2009-07-05', 2009, 20093, 200907, N'July', 2009281, N'Sunday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-07-06T00:00:00.000' AS DateTime), N'2009-07-06', 2009, 20093, 200907, N'July', 2009282, N'Monday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-07-07T00:00:00.000' AS DateTime), N'2009-07-07', 2009, 20093, 200907, N'July', 2009283, N'Tuesday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-07-08T00:00:00.000' AS DateTime), N'2009-07-08', 2009, 20093, 200907, N'July', 2009284, N'Wednesday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-07-09T00:00:00.000' AS DateTime), N'2009-07-09', 2009, 20093, 200907, N'July', 2009285, N'Thursday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-07-10T00:00:00.000' AS DateTime), N'2009-07-10', 2009, 20093, 200907, N'July', 2009286, N'Friday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-07-11T00:00:00.000' AS DateTime), N'2009-07-11', 2009, 20093, 200907, N'July', 2009287, N'Saturday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-07-12T00:00:00.000' AS DateTime), N'2009-07-12', 2009, 20093, 200907, N'July', 2009291, N'Sunday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-07-13T00:00:00.000' AS DateTime), N'2009-07-13', 2009, 20093, 200907, N'July', 2009292, N'Monday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-07-14T00:00:00.000' AS DateTime), N'2009-07-14', 2009, 20093, 200907, N'July', 2009293, N'Tuesday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-07-15T00:00:00.000' AS DateTime), N'2009-07-15', 2009, 20093, 200907, N'July', 2009294, N'Wednesday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-07-16T00:00:00.000' AS DateTime), N'2009-07-16', 2009, 20093, 200907, N'July', 2009295, N'Thursday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-07-17T00:00:00.000' AS DateTime), N'2009-07-17', 2009, 20093, 200907, N'July', 2009296, N'Friday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-07-18T00:00:00.000' AS DateTime), N'2009-07-18', 2009, 20093, 200907, N'July', 2009297, N'Saturday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-07-19T00:00:00.000' AS DateTime), N'2009-07-19', 2009, 20093, 200907, N'July', 2009301, N'Sunday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-07-20T00:00:00.000' AS DateTime), N'2009-07-20', 2009, 20093, 200907, N'July', 2009302, N'Monday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-07-21T00:00:00.000' AS DateTime), N'2009-07-21', 2009, 20093, 200907, N'July', 2009303, N'Tuesday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-07-22T00:00:00.000' AS DateTime), N'2009-07-22', 2009, 20093, 200907, N'July', 2009304, N'Wednesday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-07-23T00:00:00.000' AS DateTime), N'2009-07-23', 2009, 20093, 200907, N'July', 2009305, N'Thursday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-07-24T00:00:00.000' AS DateTime), N'2009-07-24', 2009, 20093, 200907, N'July', 2009306, N'Friday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-07-25T00:00:00.000' AS DateTime), N'2009-07-25', 2009, 20093, 200907, N'July', 2009307, N'Saturday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-07-26T00:00:00.000' AS DateTime), N'2009-07-26', 2009, 20093, 200907, N'July', 2009311, N'Sunday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-07-27T00:00:00.000' AS DateTime), N'2009-07-27', 2009, 20093, 200907, N'July', 2009312, N'Monday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-07-28T00:00:00.000' AS DateTime), N'2009-07-28', 2009, 20093, 200907, N'July', 2009313, N'Tuesday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-07-29T00:00:00.000' AS DateTime), N'2009-07-29', 2009, 20093, 200907, N'July', 2009314, N'Wednesday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-07-30T00:00:00.000' AS DateTime), N'2009-07-30', 2009, 20093, 200907, N'July', 2009315, N'Thursday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-07-31T00:00:00.000' AS DateTime), N'2009-07-31', 2009, 20093, 200907, N'July', 2009316, N'Friday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-08-01T00:00:00.000' AS DateTime), N'2009-08-01', 2009, 20093, 200908, N'August', 2009317, N'Saturday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-08-02T00:00:00.000' AS DateTime), N'2009-08-02', 2009, 20093, 200908, N'August', 2009321, N'Sunday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-08-03T00:00:00.000' AS DateTime), N'2009-08-03', 2009, 20093, 200908, N'August', 2009322, N'Monday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-08-04T00:00:00.000' AS DateTime), N'2009-08-04', 2009, 20093, 200908, N'August', 2009323, N'Tuesday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-08-05T00:00:00.000' AS DateTime), N'2009-08-05', 2009, 20093, 200908, N'August', 2009324, N'Wednesday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-08-06T00:00:00.000' AS DateTime), N'2009-08-06', 2009, 20093, 200908, N'August', 2009325, N'Thursday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-08-07T00:00:00.000' AS DateTime), N'2009-08-07', 2009, 20093, 200908, N'August', 2009326, N'Friday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-08-08T00:00:00.000' AS DateTime), N'2009-08-08', 2009, 20093, 200908, N'August', 2009327, N'Saturday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-08-09T00:00:00.000' AS DateTime), N'2009-08-09', 2009, 20093, 200908, N'August', 2009331, N'Sunday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-08-10T00:00:00.000' AS DateTime), N'2009-08-10', 2009, 20093, 200908, N'August', 2009332, N'Monday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-08-11T00:00:00.000' AS DateTime), N'2009-08-11', 2009, 20093, 200908, N'August', 2009333, N'Tuesday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-08-12T00:00:00.000' AS DateTime), N'2009-08-12', 2009, 20093, 200908, N'August', 2009334, N'Wednesday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-08-13T00:00:00.000' AS DateTime), N'2009-08-13', 2009, 20093, 200908, N'August', 2009335, N'Thursday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-08-14T00:00:00.000' AS DateTime), N'2009-08-14', 2009, 20093, 200908, N'August', 2009336, N'Friday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-08-15T00:00:00.000' AS DateTime), N'2009-08-15', 2009, 20093, 200908, N'August', 2009337, N'Saturday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-08-16T00:00:00.000' AS DateTime), N'2009-08-16', 2009, 20093, 200908, N'August', 2009341, N'Sunday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-08-17T00:00:00.000' AS DateTime), N'2009-08-17', 2009, 20093, 200908, N'August', 2009342, N'Monday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-08-18T00:00:00.000' AS DateTime), N'2009-08-18', 2009, 20093, 200908, N'August', 2009343, N'Tuesday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-08-19T00:00:00.000' AS DateTime), N'2009-08-19', 2009, 20093, 200908, N'August', 2009344, N'Wednesday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-08-20T00:00:00.000' AS DateTime), N'2009-08-20', 2009, 20093, 200908, N'August', 2009345, N'Thursday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-08-21T00:00:00.000' AS DateTime), N'2009-08-21', 2009, 20093, 200908, N'August', 2009346, N'Friday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-08-22T00:00:00.000' AS DateTime), N'2009-08-22', 2009, 20093, 200908, N'August', 2009347, N'Saturday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-08-23T00:00:00.000' AS DateTime), N'2009-08-23', 2009, 20093, 200908, N'August', 2009351, N'Sunday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-08-24T00:00:00.000' AS DateTime), N'2009-08-24', 2009, 20093, 200908, N'August', 2009352, N'Monday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-08-25T00:00:00.000' AS DateTime), N'2009-08-25', 2009, 20093, 200908, N'August', 2009353, N'Tuesday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-08-26T00:00:00.000' AS DateTime), N'2009-08-26', 2009, 20093, 200908, N'August', 2009354, N'Wednesday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-08-27T00:00:00.000' AS DateTime), N'2009-08-27', 2009, 20093, 200908, N'August', 2009355, N'Thursday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-08-28T00:00:00.000' AS DateTime), N'2009-08-28', 2009, 20093, 200908, N'August', 2009356, N'Friday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-08-29T00:00:00.000' AS DateTime), N'2009-08-29', 2009, 20093, 200908, N'August', 2009357, N'Saturday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-08-30T00:00:00.000' AS DateTime), N'2009-08-30', 2009, 20093, 200908, N'August', 2009361, N'Sunday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-08-31T00:00:00.000' AS DateTime), N'2009-08-31', 2009, 20093, 200908, N'August', 2009362, N'Monday', N'Back to School', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-09-01T00:00:00.000' AS DateTime), N'2009-09-01', 2009, 20093, 200909, N'September', 2009363, N'Tuesday', N'None', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-09-02T00:00:00.000' AS DateTime), N'2009-09-02', 2009, 20093, 200909, N'September', 2009364, N'Wednesday', N'None', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-09-03T00:00:00.000' AS DateTime), N'2009-09-03', 2009, 20093, 200909, N'September', 2009365, N'Thursday', N'None', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-09-04T00:00:00.000' AS DateTime), N'2009-09-04', 2009, 20093, 200909, N'September', 2009366, N'Friday', N'None', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-09-05T00:00:00.000' AS DateTime), N'2009-09-05', 2009, 20093, 200909, N'September', 2009367, N'Saturday', N'None', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-09-06T00:00:00.000' AS DateTime), N'2009-09-06', 2009, 20093, 200909, N'September', 2009371, N'Sunday', N'None', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-09-07T00:00:00.000' AS DateTime), N'2009-09-07', 2009, 20093, 200909, N'September', 2009372, N'Monday', N'None', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-09-08T00:00:00.000' AS DateTime), N'2009-09-08', 2009, 20093, 200909, N'September', 2009373, N'Tuesday', N'None', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-09-09T00:00:00.000' AS DateTime), N'2009-09-09', 2009, 20093, 200909, N'September', 2009374, N'Wednesday', N'None', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-09-10T00:00:00.000' AS DateTime), N'2009-09-10', 2009, 20093, 200909, N'September', 2009375, N'Thursday', N'None', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-09-11T00:00:00.000' AS DateTime), N'2009-09-11', 2009, 20093, 200909, N'September', 2009376, N'Friday', N'None', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-09-12T00:00:00.000' AS DateTime), N'2009-09-12', 2009, 20093, 200909, N'September', 2009377, N'Saturday', N'None', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-09-13T00:00:00.000' AS DateTime), N'2009-09-13', 2009, 20093, 200909, N'September', 2009381, N'Sunday', N'None', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-09-14T00:00:00.000' AS DateTime), N'2009-09-14', 2009, 20093, 200909, N'September', 2009382, N'Monday', N'None', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-09-15T00:00:00.000' AS DateTime), N'2009-09-15', 2009, 20093, 200909, N'September', 2009383, N'Tuesday', N'None', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-09-16T00:00:00.000' AS DateTime), N'2009-09-16', 2009, 20093, 200909, N'September', 2009384, N'Wednesday', N'None', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-09-17T00:00:00.000' AS DateTime), N'2009-09-17', 2009, 20093, 200909, N'September', 2009385, N'Thursday', N'None', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-09-18T00:00:00.000' AS DateTime), N'2009-09-18', 2009, 20093, 200909, N'September', 2009386, N'Friday', N'None', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-09-19T00:00:00.000' AS DateTime), N'2009-09-19', 2009, 20093, 200909, N'September', 2009387, N'Saturday', N'None', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-09-20T00:00:00.000' AS DateTime), N'2009-09-20', 2009, 20093, 200909, N'September', 2009391, N'Sunday', N'None', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-09-21T00:00:00.000' AS DateTime), N'2009-09-21', 2009, 20093, 200909, N'September', 2009392, N'Monday', N'None', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-09-22T00:00:00.000' AS DateTime), N'2009-09-22', 2009, 20093, 200909, N'September', 2009393, N'Tuesday', N'None', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-09-23T00:00:00.000' AS DateTime), N'2009-09-23', 2009, 20093, 200909, N'September', 2009394, N'Wednesday', N'None', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-09-24T00:00:00.000' AS DateTime), N'2009-09-24', 2009, 20093, 200909, N'September', 2009395, N'Thursday', N'None', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-09-25T00:00:00.000' AS DateTime), N'2009-09-25', 2009, 20093, 200909, N'September', 2009396, N'Friday', N'None', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-09-26T00:00:00.000' AS DateTime), N'2009-09-26', 2009, 20093, 200909, N'September', 2009397, N'Saturday', N'None', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-09-27T00:00:00.000' AS DateTime), N'2009-09-27', 2009, 20093, 200909, N'September', 2009401, N'Sunday', N'None', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-09-28T00:00:00.000' AS DateTime), N'2009-09-28', 2009, 20093, 200909, N'September', 2009402, N'Monday', N'None', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-09-29T00:00:00.000' AS DateTime), N'2009-09-29', 2009, 20093, 200909, N'September', 2009403, N'Tuesday', N'None', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-09-30T00:00:00.000' AS DateTime), N'2009-09-30', 2009, 20093, 200909, N'September', 2009404, N'Wednesday', N'None', N'Back to School', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-10-01T00:00:00.000' AS DateTime), N'2009-10-01', 2009, 20094, 200910, N'October', 2009405, N'Thursday', N'Holiday', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-10-02T00:00:00.000' AS DateTime), N'2009-10-02', 2009, 20094, 200910, N'October', 2009406, N'Friday', N'Holiday', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-10-03T00:00:00.000' AS DateTime), N'2009-10-03', 2009, 20094, 200910, N'October', 2009407, N'Saturday', N'Holiday', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-10-04T00:00:00.000' AS DateTime), N'2009-10-04', 2009, 20094, 200910, N'October', 2009411, N'Sunday', N'Holiday', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-10-05T00:00:00.000' AS DateTime), N'2009-10-05', 2009, 20094, 200910, N'October', 2009412, N'Monday', N'Holiday', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-10-06T00:00:00.000' AS DateTime), N'2009-10-06', 2009, 20094, 200910, N'October', 2009413, N'Tuesday', N'Holiday', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-10-07T00:00:00.000' AS DateTime), N'2009-10-07', 2009, 20094, 200910, N'October', 2009414, N'Wednesday', N'Holiday', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-10-08T00:00:00.000' AS DateTime), N'2009-10-08', 2009, 20094, 200910, N'October', 2009415, N'Thursday', N'Holiday', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-10-09T00:00:00.000' AS DateTime), N'2009-10-09', 2009, 20094, 200910, N'October', 2009416, N'Friday', N'Holiday', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-10-10T00:00:00.000' AS DateTime), N'2009-10-10', 2009, 20094, 200910, N'October', 2009417, N'Saturday', N'Holiday', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-10-11T00:00:00.000' AS DateTime), N'2009-10-11', 2009, 20094, 200910, N'October', 2009421, N'Sunday', N'Holiday', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-10-12T00:00:00.000' AS DateTime), N'2009-10-12', 2009, 20094, 200910, N'October', 2009422, N'Monday', N'Holiday', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-10-13T00:00:00.000' AS DateTime), N'2009-10-13', 2009, 20094, 200910, N'October', 2009423, N'Tuesday', N'Holiday', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-10-14T00:00:00.000' AS DateTime), N'2009-10-14', 2009, 20094, 200910, N'October', 2009424, N'Wednesday', N'Holiday', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-10-15T00:00:00.000' AS DateTime), N'2009-10-15', 2009, 20094, 200910, N'October', 2009425, N'Thursday', N'Holiday', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-10-16T00:00:00.000' AS DateTime), N'2009-10-16', 2009, 20094, 200910, N'October', 2009426, N'Friday', N'Holiday', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-10-17T00:00:00.000' AS DateTime), N'2009-10-17', 2009, 20094, 200910, N'October', 2009427, N'Saturday', N'Holiday', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-10-18T00:00:00.000' AS DateTime), N'2009-10-18', 2009, 20094, 200910, N'October', 2009431, N'Sunday', N'Holiday', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-10-19T00:00:00.000' AS DateTime), N'2009-10-19', 2009, 20094, 200910, N'October', 2009432, N'Monday', N'Holiday', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-10-20T00:00:00.000' AS DateTime), N'2009-10-20', 2009, 20094, 200910, N'October', 2009433, N'Tuesday', N'Holiday', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-10-21T00:00:00.000' AS DateTime), N'2009-10-21', 2009, 20094, 200910, N'October', 2009434, N'Wednesday', N'Holiday', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-10-22T00:00:00.000' AS DateTime), N'2009-10-22', 2009, 20094, 200910, N'October', 2009435, N'Thursday', N'Holiday', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-10-23T00:00:00.000' AS DateTime), N'2009-10-23', 2009, 20094, 200910, N'October', 2009436, N'Friday', N'Holiday', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-10-24T00:00:00.000' AS DateTime), N'2009-10-24', 2009, 20094, 200910, N'October', 2009437, N'Saturday', N'Holiday', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-10-25T00:00:00.000' AS DateTime), N'2009-10-25', 2009, 20094, 200910, N'October', 2009441, N'Sunday', N'Holiday', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-10-26T00:00:00.000' AS DateTime), N'2009-10-26', 2009, 20094, 200910, N'October', 2009442, N'Monday', N'Holiday', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-10-27T00:00:00.000' AS DateTime), N'2009-10-27', 2009, 20094, 200910, N'October', 2009443, N'Tuesday', N'Holiday', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-10-28T00:00:00.000' AS DateTime), N'2009-10-28', 2009, 20094, 200910, N'October', 2009444, N'Wednesday', N'Holiday', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-10-29T00:00:00.000' AS DateTime), N'2009-10-29', 2009, 20094, 200910, N'October', 2009445, N'Thursday', N'Holiday', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-10-30T00:00:00.000' AS DateTime), N'2009-10-30', 2009, 20094, 200910, N'October', 2009446, N'Friday', N'Holiday', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-10-31T00:00:00.000' AS DateTime), N'2009-10-31', 2009, 20094, 200910, N'October', 2009447, N'Saturday', N'Holiday', N'None', N'None')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-11-01T00:00:00.000' AS DateTime), N'2009-11-01', 2009, 20094, 200911, N'November', 2009451, N'Sunday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-11-02T00:00:00.000' AS DateTime), N'2009-11-02', 2009, 20094, 200911, N'November', 2009452, N'Monday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-11-03T00:00:00.000' AS DateTime), N'2009-11-03', 2009, 20094, 200911, N'November', 2009453, N'Tuesday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-11-04T00:00:00.000' AS DateTime), N'2009-11-04', 2009, 20094, 200911, N'November', 2009454, N'Wednesday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-11-05T00:00:00.000' AS DateTime), N'2009-11-05', 2009, 20094, 200911, N'November', 2009455, N'Thursday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-11-06T00:00:00.000' AS DateTime), N'2009-11-06', 2009, 20094, 200911, N'November', 2009456, N'Friday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-11-07T00:00:00.000' AS DateTime), N'2009-11-07', 2009, 20094, 200911, N'November', 2009457, N'Saturday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-11-08T00:00:00.000' AS DateTime), N'2009-11-08', 2009, 20094, 200911, N'November', 2009461, N'Sunday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-11-09T00:00:00.000' AS DateTime), N'2009-11-09', 2009, 20094, 200911, N'November', 2009462, N'Monday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-11-10T00:00:00.000' AS DateTime), N'2009-11-10', 2009, 20094, 200911, N'November', 2009463, N'Tuesday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-11-11T00:00:00.000' AS DateTime), N'2009-11-11', 2009, 20094, 200911, N'November', 2009464, N'Wednesday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-11-12T00:00:00.000' AS DateTime), N'2009-11-12', 2009, 20094, 200911, N'November', 2009465, N'Thursday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-11-13T00:00:00.000' AS DateTime), N'2009-11-13', 2009, 20094, 200911, N'November', 2009466, N'Friday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-11-14T00:00:00.000' AS DateTime), N'2009-11-14', 2009, 20094, 200911, N'November', 2009467, N'Saturday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-11-15T00:00:00.000' AS DateTime), N'2009-11-15', 2009, 20094, 200911, N'November', 2009471, N'Sunday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-11-16T00:00:00.000' AS DateTime), N'2009-11-16', 2009, 20094, 200911, N'November', 2009472, N'Monday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-11-17T00:00:00.000' AS DateTime), N'2009-11-17', 2009, 20094, 200911, N'November', 2009473, N'Tuesday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-11-18T00:00:00.000' AS DateTime), N'2009-11-18', 2009, 20094, 200911, N'November', 2009474, N'Wednesday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-11-19T00:00:00.000' AS DateTime), N'2009-11-19', 2009, 20094, 200911, N'November', 2009475, N'Thursday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-11-20T00:00:00.000' AS DateTime), N'2009-11-20', 2009, 20094, 200911, N'November', 2009476, N'Friday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-11-21T00:00:00.000' AS DateTime), N'2009-11-21', 2009, 20094, 200911, N'November', 2009477, N'Saturday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-11-22T00:00:00.000' AS DateTime), N'2009-11-22', 2009, 20094, 200911, N'November', 2009481, N'Sunday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-11-23T00:00:00.000' AS DateTime), N'2009-11-23', 2009, 20094, 200911, N'November', 2009482, N'Monday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-11-24T00:00:00.000' AS DateTime), N'2009-11-24', 2009, 20094, 200911, N'November', 2009483, N'Tuesday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-11-25T00:00:00.000' AS DateTime), N'2009-11-25', 2009, 20094, 200911, N'November', 2009484, N'Wednesday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-11-26T00:00:00.000' AS DateTime), N'2009-11-26', 2009, 20094, 200911, N'November', 2009485, N'Thursday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-11-27T00:00:00.000' AS DateTime), N'2009-11-27', 2009, 20094, 200911, N'November', 2009486, N'Friday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-11-28T00:00:00.000' AS DateTime), N'2009-11-28', 2009, 20094, 200911, N'November', 2009487, N'Saturday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-11-29T00:00:00.000' AS DateTime), N'2009-11-29', 2009, 20094, 200911, N'November', 2009491, N'Sunday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-11-30T00:00:00.000' AS DateTime), N'2009-11-30', 2009, 20094, 200911, N'November', 2009492, N'Monday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-12-01T00:00:00.000' AS DateTime), N'2009-12-01', 2009, 20094, 200912, N'December', 2009493, N'Tuesday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-12-02T00:00:00.000' AS DateTime), N'2009-12-02', 2009, 20094, 200912, N'December', 2009494, N'Wednesday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-12-03T00:00:00.000' AS DateTime), N'2009-12-03', 2009, 20094, 200912, N'December', 2009495, N'Thursday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-12-04T00:00:00.000' AS DateTime), N'2009-12-04', 2009, 20094, 200912, N'December', 2009496, N'Friday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-12-05T00:00:00.000' AS DateTime), N'2009-12-05', 2009, 20094, 200912, N'December', 2009497, N'Saturday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-12-06T00:00:00.000' AS DateTime), N'2009-12-06', 2009, 20094, 200912, N'December', 2009501, N'Sunday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-12-07T00:00:00.000' AS DateTime), N'2009-12-07', 2009, 20094, 200912, N'December', 2009502, N'Monday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-12-08T00:00:00.000' AS DateTime), N'2009-12-08', 2009, 20094, 200912, N'December', 2009503, N'Tuesday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-12-09T00:00:00.000' AS DateTime), N'2009-12-09', 2009, 20094, 200912, N'December', 2009504, N'Wednesday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-12-10T00:00:00.000' AS DateTime), N'2009-12-10', 2009, 20094, 200912, N'December', 2009505, N'Thursday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-12-11T00:00:00.000' AS DateTime), N'2009-12-11', 2009, 20094, 200912, N'December', 2009506, N'Friday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-12-12T00:00:00.000' AS DateTime), N'2009-12-12', 2009, 20094, 200912, N'December', 2009507, N'Saturday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-12-13T00:00:00.000' AS DateTime), N'2009-12-13', 2009, 20094, 200912, N'December', 2009511, N'Sunday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-12-14T00:00:00.000' AS DateTime), N'2009-12-14', 2009, 20094, 200912, N'December', 2009512, N'Monday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-12-15T00:00:00.000' AS DateTime), N'2009-12-15', 2009, 20094, 200912, N'December', 2009513, N'Tuesday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-12-16T00:00:00.000' AS DateTime), N'2009-12-16', 2009, 20094, 200912, N'December', 2009514, N'Wednesday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-12-17T00:00:00.000' AS DateTime), N'2009-12-17', 2009, 20094, 200912, N'December', 2009515, N'Thursday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-12-18T00:00:00.000' AS DateTime), N'2009-12-18', 2009, 20094, 200912, N'December', 2009516, N'Friday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-12-19T00:00:00.000' AS DateTime), N'2009-12-19', 2009, 20094, 200912, N'December', 2009517, N'Saturday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-12-20T00:00:00.000' AS DateTime), N'2009-12-20', 2009, 20094, 200912, N'December', 2009521, N'Sunday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-12-21T00:00:00.000' AS DateTime), N'2009-12-21', 2009, 20094, 200912, N'December', 2009522, N'Monday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-12-22T00:00:00.000' AS DateTime), N'2009-12-22', 2009, 20094, 200912, N'December', 2009523, N'Tuesday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-12-23T00:00:00.000' AS DateTime), N'2009-12-23', 2009, 20094, 200912, N'December', 2009524, N'Wednesday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-12-24T00:00:00.000' AS DateTime), N'2009-12-24', 2009, 20094, 200912, N'December', 2009525, N'Thursday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-12-25T00:00:00.000' AS DateTime), N'2009-12-25', 2009, 20094, 200912, N'December', 2009526, N'Friday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-12-26T00:00:00.000' AS DateTime), N'2009-12-26', 2009, 20094, 200912, N'December', 2009527, N'Saturday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-12-27T00:00:00.000' AS DateTime), N'2009-12-27', 2009, 20094, 200912, N'December', 2009531, N'Sunday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-12-28T00:00:00.000' AS DateTime), N'2009-12-28', 2009, 20094, 200912, N'December', 2009532, N'Monday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-12-29T00:00:00.000' AS DateTime), N'2009-12-29', 2009, 20094, 200912, N'December', 2009533, N'Tuesday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-12-30T00:00:00.000' AS DateTime), N'2009-12-30', 2009, 20094, 200912, N'December', 2009534, N'Wednesday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimDates (DateID, FullDateLabel, CalendarYear, CalendarQuarter, CalendarMonth, CalendarMonthName, CalendarDayOfWeek, WeekDayName, EuropeSeason, NorthAmericaSeason, AsiaSeason) VALUES (CAST(N'2009-12-31T00:00:00.000' AS DateTime), N'2009-12-31', 2009, 20094, 200912, N'December', 2009535, N'Thursday', N'Holiday', N'Holiday', N'Holiday')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (195, N'Litware Home Theater System 5.1 Channel M510 Black', N'1000 watts over 5 channels, HDMI up scaling to 720p/1080i of DVD media', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (196, N'Litware Home Theater System 2.1 Channel E211 Black', N'2.1 channel home theater systems, includes 2 front speakers, 1 subwoofer and 1 A/V receiver', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (197, N'Litware Home Theater System 2.1 Channel E212 Black', N'2.1 channel home theater system, total power: 400 watts', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (198, N'Litware Home Theater System 4.1 Channel M411 Black', N'4.1 Channel Front Surround. 1080p/720p up conversion from DVD or USB', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (199, N'Litware Home Theater System 4.1 Channel M412 Black', N'4.1 Channel Front Surround, USB host, analog in, optical digital in/out', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (200, N'Litware Home Theater System 4.1 Channel M413 Black', N'Design produces big and detailed home theater sound from small, elegant high gloss black speakers', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (201, N'Litware Home Theater System 5.1 Channel M512 Black', N'1000 watts over 5 channels, 1 center-channel speaker, and 1 subwoofer', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (202, N'Litware Home Theater System 5.1 Channel M513 Black', N'1000 watts over 5 channels, 1 center-channel speaker', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (203, N'Litware Home Theater System 7.1 Channel M710 Black', N'130 watts total output on 2-way bass reflex front, center, and surround speakers', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (204, N'Litware Home Theater System 7.1 Channel X711 Black', N'660 watts into 7.1 Channels (110 watts per Channel at 6 Ohms, 1 kHz, 1 Channel Driven)', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (205, N'Litware Home Theater System 5.1 Channel M514 Black', N'1000 watts over 5 channels, multi-room entertainment expandable up to 10 rooms', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (206, N'Litware Home Theater System 5.1 Channel M515 Black', N'1000 watts over 5 channels, 5 disc DVD/CD changer', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (207, N'Litware Home Theater System 5.1 Channel M516 Black', N'1000 watts over 5 channels, progressive scan player compatible with DVD, CD, Mp3, WMA, and picture CD formats', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (208, N'Litware Home Theater System 4.1 Channel M410 Silver', N'4.1 Channel Front Surround', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (209, N'Litware Home Theater System 5.1 Channel M511 Silver', N'1000 watts over 5 channels', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (210, N'Litware Home Theater System 2.1 Channel E210 Silver', N'2.1 channel home theater system with an HDMI socket, an auxiliary input and a USB port', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (211, N'Litware Home Theater System 5.1 Channel M510 Silver', N'1000 watts over 5 channels, HDMI up scaling to 720p/1080i of DVD media', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (212, N'Litware Home Theater System 2.1 Channel E211 Silver', N'2.1 channel home theater system, includes 2 front speakers, 1 subwoofer and 1 A/V receiver', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (213, N'Litware Home Theater System 2.1 Channel E212 Silver', N'2.1 channel home theater system, total power: 400 watts', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (214, N'Litware Home Theater System 4.1 Channel M411 Silver', N'4.1 channel front surround, 1080p/720p up conversion from DVD or USB', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (215, N'Litware Home Theater System 4.1 Channel M412 Silver', N'4.1 channel fronts surround, USB host, analog in, optical digital in/out', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (216, N'Litware Home Theater System 4.1 Channel M413 Silver', N'Design produces big and detailed home theater sound from small, elegant high gloss black speakers', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (217, N'Litware Home Theater System 5.1 Channel M512 Silver', N'1000 watts over 5 channels, 1 center-channel speaker, and 1 subwoofer', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (218, N'Litware Home Theater System 5.1 Channel M513 Silver', N'1000 watts over 5 channels, 1 center-channel speaker', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (219, N'Litware Home Theater System 7.1 Channel M710 Silver', N'130 watts total output on 2-way bass reflex front, center, and surround speakers', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (220, N'Litware Home Theater System 7.1 Channel X711 Silver', N'660 watts into 7.1 channels (110 watts per channel at 6 Ohms, 1 kHz, 1 channel driven)', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (221, N'Litware Home Theater System 5.1 Channel M514 Silver', N'1000 watts over 5 channels, multi-room entertainment expandable up to 10 rooms', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (222, N'Litware Home Theater System 5.1 Channel M515 Silver', N'1000 watts over 5 channels, 5 disc DVD/CD changer', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (223, N'Litware Home Theater System 5.1 Channel M516 Silver', N'1000 watts over 5 channels, progressive scan player compatible with DVD, CD, Mp3, WMA, and Picture CD formats', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (224, N'Litware Home Theater System 4.1 Channel M410 Brown', N'4.1 Channel Front Surround', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (225, N'Litware Home Theater System 5.1 Channel M511 Brown', N'1000 watts over 5 channels', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (226, N'Litware Home Theater System 2.1 Channel E210 Brown', N'2.1 channel home theater system with an HDMI socket, an auxiliary input and a USB port', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (227, N'Litware Home Theater System 5.1 Channel M510 Brown', N'1000 watts over 5 channels, HDMI up scaling to 720p/1080i of DVD media', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (228, N'Litware Home Theater System 2.1 Channel E211 Brown', N'2.1 channel home theater system, includes 2 front speakers, 1 subwoofer and 1 A/V receiver', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (229, N'Litware Home Theater System 2.1 Channel E212 Brown', N'2.1 channel home theater system, total power: 400 watts', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (230, N'Litware Home Theater System 4.1 Channel M411 Brown', N'4.1 Channel front surround. 1080p/720p up conversion from DVD or USB', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (231, N'Litware Home Theater System 4.1 Channel M412 Brown', N'4.1 Channel Front Surround, USB host, analog in, optical digital in/out', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (232, N'Litware Home Theater System 4.1 Channel M413 Brown', N'Design produces big and detailed home theater sound from small, elegant high gloss black speakers', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (233, N'Litware Home Theater System 5.1 Channel M512 Brown', N'1000 watts over 5 channels, 1 center-channel speaker, and 1 subwoofer', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (234, N'Litware Home Theater System 5.1 Channel M513 Brown', N'1000 watts over 5 channels, 1 center-channel speaker', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (235, N'Litware Home Theater System 7.1 Channel M710 Brown', N'130 watts total output on 2-way bass reflex front, center, and surround speakers', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (236, N'Litware Home Theater System 7.1 Channel X711 Brown', N'660 watts into 7.1 channels (110 watts per channel at 6 Ohms, 1 kHz, 1 channel driven)', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (237, N'Litware Home Theater System 5.1 Channel M514 Brown', N'1000 watts over 5 channels, multi-room entertainment expandable up to 10 rooms', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (238, N'Litware Home Theater System 5.1 Channel M515 Brown', N'1000 watts over 5 channels, 5 disc DVD/CD changer', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (239, N'Litware Home Theater System 5.1 Channel M516 Brown', N'1000 watts over 5 channels, progressive scan player compatible with DVD, CD, Mp3, WMA, and picture CD formats', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (240, N'Contoso Home Theater System 2.1 Channel E1200 Black', N'2.1 channel home theater system. Total power: 400 watts', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (241, N'Contoso Home Theater System 2.1 Channel M1210 Black', N'2.1 channel home theater systems, includes 2 front speakers, 1 subwoofer and 1 A/V receiver', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (242, N'Contoso Home Theater System 7.1 Channel M1700 Black', N'660 watts into 7.1 channels', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (243, N'Contoso Home Theater System 4.1 Channel M1400 Black', N'4.1 channel front surround, 1080p/720p up conversion from DVD or USB', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (244, N'Contoso Home Theater System 5.1 Channel M1500 Black', N'1000 watts over 5 channels, 1 center-channel speaker', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (245, N'Contoso Home Theater System 5.1 Channel M1510 Black', N'300 watts of home theater surround sound designed for use with 5.1-channel DVD players, computer systems, and more', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (246, N'Contoso Home Theater System 4.1 Channel M1410 Black', N'4.1 Channel Front Surround, USB host, analog in, optical digital in/out', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (247, N'Contoso Home Theater System 5.1 Channel M1520 Black', N'1000 watts over 5 channels, 1 center-channel speaker', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (248, N'Contoso Home Theater System 5.1 Channel M1530 Black', N'1000 watts over 5 channels, 1 center-channel speaker, and 1 subwoofer', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (249, N'Contoso Home Theater System 2.1 Channel E1220 Black', N'2.1 channel home theater system, includes 2 front speakers', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (250, N'Contoso Home Theater System 5.1 Channel M1540 Black', N'1000 watts over 5 channels, 1 center-channel speaker, and 1 subwoofer', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (251, N'Contoso Home Theater System 4.1 Channel M1420 Black', N'4.1 channel front surround', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (252, N'Contoso Home Theater System 2.1 Channel M1230 Black', N'2.1 channel home theater system, includes 2 front speakers and 1 subwoofer', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (253, N'Contoso Home Theater System 2.1 Channel E1200 Silver', N'2.1 channel home theater system, total power: 400 watts', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (254, N'Contoso Home Theater System 2.1 Channel M1210 Silver', N'2.1 channel home theater system, includes 2 front speakers, 1 subwoofer and 1 A/V receiver', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (255, N'Contoso Home Theater System 7.1 Channel M1700 Silver', N'660 Watts into 7.1 Channels', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (256, N'Contoso Home Theater System 4.1 Channel M1400 Silver', N'4.1 channel front surround, 1080p/720p up conversion from DVD or USB', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (257, N'Contoso Home Theater System 5.1 Channel M1500 Silver', N'1000 watts over 5 channels, 1 center-channel speaker', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (258, N'Contoso Home Theater System 5.1 Channel M1510 Silver', N'300 watts of home theater surround sound designed for use with 5.1-channel DVD players, computer systems, and more', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (259, N'Contoso Home Theater System 4.1 Channel M1410 Silver', N'4.1 Channel Front Surround, USB host, analog in, optical digital in/out', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (260, N'Contoso Home Theater System 5.1 Channel M1520 Silver', N'1000 watts over 5 channels, 1 center-channel speaker', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (261, N'Contoso Home Theater System 5.1 Channel M1530 Silver', N'1000 watts over 5 channels, 1 center-channel speaker, and 1 subwoofer', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (262, N'Contoso Home Theater System 2.1 Channel E1220 Silver', N'2.1 channel home theater system, includes 2 front speakers', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (263, N'Contoso Home Theater System 5.1 Channel M1540 Silver', N'1000 watts over 5 channels, 1 center-channel speaker, and 1 subwoofer', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (264, N'Contoso Home Theater System 4.1 Channel M1420 Silver', N'4.1 channel front surround', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (265, N'Contoso Home Theater System 2.1 Channel M1230 Silver', N'2.1 channel home theater system, includes 2 front speakers and 1 subwoofer', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (266, N'Contoso Home Theater System 2.1 Channel E1200 White', N'2.1 channel home theater system, total power: 400 watts', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (267, N'Contoso Home Theater System 2.1 Channel M1210 White', N'2.1 channel home theater system, includes 2 front speakers, 1 subwoofer and 1 A/V receiver', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (268, N'Contoso Home Theater System 7.1 Channel M1700 White', N'660 watts into 7.1 channels', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (269, N'Contoso Home Theater System 4.1 Channel M1400 White', N'4.1 channel front surround, 1080p/720p up conversion from DVD or USB', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (270, N'Contoso Home Theater System 5.1 Channel M1500 White', N'1000 watts over 5 channels, 1 center-channel speaker', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (271, N'Contoso Home Theater System 5.1 Channel M1510 White', N'300 watts of home theater surround sound designed for use with 5.1-channel DVD players, computer systems, and more', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (272, N'Contoso Home Theater System 4.1 Channel M1410 White', N'4.1 channel fronts surround, USB host, analog in, optical digital in/out', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (273, N'Contoso Home Theater System 5.1 Channel M1520 White', N'1000 watts over 5 channels, 1 center-channel speaker', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (274, N'Contoso Home Theater System 5.1 Channel M1530 White', N'1000 watts over 5 channels, 1 center-channel speaker, and 1 subwoofer', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (275, N'Contoso Home Theater System 2.1 Channel E1220 White', N'2.1 channel home theater system, includes 2 front speakers', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (276, N'Contoso Home Theater System 5.1 Channel M1540 White', N'1000 watts over 5 channels, 1 center-channel speaker, and 1 subwoofer', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (277, N'Contoso Home Theater System 4.1 Channel M1420 White', N'4.1 Channel Front Surround', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (278, N'Contoso Home Theater System 2.1 Channel M1230 White', N'2.1 channel home theater system, includes 2 front speakers and 1 subwoofer', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (279, N'Contoso Home Theater System 2.1 Channel E1200 Brown', N'2.1 channel home theater system. Total power: 400 watts', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (280, N'Contoso Home Theater System 2.1 Channel M1210 Brown', N'2.1 channel home theater system, includes 2 front speakers, 1 subwoofer and 1 A/V receiver', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (281, N'Contoso Home Theater System 7.1 Channel M1700 Brown', N'660 watts into 7.1 channels', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (282, N'Contoso Home Theater System 4.1 Channel M1400 Brown', N'4.1 Channel Front Surround, 1080p/720p up conversion from DVD or USB', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (283, N'Contoso Home Theater System 5.1 Channel M1500 Brown', N'1000 watts over 5 channels, 1 center-channel speaker', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (284, N'Contoso Home Theater System 5.1 Channel M1510 Brown', N'300 watts of home theater surround sound designed for use with 5.1-channel DVD players, computer systems, and more', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (285, N'Contoso Home Theater System 4.1 Channel M1410 Brown', N'4.1 channel front surround, USB host, Analog In, optical digital in/out', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (286, N'Contoso Home Theater System 5.1 Channel M1520 Brown', N'1000 watts over 5 channels, 1 center-channel speaker', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (287, N'Contoso Home Theater System 5.1 Channel M1530 Brown', N'1000 watts over 5 channels, 1 center-channel speaker, and 1 subwoofer', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (288, N'Contoso Home Theater System 2.1 Channel E1220 Brown', N'2.1 channel home theater system, includes 2 front speakers', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (289, N'Contoso Home Theater System 5.1 Channel M1540 Brown', N'1000 watts over 5 channels, 1 center-channel speaker, and 1 subwoofer', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (290, N'Contoso Home Theater System 4.1 Channel M1420 Brown', N'4.1 Channel Front Surround', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (291, N'Contoso Home Theater System 2.1 Channel M1230 Brown', N'2.1 channel home theater systems, includes 2 front speakers and 1 subwoofer', N'TV and Video', N'Home Theater System', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (292, N'SV Car Video LCD7W M7080 Black', N'7\” 16:9 wide motorized touch screen active matrix LCD, remote control', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (293, N'SV Car Video LCD7W M7081 Black', N'7\” 16:9 wide motorized touch screen active matrix LCD', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (294, N'SV Car Video TFT7 M7000 Black', N'Contains a pair of car-seat headrests with two 7\” TFT monitor', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (295, N'SV Car Video TFT6.2W E6280 Black', N'6.2\” touch screen TFT widescreen active matrix display. 80W x 4 max power output', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (296, N'SV Car Video TFT6.2W E6281 Black', N'6.2\” touch screen TFT widescreen active matrix display', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (297, N'SV Car Video TFT6.2W E6282 Black', N'6.2\” touch screen TFT widescreen active matrix display. 80W x 2 max power output', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (298, N'SV Car Video TFT7 M7001 Black', N'Contains car-seat headrest with two 7\” TFT monitor and USB/SD/MMC card reader', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (299, N'SV Car Video AM/FM E1000 Black', N'Plays AM/FM/MP3/WMA and MP4', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (300, N'SV Car Video AM/FM E1001 Black', N'Plays AM/FM/MP3/WMA and MP4. USB and SD\” card reader', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (301, N'SV Car Video TFT7 M7002 Black', N'Contains a pair of car-seat headrests with two 7\” TFT monitor, Mp3/mp4 player', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (302, N'SV Car Video LCD9.2W X9280 Black', N'9.2\” 16:9 widescreen TFT LCD monitor, 768 x 234 pixel resolutions', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (303, N'SV Car Video LCD9.2W X9281 Black', N'9.2\” 16:9 widescreen TFT LCD monitor, 500:1 contrast ratio', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (304, N'SV Car Video LCD7W M7082 Black', N'7\” 16:9 wide motorized touch screen active matrix LCD, remote control', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (305, N'SV Car Video LCD7 M7001 Black', N'7\” 16:9 motorized touch screen active matrix LCD', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (306, N'SV Car Video LCD7 M7002 Black', N'7\” 16:9 motorized touch screen active matrix LCD. 1152 X 234 pixel resolutions', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (307, N'SV Car Video LCD7 M7003 Black', N'7\” 16:9 motorized touch screen active matrix LCD. Brightness: 450 NITS', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (308, N'SV Car Video LCD7W M7080 Silver', N'7\” 16:9 wide motorized touch screen active matrix LCD, remote control', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (309, N'SV Car Video LCD7W M7081 Silver', N'7\” 16:9 wide motorized touch screen active matrix LCD', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (310, N'SV Car Video TFT7 M7000 Silver', N'Contains a pair of car-seat headrests with two 7\” TFT monitor', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (311, N'SV Car Video TFT6.2W E6280 Silver', N'6.2\” touch screen TFT widescreen active matrix display. 80W x 4 max power output', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (312, N'SV Car Video TFT6.2W E6281 Silver', N'6.2\” touch screen TFT widescreen active matrix display', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (313, N'SV Car Video TFT6.2W E6282 Silver', N'6.2\” touch screen TFT widescreen active matrix display. 80W x 2 max power output', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (314, N'SV Car Video TFT7 M7001 Silver', N'Contains car-seat headrest with two 7\” TFT monitor and USB/SD/MMC card reader', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (315, N'SV Car Video AM/FM E1000 Silver', N'Plays AM/FM/MP3/WMA and MP4', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (316, N'SV Car Video AM/FM E1001 Silver', N'Plays AM/FM/MP3/WMA and MP4, USB and SD\” card reader', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (317, N'SV Car Video TFT7 M7002 Silver', N'Contains a pair of car-seat headrests with two 7\” TFT monitor, Mp3/mp4 player', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (318, N'SV Car Video LCD9.2W X9280 Silver', N'9.2\” 16:9 widescreen TFT LCD monitor, 768 x 234 pixel resolutions', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (319, N'SV Car Video LCD9.2W X9281 Silver', N'9.2\” 16:9 widescreen TFT LCD monitor, 500:1 contrast ratio', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (320, N'SV Car Video LCD7W M7082 Silver', N'7\” 16:9 wide motorized touch screen active matrix LCD, remote control', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (321, N'SV Car Video LCD7 M7001 Silver', N'7\” 16:9 motorized touch screen active matrix LCD', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (322, N'SV Car Video LCD7 M7002 Silver', N'7\” 16:9 motorized touch screen active matrix LCD. 1152 X 234 pixel resolutions', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (323, N'SV Car Video LCD7 M7003 Silver', N'7\” 16:9 motorized touch screen active matrix LCD, brightness: 450 NITS', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (324, N'SV Car Video LCD7W M7080 Brown', N'7\” 16:9 wide motorized touch screen active matrix LCD, remote control', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (325, N'SV Car Video LCD7W M7081 Brown', N'7\” 16:9 wide motorized touch screen active matrix LCD', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (326, N'SV Car Video TFT7 M7000 Brown', N'Contains a pair of car-seat headrests with two 7\” TFT monitor', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (327, N'SV Car Video TFT6.2W E6280 Brown', N'6.2\” touch screen TFT widescreen active matrix display, 80W x 4 max power output', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (328, N'SV Car Video TFT6.2W E6281 Brown', N'6.2\” touch screen TFT widescreen active matrix display', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (329, N'SV Car Video TFT6.2W E6282 Brown', N'6.2\” touch screen TFT widescreen active matrix display, 80W x 2 max power output', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (330, N'SV Car Video TFT7 M7001 Brown', N'Contains car-seat headrest with two 7\” TFT monitor and USB/SD/MMC card reader', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (331, N'SV Car Video AM/FM E1000 Brown', N'Plays AM/FM/MP3/WMA and MP4', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (332, N'SV Car Video AM/FM E1001 Brown', N'Plays AM/FM/MP3/WMA and MP4, USB and SD\” card reader', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (333, N'SV Car Video TFT7 M7002 Brown', N'Contains a pair of car-seat headrests with two 7\” TFT monitor, Mp3/mp4 player', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (334, N'SV Car Video LCD9.2W X9280 Brown', N'9.2\” 16:9 widescreen TFT LCD monitor, 768 x 234 pixel resolutions', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (335, N'SV Car Video LCD9.2W X9281 Brown', N'9.2\” 16:9 widescreen TFT LCD monitor, 500:1 contrast ratio', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (336, N'SV Car Video LCD7W M7082 Brown', N'7\” 16:9 wide motorized touch screen active matrix LCD, remote control', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (337, N'SV Car Video LCD7 M7001 Brown', N'7\” 16:9 motorized touch screen active matrix LCD', N'TV and Video', N'Car Video', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (338, N'Fabrikam Laptop19W M9800 Black', N'320 GB hard drive, 4 GB RAM 19-inches widescreen LCD with perfect 16:9 aspect ratio', N'Computers', N'Laptops', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (339, N'Fabrikam Laptop17W M7080 Black', N'320 GB hard drive, 4 GB RAM 17-inches widescreen LCD with perfect 16:9 aspect ratio', N'Computers', N'Laptops', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (340, N'Fabrikam Laptop17 M7000 Black', N'320 GB hard drive, 2 GB RAM 17-inches screens LCD', N'Computers', N'Laptops', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (341, N'Fabrikam Laptop16W M6080 Black', N'320 GB hard drive, 2 GB RAM 16-inches widescreen LCD', N'Computers', N'Laptops', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (342, N'Fabrikam Laptop16 M6000 Black', N'180 GB hard drive, 2 GB RAM 16-inches LCD', N'Computers', N'Laptops', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (343, N'Fabrikam Laptop19 M9000 Black', N'320 GB hard drive, 4 GB RAM 19-inches screen LCD', N'Computers', N'Laptops', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (344, N'Fabrikam Laptop12 M2000 White', N'60GB hard drive, 512MB memory', N'Computers', N'Laptops', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (345, N'Fabrikam Laptop15 M5000 White', N'15-inches screen, 60 GB hard drive, 128 MB of RAM (512 MB maximum), DVD-ROM', N'Computers', N'Laptops', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (346, N'Fabrikam Laptop15.4 M5400 White', N'15.4-inches screen TFT LCD display, 120 GB hard drive', N'Computers', N'Laptops', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (347, N'Fabrikam Laptop14.1 M4100 White', N'Multimedia-focused laptop with 14.1-inches screen, 320 GB hard drive', N'Computers', N'Laptops', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (348, N'Fabrikam Laptop15.4W M5480 White', N'15.4-Inches widescreen TFT LCD display, 1280x800 resolutions', N'Computers', N'Laptops', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (349, N'Fabrikam Laptop10.1 M0100 White', N'80GB hard drive, 1GB RAM integrated 802.11b/g Wi-Fi Certified', N'Computers', N'Laptops', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (350, N'Fabrikam Laptop12W M2080 Silver', N'60GB hard drive, 1GB memory', N'Computers', N'Laptops', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (351, N'Fabrikam Laptop8.9W E0880 Silver', N'80GB hard drive (2.2 pounds), 1.6GHz CPU', N'Computers', N'Laptops', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (352, N'Fabrikam Laptop8.9 E0800 Silver', N'1GB DDR2 SDRAM, 160GB hard drive (2.2 pounds), 1.6GHz CPU', N'Computers', N'Laptops', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (353, N'Fabrikam Laptop10.1 M0101 Silver', N'80GB hard drive, 1GB RAM, 6-cell battery provides up to 6 1/2 hours', N'Computers', N'Laptops', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (354, N'Fabrikam Laptop12 M2001 Silver', N'80GB hard drive, 512MB memory', N'Computers', N'Laptops', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (355, N'Fabrikam Laptop8.9 M0801 Silver', N'1.6GHz CPU, 1GB DDR2 SDRAM, 60GB hard drive (2.2 pounds)', N'Computers', N'Laptops', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (356, N'Fabrikam Laptop14.1W M4180 Red', N'Multimedia-focused laptop with 14.1-inches widescreen, 3 GB RAM (4 GB max)', N'Computers', N'Laptops', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (357, N'Fabrikam Laptop14.1 E4101 Red', N'Multimedia-focused laptop with 14.1-inch screen, DVD-R drive', N'Computers', N'Laptops', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (358, N'Fabrikam Laptop8.9 E8002 Red', N'1GB DDR2 SDRAM, 160GB hard drive (2.2 pounds)', N'Computers', N'Laptops', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (359, N'Fabrikam Laptop12 M2002 Red', N'80GB hard drive, 1GB memory', N'Computers', N'Laptops', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (360, N'Fabrikam Laptop13.3 M3000 Red', N'2 GB RAM (4 GB max), 120 GB hard drive, DVD/CD super drive', N'Computers', N'Laptops', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (361, N'Fabrikam Laptop13.3W M3080 Red', N'13.3-inches widescreen TFT LCD display, 160 GB hard drive', N'Computers', N'Laptops', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (362, N'Adventure Works Laptop19 X1900 Black', N'320 GB hard drive, 4 GB RAM 19-inches LCD', N'Computers', N'Laptops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (363, N'Adventure Works Laptop15 M1500 Black', N'15-inches screen, 60 GB hard drive, 128 MB of RAM (512 MB maximum), DVD-ROM', N'Computers', N'Laptops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (364, N'Adventure Works Laptop12 M1200 Black', N'80GB hard drive, 512MB memory', N'Computers', N'Laptops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (365, N'Adventure Works Laptop16 M1600 Black', N'180 GB hard drive, 2 GB RAM 16-inches LCD', N'Computers', N'Laptops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (366, N'Adventure Works Laptop15.4W M1548 Black', N'15.4-inches widescreen TFT LCD display, 1280x800 resolutions', N'Computers', N'Laptops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (367, N'Adventure Works Laptop8.9 E0890 Black', N'1GB DDR2 SDRAM, 160GB hard drive (2.2 pounds)', N'Computers', N'Laptops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (368, N'Adventure Works Laptop19W X1980 White', N'320 GB hard drive, 4 GB RAM 19-inches widescreen LCD with perfect 16:9 aspect ratio', N'Computers', N'Laptops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (369, N'Adventure Works Laptop15 M1501 White', N'15-inch screen, 60 GB hard drive, 128 MB of RAM (512 MB maximum), DVD-ROM', N'Computers', N'Laptops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (370, N'Adventure Works Laptop12 M1201 White', N'80GB hard drive, 512MB memory', N'Computers', N'Laptops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (371, N'Adventure Works Laptop16 M1601 White', N'180 GB hard drive, 2 GB RAM 16-inches LCD', N'Computers', N'Laptops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (372, N'Adventure Works Laptop15.4W M1548 White', N'15.4-inches widescreen TFT LCD display, 1280x800 Resolutions', N'Computers', N'Laptops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (373, N'Adventure Works Laptop8.9 E0890 White', N'1GB DDR2 SDRAM, 160GB hard drive (2.2 pounds)', N'Computers', N'Laptops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (374, N'Adventure Works Laptop19W X1980 Silver', N'320 GB hard drive, 4 GB RAM 19-inches widescreen LCD with perfect 16:9 aspect ratio', N'Computers', N'Laptops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (375, N'Adventure Works Laptop15 M1501 Silver', N'15-inches screen, 60 GB hard drive, 128 MB of RAM (512 MB maximum), DVD-ROM', N'Computers', N'Laptops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (376, N'Adventure Works Laptop12 M1201 Silver', N'80GB hard drive, 512MB memory', N'Computers', N'Laptops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (377, N'Adventure Works Laptop16 M1601 Silver', N'180 GB hard drive, 2 GB RAM 16-inches LCD', N'Computers', N'Laptops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (378, N'Adventure Works Laptop15.4W M1548 Silver', N'15.4-inches widescreen TFT LCD display, 1280x800 Resolutions', N'Computers', N'Laptops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (379, N'Adventure Works Laptop8.9 E0890 Silver', N'1GB DDR2 SDRAM, 160GB hard drive (2.2 pounds)', N'Computers', N'Laptops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (380, N'Adventure Works Laptop19W X1980 Red', N'320 GB hard drive, 4 GB RAM 19-inches widescreen LCD with perfect 16:9 aspect ratio', N'Computers', N'Laptops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (381, N'Adventure Works Laptop15 M1501 Red', N'15-inches screen, 60 GB hard drive, 128 MB of RAM (512 MB maximum), DVD-ROM', N'Computers', N'Laptops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (382, N'Adventure Works Laptop12 M1201 Red', N'80GB hard drive, 512MB memory', N'Computers', N'Laptops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (383, N'Adventure Works Laptop16 M1601 Red', N'180 GB hard drive, 2 GB RAM 16-inches LCD', N'Computers', N'Laptops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (384, N'Adventure Works Laptop15.4W M1548 Red', N'15.4-Inches widescreen TFT LCD display, 1280x800 resolutions', N'Computers', N'Laptops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (385, N'Adventure Works Laptop8.9 E0890 Red', N'1GB DDR2 SDRAM, 160GB hard drive (2.2 pounds)', N'Computers', N'Laptops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (386, N'Adventure Works Laptop19W X1980 Blue', N'320 GB hard drive, 4 GB RAM 19-inches widescreen LCD with perfect 16:9 aspect ratio', N'Computers', N'Laptops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (387, N'Adventure Works Laptop15 M1501 Blue', N'15-inches screen, 60 GB hard drive, 128 MB of RAM (512 MB maximum), DVD-ROM', N'Computers', N'Laptops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (388, N'Adventure Works Laptop12 M1201 Blue', N'80GB hard drive, 512MB memory', N'Computers', N'Laptops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (389, N'Adventure Works Laptop16 M1601 Blue', N'180 GB hard drive, 2 GB RAM 16-inches LCD', N'Computers', N'Laptops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (390, N'WWI Laptop19W X0196 Black', N'320 GB hard drive, 4 GB RAM 19-inches widescreen LCD with perfect 16:9 aspect ratio', N'Computers', N'Laptops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (391, N'WWI Laptop15 M0150 Black', N'15-inches screen, 60 GB hard drive, 128 MB of RAM (512 MB maximum), DVD-ROM', N'Computers', N'Laptops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (392, N'WWI Laptop12 M0120 Black', N'80GB hard drive, 512MB memory', N'Computers', N'Laptops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (393, N'WWI Laptop16 M0160 Black', N'180 GB hard drive, 2 GB RAM 16-inches LCD', N'Computers', N'Laptops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (394, N'WWI Laptop15.4W M0156 Black', N'15.4-inches widescreen TFT LCD Display, 1280x800 resolutions', N'Computers', N'Laptops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (395, N'WWI Laptop8.9 E0089 Black', N'1GB DDR2 SDRAM, 160GB hard drive (2.2 pounds)', N'Computers', N'Laptops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (396, N'WWI Laptop19W X0196 White', N'320 GB hard drive, 4 GB RAM 19-inches widescreen LCD with perfect 16:9 aspect ratio', N'Computers', N'Laptops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (397, N'WWI Laptop15 M0150 White', N'15-inches screen, 60 GB hard drive, 128 MB of RAM (512 MB maximum), DVD-ROM', N'Computers', N'Laptops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (398, N'WWI Laptop12 M0120 White', N'80GB hard drive, 512MB memory', N'Computers', N'Laptops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (399, N'WWI Laptop16 M0160 White', N'180 GB hard drive, 2 GB RAM 16-inches LCD', N'Computers', N'Laptops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (400, N'WWI Laptop15.4W M0156 White', N'15.4-inches widescreen TFT LCD display, 1280x800 resolutions', N'Computers', N'Laptops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (401, N'WWI Laptop8.9 E0089 White', N'1GB DDR2 SDRAM, 160GB hard drive (2.2 pounds)', N'Computers', N'Laptops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (402, N'WWI Laptop19W X0196 Blue', N'320 GB hard drive, 4 GB RAM 19-inches widescreen LCD with perfect 16:9 aspect ratio', N'Computers', N'Laptops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (403, N'WWI Laptop15 M0150 Blue', N'15-inches screen, 60 GB hard drive, 128 MB of RAM (512 MB maximum), DVD-ROM', N'Computers', N'Laptops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (404, N'Proseware Laptop19 X910 Black', N'320 GB hard drive, 4 GB RAM 19-inches LCD', N'Computers', N'Laptops', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (405, N'Proseware Laptop15 M510 Black', N'15-inches screen, 60 GB hard drive, 128 MB of RAM (512 MB maximum), DVD-ROM', N'Computers', N'Laptops', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (406, N'Proseware Laptop12 M210 Black', N'80GB hard drive, 512MB memory', N'Computers', N'Laptops', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (407, N'Proseware Laptop16 M610 Black', N'180 GB hard drive, 2 GB RAM 16-inches LCD', N'Computers', N'Laptops', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (408, N'Proseware Laptop15.4W M518 Black', N'15.4-inches widescreen TFT LCD display, 1280x800 resolutions', N'Computers', N'Laptops', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (409, N'Proseware Laptop8.9 E089 Black', N'1GB DDR2 SDRAM, 160GB hard drive (2.2 pounds)', N'Computers', N'Laptops', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (410, N'Proseware Laptop19W X910 White', N'320 GB hard drive, 4 GB RAM 19-inches widescreen LCD with perfect 16:9 aspect ratio', N'Computers', N'Laptops', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (411, N'Proseware Laptop15 M510 White', N'15-inches screen, 60 GB hard drive, 128 MB of RAM (512 MB maximum), DVD-ROM', N'Computers', N'Laptops', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (412, N'Proseware Laptop12 M210 White', N'80GB hard drive, 512MB memory', N'Computers', N'Laptops', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (413, N'Proseware Laptop16 M610 White', N'180 GB hard drive.2 GB RAM.16-inch LCD.', N'Computers', N'Laptops', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (414, N'Proseware Laptop15.4W M518 White', N'15.4-inch Widescreen TFT LCD display, 1280x800 resolutions', N'Computers', N'Laptops', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (415, N'Proseware Laptop8.9 E089 White', N'1GB DDR2 SDRAM, 160GB hard drive (2.2 pounds)', N'Computers', N'Laptops', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (416, N'Adventure Works Desktop PC2.33 XD233 Silver', N'2.33GHz dual processor, 4MB L2 cache, 750GB 7200RPM hard drive', N'Computers', N'Desktops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (417, N'Adventure Works Desktop PC2.30 MD230 Silver', N'2.3GHz dual processor, 4 GB DDR2 SDRAM memories, 19\” widescreen LCD monitors', N'Computers', N'Desktops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (418, N'Adventure Works Desktop PC1.60 ED160 Silver', N'1.60GHz dual processor, 1GB DDR2 memory, 30GB 5400RPM hard drive', N'Computers', N'Desktops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (419, N'Adventure Works Desktop PC1.80 ED180 Silver', N'1.80GHz dual processor, 1GB DDR2 memory, 320GB 5400RPM hard drive', N'Computers', N'Desktops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (420, N'Adventure Works Desktop PC1.80 ED182 Silver', N'1.80GHz dual processor, 4GB DDR2 memory, 400GB 7200RPM hard drive', N'Computers', N'Desktops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (421, N'Adventure Works Desktop PC3.0 MS300 Silver', N'3.0GHz processor, 4GB DDR2 SDRAM memory, 500GB 7200RPM hard drive, 19 inch LCD flat monitors', N'Computers', N'Desktops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (422, N'Adventure Works Desktop PC2.33 XD233 Black', N'2.33GHz dual processor, 4MB L2 cache, 750GB 7200RPM hard drive', N'Computers', N'Desktops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (423, N'Adventure Works Desktop PC2.30 MD230 Black', N'2.3GHz dual processor, 4 GB DDR2 SDRAM memories, 19\” widescreen LCD monitors', N'Computers', N'Desktops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (424, N'Adventure Works Desktop PC1.60 ED160 Black', N'1.60GHz dual processor, 1GB DDR2 memory, 30GB 5400RPM hard drive', N'Computers', N'Desktops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (425, N'Adventure Works Desktop PC1.80 ED180 Black', N'1.80GHz dual processor, 1GB DDR2 memory, 320GB 5400RPM hard drive', N'Computers', N'Desktops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (426, N'Adventure Works Desktop PC1.80 ED182 Black', N'1.80GHz dual processor, 4GB DDR2 memory, 400GB 7200RPM hard drive', N'Computers', N'Desktops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (427, N'Adventure Works Desktop PC3.0 MS300 Black', N'3.0GHz processor, 4 GB DDR2 SDRAM memories, 500GB 7200RPM hard drive, 19 inches LCD flat monitors', N'Computers', N'Desktops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (428, N'Adventure Works Desktop PC2.33 XD233 Brown', N'2.33GHz dual processor, 4MB L2 cache, 750GB 7200RPM hard drive', N'Computers', N'Desktops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (429, N'Adventure Works Desktop PC2.30 MD230 Brown', N'2.3GHz dual processor, 4 GB DDR2 SDRAM memories, 19\” widescreen LCD monitors', N'Computers', N'Desktops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (430, N'Adventure Works Desktop PC1.60 ED160 Brown', N'1.60GHz dual processor, 1GB DDR2 memory, 30GB 5400RPM hard drive', N'Computers', N'Desktops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (431, N'Adventure Works Desktop PC1.80 ED180 Brown', N'1.80GHz dual processor, 1GB DDR2 memory, 320GB 5400RPM hard drive', N'Computers', N'Desktops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (432, N'Adventure Works Desktop PC1.80 ED182 Brown', N'1.80GHz dual processor, 4GB DDR2 memories, 400GB 7200RPM hard drive', N'Computers', N'Desktops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (433, N'Adventure Works Desktop PC2.33 XD233 White', N'2.33GHz dual processor, 4MB L2 cache, 750GB 7200RPM hard drive', N'Computers', N'Desktops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (434, N'Adventure Works Desktop PC2.30 MD230 White', N'2.3GHz dual processor, 4 GB DDR2 SDRAM memories, 19\” widescreen LCD monitors', N'Computers', N'Desktops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (435, N'Adventure Works Desktop PC1.60 ED160 White', N'1.60GHz dual processor, 1GB DDR2 memory, 30GB 5400RPM hard drive', N'Computers', N'Desktops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (436, N'Adventure Works Desktop PC1.80 ED180 White', N'1.80GHz dual processor, 1GB DDR2 memory, 320GB 5400RPM hard drive', N'Computers', N'Desktops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (437, N'Adventure Works Desktop PC1.80 ED182 White', N'1.80GHz dual processor, 4GB DDR2 memories, 400GB 7200RPM hard drive', N'Computers', N'Desktops', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (438, N'WWI Desktop PC2.33 X2330 Silver', N'2.33GHz dual processor, 750GB 7200RPM hard drive, 19\” widescreen LCD monitors', N'Computers', N'Desktops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (439, N'WWI Desktop PC2.30 M2300 Brown', N'2.3GHz dual processor, 4 GB DDR2 SDRAM memories, 4MB L2 Cache', N'Computers', N'Desktops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (440, N'WWI Desktop PC1.60 E1600 Silver', N'1.60GHz dual processor, 2GB DDR2 memories, 30GB 5400RPM hard drive', N'Computers', N'Desktops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (441, N'WWI Desktop PC1.80 E1800 Brown', N'1.80GHz dual processor, 2GB DDR2 memories, 320GB 5400RPM hard drive', N'Computers', N'Desktops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (442, N'WWI Desktop PC1.80 E1801 Silver', N'1.80GHz dual processor, 4GB DDR2 memory, 400GB 7200RPM hard drive', N'Computers', N'Desktops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (443, N'WWI Desktop PC3.0 M0300 Silver', N'3.0GHz processor, 4 GB DDR2 SDRAM memories, 500GB 7200RPM hard drive, 19 inch LCD flat monitors', N'Computers', N'Desktops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (444, N'WWI Desktop PC2.33 X2330 Black', N'2.33GHz dual processor, 4MB L2 cache, 750GB 7200RPM hard drive', N'Computers', N'Desktops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (445, N'WWI Desktop PC2.30 M2300 Black', N'2.3GHz dual processor, 4 GB DDR2 SDRAM memories, 19\” widescreen LCD monitors', N'Computers', N'Desktops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (446, N'WWI Desktop PC1.60 E1600 Black', N'1.60GHz dual processor, 2GB DDR2 memories, 30GB 5400RPM hard drive', N'Computers', N'Desktops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (447, N'WWI Desktop PC1.80 E1800 Black', N'1.80GHz dual processor, 2GB DDR2 memory, 320GB 5400RPM hard drive', N'Computers', N'Desktops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (448, N'WWI Desktop PC1.80 E1801 Black', N'1.80GHz dual processor, 4GB DDR2 memory, 400GB 7200RPM hard drive', N'Computers', N'Desktops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (449, N'WWI Desktop PC3.0 M0300 Black', N'3.0GHz processor, 4 GB DDR2 SDRAM memories, 500GB 7200RPM hard drive, 19 inches LCD flat monitors', N'Computers', N'Desktops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (450, N'WWI Desktop PC2.33 X2330 Brown', N'2.33GHz dual processor, 4MB L2 cache, 750GB 7200RPM hard drive', N'Computers', N'Desktops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (451, N'WWI Desktop PC2.30 M2300 Silver', N'2.3GHz dual processor, 4 GB DDR2 SDRAM memories, 19\” widescreen LCD monitors', N'Computers', N'Desktops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (452, N'WWI Desktop PC1.60 E1600 Red', N'1.60GHz dual processor, 2GB DDR2 memories, 30GB 5400RPM hard drive', N'Computers', N'Desktops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (453, N'WWI Desktop PC1.80 E1800 Silver', N'1.80GHz dual processor, 2GB DDR2 memories, 320GB 5400RPM hard drive', N'Computers', N'Desktops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (454, N'WWI Desktop PC1.80 E1801 Brown', N'1.80GHz dual processor, 4GB DDR2 memory, 400GB 7200RPM hard drive', N'Computers', N'Desktops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (455, N'WWI Desktop PC2.33 X2330 White', N'2.33GHz dual processor, 4MB L2 cache, 750GB 7200RPM hard drive', N'Computers', N'Desktops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (456, N'WWI Desktop PC2.30 M2300 White', N'2.3GHz dual processor, 4 GB DDR2 SDRAM memories, 19\” widescreen LCD monitors', N'Computers', N'Desktops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (457, N'WWI Desktop PC1.60 E1600 White', N'1.60GHz dual processor, 2GB DDR2 memories, 30GB 5400RPM hard drive', N'Computers', N'Desktops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (458, N'WWI Desktop PC1.80 E1800 White', N'1.80GHz dual processor, 2GB DDR2 memories, 320GB 5400RPM hard drive', N'Computers', N'Desktops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (459, N'WWI Desktop PC1.80 E1801 White', N'1.80GHz dual processor, 4GB DDR2 Memories, 400GB 7200RPM hard drive', N'Computers', N'Desktops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (460, N'WWI Desktop PC1.80 E1802 White', N'1.80GHz dual processor, 4GB DDR2 memory, 500GB 7200RPM hard drive', N'Computers', N'Desktops', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (461, N'Proseware LCD24 X300 Black', N'24 inches HD display, 160° horizontal and vertical viewing angles', N'Computers', N'Monitors', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (462, N'Proseware LCD24W X300 Black', N'24 widescreen HD display, 1920 x 1200 maximum resolutions', N'Computers', N'Monitors', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (463, N'Proseware LCD22 M2000 Black', N'22\” screen LCD, Resolution -1680 x 1050', N'Computers', N'Monitors', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (464, N'Proseware LCD22W M2001 Black', N'22\” wide screen LCD, 0.285mm x 0.285mm pixel pitch, 300cd/m2 (typical) brightness', N'Computers', N'Monitors', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (465, N'Proseware LCD20 M200 Black', N'Screen size: 20\”, response time: 5ms, brightness: 300cd/m2', N'Computers', N'Monitors', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (466, N'Proseware LCD20W M230 Black', N'20\” widescreen 1600 x 900 VGA, brightness: 250cd/m2, contrast ratio: 10000:1', N'Computers', N'Monitors', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (467, N'Proseware LCD19 E1000 Black', N'19-inches TFT LCD, 300cd/m2 brightness, 2000:1 dynamic contrast ratio, 5 ms response time', N'Computers', N'Monitors', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (468, N'Proseware LCD19W M100 Black', N'19 inches widescreen LCD monitor 300cd/m2 (typical) brightness', N'Computers', N'Monitors', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (469, N'Proseware LCD17 E200 Black', N'Size/Type: 17\” TFT LCD, maximum resolution: 1280 x 1024, response time: 5ms', N'Computers', N'Monitors', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (470, N'Proseware LCD17W E202 Black', N'17 inches widescreen LCD monitor 300cd/m2 (typical) brightness', N'Computers', N'Monitors', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (471, N'Proseware LCD15 E103 Black', N'Wide viewing angle of 100° vertical and 120° horizontal, dot pitch: 0.297 mm pixel pitch', N'Computers', N'Monitors', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (472, N'Proseware CRT19 E201 Black', N'Reduces VLF/ELF radiation by up to 99.5%', N'Computers', N'Monitors', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (473, N'Proseware CRT17 E104 Black', N'Safely prevents static while eliminating up to 95% of screen glare', N'Computers', N'Monitors', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (474, N'Proseware CRT15 E10 Black', N'Reduces VLF/ELF radiation by up to 99.5%', N'Computers', N'Monitors', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (475, N'Proseware LCD24 X300 White', N'24 Inch HD display, 160° horizontal and vertical viewing angles', N'Computers', N'Monitors', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (476, N'Proseware LCD24W X300 White', N'24 widescreen HD display, 1920 x 1200 maximum resolution', N'Computers', N'Monitors', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (477, N'Proseware LCD22 M2000 White', N'22\” Screen LCD, resolution - 1680 x 1050', N'Computers', N'Monitors', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (478, N'Proseware LCD22W M2001 White', N'22\” widescreen LCD, 0.285mm x 0.285mm pixel pitch, 300cd/m2 (typical) brightness', N'Computers', N'Monitors', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (479, N'Proseware LCD20 M200 White', N'Screen size: 20\”, response time: 5ms, brightness: 300cd/m2', N'Computers', N'Monitors', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (480, N'Proseware LCD20W M230 White', N'20\” widescreen 1600 x 900 VGA, brightness: 250cd/m2, contrast ratio: 10000:1', N'Computers', N'Monitors', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (481, N'Proseware LCD19 E1000 White', N'19-inches TFT LCD, 300cd/m2 brightness, 2000:1 dynamic contrast ratio, 5 ms response time', N'Computers', N'Monitors', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (482, N'Proseware LCD19W M100 White', N'19 inches widescreen LCD monitor 300cd/m2 (typical) brightness', N'Computers', N'Monitors', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (483, N'Proseware LCD17 E200 White', N'Size/Type: 17\” TFT LCD, maximum resolution: 1280 x 1024, response time: 5ms', N'Computers', N'Monitors', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (484, N'Proseware LCD17W E202 White', N'17 inches widescreen LCD monitor 300cd/m2 (typical) brightness', N'Computers', N'Monitors', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (485, N'Proseware LCD15 E103 White', N'Wide viewing angle of 100° vertical and 120° horizontal, dot pitch: 0.297 mm pixel pitch', N'Computers', N'Monitors', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (486, N'Proseware CRT19 E201 White', N'Reduces VLF/ELF radiation by up to 99.5%', N'Computers', N'Monitors', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (487, N'Proseware CRT17 E104 White', N'Safely prevents static while eliminating up to 95% of screen glare', N'Computers', N'Monitors', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (488, N'Proseware CRT15 E10 White', N'Reduces VLF/ELF radiation by up to 99.5%', N'Computers', N'Monitors', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (489, N'Adventure Works LCD24 X300 Black', N'24 Inch HD display, 160° horizontal and vertical viewing angles', N'Computers', N'Monitors', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (490, N'Adventure Works LCD24W X300 Black', N'24 widescreen HD display, 1920 x 1200 maximum resolutions', N'Computers', N'Monitors', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (491, N'Adventure Works LCD22 M200 Black', N'22\” Screen LCD, resolution - 1680 x 1050', N'Computers', N'Monitors', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (492, N'Adventure Works LCD22W M200 Black', N'22\” widescreen LCD, 0.285mm x 0.285mm pixel pitch, 300cd/m2 (typical) brightness', N'Computers', N'Monitors', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (493, N'Adventure Works LCD20 M210 Black', N'Screen size: 20\”, response time: 5ms,  brightness: 300cd/m2', N'Computers', N'Monitors', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (494, N'Adventure Works LCD20W M240 Black', N'20\” widescreen 1600 x 900 VGA, brightness: 250cd/m2, contrast ratio: 10000:1', N'Computers', N'Monitors', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (495, N'Adventure Works LCD19 E108 Black', N'19inches TFT LCD.300cd/m2 brightness, 2000:1 dynamic contrast ratio, 5 ms response time', N'Computers', N'Monitors', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (496, N'Adventure Works LCD19W M100 Black', N'19 inches widescreen LCD monitor 300cd/m2 (typical) brightness', N'Computers', N'Monitors', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (497, N'Adventure Works LCD17 E200 Black', N'Size/Type: 17\” TFT LCD, maximum resolution: 1280 x 1024, response Time: 5ms', N'Computers', N'Monitors', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (498, N'Adventure Works LCD17W E203 Black', N'17 inches widescreen LCD monitor 300cd/m2 (typical) brightness', N'Computers', N'Monitors', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (499, N'Adventure Works LCD15 E100 Black', N'Wide viewing angle of 100° vertical and 120° horizontal, dot pitch: 0.297 mm pixel pitch', N'Computers', N'Monitors', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (500, N'Adventure Works CRT19 E10 Black', N'Reduces VLF/ELF radiation by up to 99.5%', N'Computers', N'Monitors', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (501, N'Adventure Works CRT17 E105 Black', N'Safely prevents static while eliminating up to 95% of screen glare', N'Computers', N'Monitors', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (502, N'Adventure Works CRT15 E101 Black', N'Reduces VLF/ELF radiation by up to 99.5%', N'Computers', N'Monitors', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (503, N'Adventure Works LCD24 X300 White', N'24 inches HD display, 160° horizontal and vertical viewing angles', N'Computers', N'Monitors', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (504, N'Adventure Works LCD24W X300 White', N'24 inches widescreen HD display, 1920 x 1200 maximum resolutions', N'Computers', N'Monitors', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (505, N'Adventure Works LCD22 M200 White', N'22\” screen LCD, resolution - 1680 x 1050', N'Computers', N'Monitors', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (506, N'Adventure Works LCD22W M200 White', N'22\” wide screen LCD, 0.285mm x 0.285mm pixel pitch, 300cd/m2 (typical) brightness', N'Computers', N'Monitors', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (507, N'Adventure Works LCD20 M210 White', N'Screen size: 20\”, response time: 5ms, brightness: 300cd/m2', N'Computers', N'Monitors', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (508, N'Adventure Works LCD20W M240 White', N'20\” widescreen 1600 x 900 VGA, brightness: 250cd/m2, contrast Ratio: 10000:1', N'Computers', N'Monitors', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (509, N'Adventure Works LCD19 E108 White', N'19 inches TFT LCD, 300cd/m2 brightness, 2000:1 dynamic contrast ratio, 5 ms response time', N'Computers', N'Monitors', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (510, N'Adventure Works LCD19W M100 White', N'19 inches widescreen LCD monitor, 300cd/m2 (typical) brightness', N'Computers', N'Monitors', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (511, N'Adventure Works LCD17 E200 White', N'Size/Type: 17\” TFT LCD, maximum resolution: 1280 x 1024. response time: 5ms', N'Computers', N'Monitors', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (512, N'Adventure Works LCD17W E203 White', N'17 inches widescreen LCD monitor, 300cd/m2 (typical) brightness', N'Computers', N'Monitors', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (513, N'Adventure Works LCD15 E100 White', N'Wide viewing angle of 100° vertical and 120° horizontal, dot pitch: 0.297 mm pixel pitch', N'Computers', N'Monitors', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (514, N'Adventure Works CRT19 E10 White', N'Reduces VLF/ELF radiation by up to 99.5%', N'Computers', N'Monitors', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (515, N'Adventure Works CRT17 E105 White', N'Safely prevents static while eliminating up to 95% of screen glare', N'Computers', N'Monitors', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (516, N'Adventure Works CRT15 E101 White', N'Reduces VLF/ELF radiation by up to 99.5%', N'Computers', N'Monitors', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (517, N'WWI LCD24 X300 Black', N'24 Inches HD display, 160° horizontal and vertical viewing angles', N'Computers', N'Monitors', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (518, N'WWI LCD24W X300 Black', N'24 widescreen HD display, 1920 x 1200 maximum resolutions', N'Computers', N'Monitors', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (519, N'WWI LCD22 M2002 Black', N'22\” Screen LCD, resolution - 1680 x 1050', N'Computers', N'Monitors', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (520, N'WWI LCD22W M2003 Black', N'22\” widescreen LCD, 0.285mm x 0.285mm pixel pitch, 300cd/m2 (typical) brightness', N'Computers', N'Monitors', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (521, N'WWI LCD20 M220 Black', N'Screen size: 20\”, response time: 5ms, brightness: 300cd/m2', N'Computers', N'Monitors', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (522, N'WWI LCD20W M250 Black', N'20\” widescreen 1600 x 900 VGA, brightness: 250cd/m2, contrast Ratio: 10000:1', N'Computers', N'Monitors', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (523, N'WWI LCD19 E107 Black', N'19 inches TFT LCD, 300cd/m2 brightness, 2000:1 dynamic contrast ratio, 5 ms response time', N'Computers', N'Monitors', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (524, N'WWI LCD19W M100 Black', N'19 inches widescreen LCD monitor, 300cd/m2 (typical) brightness', N'Computers', N'Monitors', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (525, N'WWI LCD17 E200 Black', N'Size/Type: 17\” TFT LCD, maximum resolution: 1280 x 1024, response time: 5ms', N'Computers', N'Monitors', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (526, N'WWI LCD17W E200 Black', N'17 inches widescreen LCD monitor, 300cd/m2 (typical) brightness', N'Computers', N'Monitors', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (527, N'WWI CRT17 E106 Black', N'Wide viewing angle of 100° vertical and 120° horizontal, dot pitch: 0.297 mm pixel pitch', N'Computers', N'Monitors', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (528, N'WWI LCD24 X300 White', N'24 inches HD display, 160° horizontal and vertical viewing angles', N'Computers', N'Monitors', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (529, N'WWI LCD24W X300 White', N'24 widescreen HD display, 1920 x 1200 maximum resolution', N'Computers', N'Monitors', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (530, N'WWI LCD22 M2002 White', N'22\” screen LCD, resolution - 1680 x 1050', N'Computers', N'Monitors', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (531, N'WWI LCD22W M2003 White', N'22\” widescreen LCD, 0.285mm x 0.285mm pixel pitch, 300cd/m2 (typical) brightness', N'Computers', N'Monitors', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (532, N'WWI LCD20 M220 White', N'Screen size: 20\”, response time: 5ms, brightness: 300cd/m2', N'Computers', N'Monitors', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (533, N'WWI LCD20W M250 White', N'20\” widescreen 1600 x 900 VGA, brightness: 250cd/m2, contrast ratio: 10000:1', N'Computers', N'Monitors', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (534, N'WWI LCD19 E107 White', N'19 inches TFT LCD, 300cd/m2 brightness, 2000:1 dynamic contrast ratio, 5 ms response time', N'Computers', N'Monitors', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (535, N'WWI LCD19W M100 White', N'19 inches widescreen LCD monitor, 300cd/m2 (typical) brightness', N'Computers', N'Monitors', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (536, N'WWI LCD17 E205 White', N'Size/Type: 17\” TFT LCD, maximum resolution: 1280 x 1024, response time: 5ms', N'Computers', N'Monitors', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (537, N'WWI LCD17W E200 White', N'17 inch widescreen LCD monitor, 300cd/m2 (typical) brightness', N'Computers', N'Monitors', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (538, N'WWI CRT17 E106 White', N'Wide viewing angle of 100° vertical and 120° horizontal, dot pitch: 0.297 mm pixel pitch', N'Computers', N'Monitors', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (539, N'Proseware Projector 1080p LCD86 Black', N'1080p high definition projector, 1200 ANSI Lumens, 14,000:1 contrast ratio, 2 HDMI inputs', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (540, N'Proseware Projector 1080p DLP86 Black', N'1920 x 1080p pixel resolution, HDTV 1080p native resolution, 8000:1 contrast ratio', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (541, N'Proseware Projector 720p LCD56 Black', N'720p High Definition performance with 10,000:1 contrast ratio.', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (542, N'Proseware Projector 720p DLP56 Black', N'Native 720p Resolution, 1700 ANSI lumens, 2500:1 contrast ratio, up to 3000 hours lamp life', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (543, N'Proseware Projector 480p LCD12 Black', N'High brightness, 1300 ANSI lumen light output, remote control', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (544, N'Proseware Projector 480p DLP12 Black', N'850 typical lumens, 3,000:1 contrast ratio, supports 4:3 and 16:9 aspect ratios', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (545, N'Proseware Screen 125in X1609 Black', N'16:9 aspect ratios - 125in, 160 degree wide viewing angle', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (546, N'Proseware Screen 113in X1609 Black', N'16:9 aspect ratios - 113in, dual wall and ceiling-perfect for home / business', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (547, N'Proseware Screen 106in M1609 Black', N'16:9 aspect ratios - 106in, electric/motorized screen for home theater and commercial presentations', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (548, N'Proseware Screen 100in M1609 Black', N'16:9 aspect ratios-100in, designed for wall or ceiling installation', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (549, N'Proseware Screen 85in E1010 Black', N'1:1 aspect ratio-85in, enjoy fast, easy setup with the innovative, patent-pending design', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (550, N'Proseware Screen 80in E1010 Black', N'Standard 4:3 aspect ratio-85in, use with any home theater or business projector', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (551, N'Proseware Projector 1080p LCD86 White', N'1080p high definition projector,1200 ANSI Lumens, 14,000:1 contrast ratio, 2 HDMI inputs', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (552, N'Proseware Projector 1080p DLP86 White', N'1920 x 1080p pixel resolution, HDTV 1080p native resolution, 8000:1 contrast ratio', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (553, N'Proseware Projector 720p LCD56 White', N'720p high definition performance with 10,000:1 contrast ratio', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (554, N'Proseware Projector 720p DLP56 White', N'Native 720p resolution, 1700 ANSI lumens, 2500:1 contrast ratio, up to 3000 hours lamp life', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (555, N'Proseware Projector 480p LCD12 White', N'High brightness, 1300 ANSI lumen light output, remote control', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (556, N'Proseware Projector 480p DLP12 White', N'850 typical lumens, 3,000:1 contrast ratio, supports 4:3 and 16:9 aspect ratios', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (557, N'Proseware Screen 125in X1609 White', N'16:9 aspect ratios-125in, 160 degree wide viewing angle', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (558, N'Proseware Screen 113in X1609 White', N'16:9 aspect ratios-113in, dual wall and ceiling - perfect for home / business', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (559, N'Proseware Screen 106in M1609 White', N'16:9 aspect ratios-106in, electric/motorized screen for home theater and commercial presentations', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (560, N'Proseware Screen 100in M1609 White', N'16:9 aspect ratio-100in, designed for wall or ceiling installation', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (561, N'Proseware Screen 85in E1010 White', N'1:1 aspect ratio-85in, enjoy fast, easy setup with the innovative, patent-pending design', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (562, N'Proseware Screen 80in E1010 White', N'Standard 4:3 aspect ratio-85in, use with any home theater or business projector', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (563, N'Proseware Projector 1080p LCD86 Silver', N'1080p high definition projector, 1200 ANSI Lumens, 14,000:1 contrast ratio, 2 HDMI inputs', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (564, N'Proseware Projector 1080p DLP86 Silver', N'1920 x 1080p pixel resolution, HDTV 1080p native resolution, 8000:1 contrast ratio', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (565, N'Proseware Projector 720p LCD56 Silver', N'720p high definition performance with 10,000:1 contrast ratio', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (566, N'Proseware Projector 720p DLP56 Silver', N'Native 720p resolution, 1700 ANSI lumens, 2500:1 contrast ratio, up to 3000 hours lamp life', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (567, N'Proseware Projector 480p LCD12 Silver', N'High brightness, 1300 ANSI lumen Light output, remote control', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (568, N'Proseware Projector 480p DLP12 Silver', N'850 typical lumens, 3,000:1 contrast ratio, supports 4:3 and 16:9 aspect ratios', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (569, N'Proseware Screen 125in X1609 Silver', N'16:9 aspect ratios-125in, 160 degree wide viewing angle', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (570, N'Proseware Screen 113in X1609 Silver', N'16:9 aspect ratios-113in, dual wall and ceiling- perfect for home / business', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (571, N'Proseware Screen 106in M1609 Silver', N'16:9 aspect ratios-106in, electric/motorized screen for home theater and commercial presentations', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (572, N'Proseware Screen 100in M1609 Silver', N'16:9 aspect ratios-100in, designed for wall or ceiling installation', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (573, N'Proseware Screen 85in E1010 Silver', N'1:1 aspect ratio-85in, enjoy fast, easy setup with the innovative, patent-pending design', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (574, N'Proseware Screen 80in E1010 Silver', N'Standard 4:3 aspect ratio-85in, use with any home theater or business projector', N'Computers', N'Projectors & Screens', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (575, N'Contoso Projector 1080p X980 Black', N'1080p high definition projector, 1200 ANSI lumens, 14,000:1 contrast ratio, 2 HDMI inputs', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (576, N'Contoso Projector 1080p X981 Black', N'1920 x 1080p pixel resolution, HDTV 1080p native resolution, 8000:1 contrast ratio', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (577, N'Contoso Projector 720p M620 Black', N'720p high definition performance with 10,000:1 contrast ratio', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (578, N'Contoso Projector 720p M621 Black', N'Native 720p resolution, 1700 ANSI lumens, 2500:1 contrast ratio, up to 3000 hours lamp life', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (579, N'Contoso Projector 480p M480 Black', N'High brightness, 1300 ANSI lumen light output, remote control', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (580, N'Contoso Projector 480p M481 Black', N'850 typical lumens, 3,000:1 contrast ratio, supports 4:3 and 16:9 aspect ratios', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (581, N'Contoso Screen 125in M250 Black', N'16:9 aspect ratios - 125in, 160 degree wide viewing angle', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (582, N'Contoso Screen 113in M251 Black', N'16:9 aspect ratios-113in, dual wall and ceiling-perfect for home / business', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (583, N'Contoso Screen 106in M060 Black', N'16:9 aspect ratios-106in, electric/motorized screen for home theater and commercial presentations', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (584, N'Contoso Screen 100in E010 Black', N'16:9 aspect ratios - 100in, designed for wall or ceiling installation', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (585, N'Contoso Screen 85in E085 Black', N'1:1 aspect ratio-85in, enjoy fast, easy setup with the innovative, patent-pending design', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (586, N'Contoso Screen 80in E080 Black', N'Standard 4:3 aspect ratio-85in, use with any home theater or business projector', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (587, N'Contoso Projector 1080p X980 White', N'1080p high definition projector, 1200 ANSI Lumens, 14,000:1 contrast ratio, 2 HDMI inputs', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (588, N'Contoso Projector 1080p X981 White', N'1920 x 1080p pixel resolution, HDTV 1080p native resolution,8000:1 contrast ratio', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (589, N'Contoso Projector 720p M620 White', N'720p high definition performance with 10,000:1 contrast ratio', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (590, N'Contoso Projector 720p M621 White', N'Native 720p resolution, 1700 ANSI lumens,2500:1 contrast ratio, up to 3000 hours lamp life', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (591, N'Contoso Projector 480p M480 White', N'High brightness, 1300 ANSI lumen light output, remote control', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (592, N'Contoso Projector 480p M481 White', N'850 typical lumens, 3,000:1 contrast ratio, supports 4:3 and 16:9 aspect ratios', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (593, N'Contoso Screen 125in M250 White', N'16:9 aspect ratios-125in, 160 degree wide viewing angle', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (594, N'Contoso Screen 113in M251 White', N'16:9 aspect ratios - 113in, dual wall and ceiling - perfect for home / business', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (595, N'Contoso Screen 106in M060 White', N'16:9 aspect Ratios - 106in, electric/motorized screen for home theater and commercial presentations', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (596, N'Contoso Screen 100in E010 White', N'16:9 aspect Ratio-100in, designed for wall or ceiling installation', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (597, N'Contoso Screen 85in E085 White', N'1:1 aspect ratio-85in, enjoy fast, easy setup with the innovative, patent-pending design', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (598, N'Contoso Screen 80in E080 White', N'Standard 4:3 aspect ratio-85in, use with any home theater or business projector', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (599, N'Contoso Projector 1080p X980 Silver', N'1080p high definition projector, 1200 ANSI Lumens, 14,000:1 contrast ratio, 2 HDMI inputs', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (600, N'Contoso Projector 1080p X981 Silver', N'1920 x 1080p pixel resolution, HDTV 1080p native resolution, 8000:1 contrast ratio', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (601, N'Contoso Projector 720p M620 Silver', N'720p high definition performance with 10,000:1 contrast ratio', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (602, N'Contoso Projector 720p M621 Silver', N'Native 720p resolution, 1700 ANSI lumens, 2500:1 contrast ratio, up to 3000 hours lamp life', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (603, N'Contoso Projector 480p M480 Silver', N'High brightness, 1300 ANSI lumen light output, remote control', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (604, N'Contoso Projector 480p M481 Silver', N'850 typical lumens, 3,000:1 contrast ratio, supports 4:3 and 16:9 aspect ratios', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (605, N'Contoso Screen 125in M250 Silver', N'16:9 aspect ratio-125in, 160 degree wide viewing angle', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (606, N'Contoso Screen 113in M251 Silver', N'16:9 aspect ratio-113in, dual wall and ceiling-perfect for home / business', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (607, N'Contoso Screen 106in M060 Silver', N'16:9 aspect ratio-106in, electric/motorized screen for home theater and commercial presentations', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (608, N'Contoso Screen 100in E010 Silver', N'16:9 aspect ratio-100in, designed for wall or ceiling installation', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (609, N'Contoso Screen 85in E085 Silver', N'1:1 aspect ratio-85in, enjoy fast, easy setup with the innovative, patent-pending design', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (610, N'Contoso Screen 80in E080 Silver', N'Standard 4:3 aspect ratio-85in, use with any home theater or business projector', N'Computers', N'Projectors & Screens', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (611, N'WWI Projector 1080p LCD86 Black', N'1080p high definition projector, 1200 ANSI lumens, 14,000:1 contrast ratio, 2 HDMI inputs', N'Computers', N'Projectors & Screens', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (612, N'WWI Projector 1080p DLP86 Black', N'1920 x 1080p pixel resolution, HDTV 1080p native resolution, 8000:1 contrast ratio', N'Computers', N'Projectors & Screens', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (613, N'WWI Projector 720p LCD56 Black', N'720p high definition performance with 10,000:1 contrast ratio', N'Computers', N'Projectors & Screens', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (614, N'WWI Projector 720p DLP56 Black', N'Native 720p resolution, 1700 ANSI lumens, 2500:1 contrast ratio, up to 3000 hours lamp life', N'Computers', N'Projectors & Screens', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (615, N'WWI Projector 480p LCD12 Black', N'High brightness, 1300 ANSI lumen light output, remote control', N'Computers', N'Projectors & Screens', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (616, N'WWI Projector 480p DLP12 Black', N'850 typical lumens, 3,000:1 contrast ratio, supports 4:3 and 16:9 aspect ratios', N'Computers', N'Projectors & Screens', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (617, N'WWI Screen 125in M1611 Black', N'16:9 Aspect Ratio - 125in. 160 degree wide viewing angle.', N'Computers', N'Projectors & Screens', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (618, N'WWI Screen 113in M1610 Black', N'16:9 Aspect Ratio - 113in.Dual wall and ceiling - perfect for home / business.', N'Computers', N'Projectors & Screens', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (619, N'WWI Screen 106in M1609 Black', N'16:9 aspect ratio-106in, electric/motorized screen for home theater and commercial presentations', N'Computers', N'Projectors & Screens', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (620, N'WWI Screen 100in M1609 Black', N'16:9 aspect ratio-100in, designed for wall or ceiling installation', N'Computers', N'Projectors & Screens', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (621, N'WWI Screen 85in E1010 Black', N'1:1 aspect ratio-85in, enjoy fast, easy setup with the innovative, patent-pending design', N'Computers', N'Projectors & Screens', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (622, N'WWI Projector 1080p LCD86 White', N'1080p high definition projector, 1200 ANSI lumens, 14,000:1 contrast ratio, 2 HDMI inputs', N'Computers', N'Projectors & Screens', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (623, N'WWI Projector 1080p DLP86 White', N'1920 x 1080p pixel resolution, HDTV 1080p native resolution, 8000:1 contrast ratio', N'Computers', N'Projectors & Screens', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (624, N'WWI Projector 720p LCD56 White', N'720p high definition performance with 10,000:1 contrast ratio', N'Computers', N'Projectors & Screens', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (625, N'WWI Projector 720p DLP56 White', N'Native 720p resolution, 1700 ANSI lumens, 2500:1 contrast ratio, up to 3000 hours lamp life', N'Computers', N'Projectors & Screens', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (626, N'WWI Projector 480p LCD12 White', N'High brightness, 1300 ANSI lumen light output, remote control', N'Computers', N'Projectors & Screens', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (627, N'WWI Projector 480p DLP12 White', N'850 typical lumens, 3,000:1 contrast ratio, supports 4:3 and 16:9 aspect ratios', N'Computers', N'Projectors & Screens', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (628, N'WWI Screen 125in M1611 White', N'16:9 aspect ratio-125in, 160 degree wide viewing angle', N'Computers', N'Projectors & Screens', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (629, N'WWI Screen 113in M1610 White', N'16:9 aspect ratios - 113in, dual wall and ceiling - perfect for home / business', N'Computers', N'Projectors & Screens', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (630, N'WWI Screen 106in M1609 White', N'16:9 aspect ratios - 106in, electric/motorized screen for home theater and commercial presentations', N'Computers', N'Projectors & Screens', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (631, N'WWI Screen 100in M1609 White', N'16:9 aspect ratios-100in, designed for wall or ceiling installation', N'Computers', N'Projectors & Screens', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (632, N'WWI Screen 85in E1010 White', N'1:1 aspect ratio-85in, enjoy fast, easy setup with the innovative, patent-pending design', N'Computers', N'Projectors & Screens', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (633, N'WWI Projector 1080p LCD86 Silver', N'1080p high definition projector, 1200 ANSI Lumens, 14,000:1 contrast ratio, 2 HDMI inputs', N'Computers', N'Projectors & Screens', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (634, N'WWI Projector 1080p DLP86 Silver', N'1920 x 1080p pixel resolution, HDTV 1080p native resolution, 8000:1 contrast ratio', N'Computers', N'Projectors & Screens', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (635, N'WWI Projector 720p LCD56 Silver', N'720p high definition performance with 10,000:1 contrast ratio', N'Computers', N'Projectors & Screens', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (636, N'WWI Projector 720p DLP56 Silver', N'Native 720p resolution, 1700 ANSI lumens, 2500:1 contrast ratio, up to 3000 hours lamp life', N'Computers', N'Projectors & Screens', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (637, N'WWI Projector 480p LCD12 Silver', N'High brightness, 1300 ANSI lumen light output, remote control', N'Computers', N'Projectors & Screens', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (638, N'WWI Projector 480p DLP12 Silver', N'850 typical lumens, 3,000:1 contrast ratio, supports 4:3 and 16:9 aspect ratios', N'Computers', N'Projectors & Screens', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (639, N'WWI Screen 125in M1611 Silver', N'16:9 aspect ratio-125in, 160 degree wide viewing angle', N'Computers', N'Projectors & Screens', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (640, N'WWI Screen 113in M1610 Silver', N'16:9 aspect ratio-113in, dual wall and ceiling - perfect for home / business', N'Computers', N'Projectors & Screens', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (641, N'WWI Screen 106in M1609 Silver', N'16:9 aspect ratio-106in, electric/motorized screen for home theater and commercial presentations', N'Computers', N'Projectors & Screens', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (642, N'Proseware Photo Ink Jet Printer M100 Black', N'Print speeds up to 26ppm, 6.4 x 11.4 x 17.2 inches, 12.8 pounds', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (643, N'Proseware Ink Jet All in one M300 Black', N'17.2 x 5.5 x 8.1 inches, 8.2 pounds, Ink Jet  all in one,  Large 80-sheet input tray', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (644, N'Proseware Laser Jet Printer E100 Black', N'19.4 x 17.1 x 8.9 inches, 34 pounds, various security features', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (645, N'Proseware Laser Jet Color Printer X300 Black', N'16.1 x 18.1 x 9.3 inches, 23.5 pounds, LaserJet', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (646, N'Proseware Laser Jet All in one X300 Black', N'17.5 x 13.1 x 6.1 inches, operate your printer within seconds after power-on with quick start', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (647, N'Proseware Fax phone E100 Black', N'14.2 x 6.7 x 14.5 inches, perfect for home or office use.', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (648, N'Proseware Fax Machine E100 Black', N'14.8 x 15.4 x 7.1 inches, 1 Wide 3.3\” color LCD', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (649, N'Proseware Laser Fax Printer E100 Black', N'6.4 x 11.4 x 17.1 inches, offering high-quality and fast output', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (650, N'Proseware Ink Jet Fax Machine E100 Black', N'17.7 x 14.5 x 6.9 inches, Inkjet Fax Machine', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (651, N'Proseware Mobile Receipt and Document Scanner M200 Black', N'13.7 x 8.8 x 7.6 inches,  mobile receipt and document scanner', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (652, N'Proseware Scan Jet Digital Flat Bed Scanner M300 Black', N'7.2 x 18 x 15.1 inches, Scan Jet Digital Flat Bed Scanner', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (653, N'Proseware All-In-One Photo Printer M200 Black', N'14.5 x 17.7 x 5.7 inches, affordable, high-performance printer for professional printing at home or office', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (654, N'Proseware Ink Jet Wireless All-In-One Printer M400 Black', N'17.4 x 10 x 5.6 inches, Ink jet printer delivers outstanding photo prints and text quality', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (655, N'Proseware Ink Jet Instant PDF Sheet-Fed Scanner M300 Black', N'20 x 11.9 x 15.8 inches, robust and affordable scanner', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (656, N'Proseware Desk Jet All-in-One Printer, Scanner, Copier M350 Black', N'8.2 x 17.8 x 16 inches, compact 3-in-1 color inkjet printer that prints, scans, and copies', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (657, N'Proseware Duplex Scanner M200 Black', N'8.2 x 17.8 x 16 inches, duplex scans  ', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (658, N'Proseware High Speed Laser M2000 Black', N'22.3 x 13.2 x 21 inches, 30 pounds, high speed Laser Fax', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (659, N'Proseware Laser Fax Printer M250 Black', N'19.9 x 9.6 x 10.7 inches, 10.8 pounds, Laser fax printer', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (660, N'Proseware Color Ink Jet Fax, Copier, Phone M250 Black', N'17 x 11.7 x 6.1 inches, 18 pounds, color Inkjet Fax, Copier, Phone', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (661, N'Proseware Color Inkjet Fax with 5.8 GHz Cordless Handset X250 Black', N'21.5 x 21.2 x 12.5 inches, 29 pounds, Fax - color Inkjet Fax with 5.8 GHz cordless handset', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (662, N'Proseware Slim-Design Fax Machine with Answering System X180 Black', N'22.5 x 15.6 x 9.6 inches, 15 pounds, flatbed scanner', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (663, N'Proseware High-Performance Business-Class Laser Fax X200 Black', N'17.7 x 13.9 x 6.7 inches. 12.8 pounds, high-Performance business-class Laser Fax', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (664, N'Proseware Professional Quality Plain-Paper Fax and Copier X100 Black', N'Print, copy, with Ethernet, 2.4-in LCD color graphics display, lab quality borderless printing up to 8.5 x 11 in', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (665, N'Proseware Photo Inkjet Printer E290 Black', N'6.7 x 8.2 x 17.5 inches, robust and versatile inkjet printer ideal for home office use', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (666, N'Proseware Office Jet All-in-One Printer M500 Black', N'13.6 x 22.1 x 20.7 inches, CD with software, set-up poster, power cord', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (667, N'Proseware Office Jet Wireless All-in-One Inkjet Printer M600 Black', N'17.2 x 5.5 x 8.1 inches, 8.4 pounds, office jet wireless all-in-one Ink jet Printer', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (668, N'Proseware Photo smart All-in-One Printer M380 Black', N'9.5 x 17.4 x 17.7 inches, 25.4 pounds, All-In-One device offers color printing, copying, faxing, and scanning, outstanding print quality for photos and documents', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (669, N'Proseware Wireless Photo All-in-One Printer M390 Black', N'11 x 13 x 13 inches, 12.6 pounds, border free photos in popular sizes', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (670, N'Proseware 23ppm Laser Printer with Wireless and Wired Network Interfaces M680 Black', N'17.1 x 8.5 x 15.8 inches, 15.4 pounds, high-performance all-in-one color ink jet printer that prints, copies, scans, and faxes. Prints at speeds of up to 23ppm', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (671, N'Proseware Photo Inkjet Printer M100 Grey', N'Print speeds up to 26ppm, 6.4 x 11.4 x 17.2 inches, 12.8 pounds', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (672, N'Proseware Ink Jet All in one M300 Grey', N'17.2 x 5.5 x 8.1 inches, 8.2 pounds, Ink Jet  all in one,  large 80-sheet input tray', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (673, N'Proseware Laser Jet Printer E100 Grey', N'19.4 x 17.1 x 8.9 inches, 34 pounds, various security features', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (674, N'Proseware Laser Jet Color Printer X300 Grey', N'16.1 x 18.1 x 9.3 inches, 23.5 pounds, LaserJet', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (675, N'Proseware Laser Jet All in one X300 Grey', N'17.5 x 13.1 x 6.1 inches, operate your printer within seconds after power-on with quick start', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (676, N'Proseware Fax phone E100 Grey', N'14.2 x 6.7 x 14.5 inches, perfect for home or office use', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (677, N'Proseware Fax Machine E100 Grey', N'14.8 x 15.4 x 7.1 inches, 1 Wide 3.3\” color LCD', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (678, N'Proseware Laser Fax Printer E100 Grey', N'6.4 x 11.4 x 17.1 inches, offering high-quality and fast output', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (679, N'Proseware Ink Jet Fax Machine E100 Grey', N'17.7 x 14.5 x 6.9 inches, Ink jet Fax machine', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (680, N'Proseware Mobile Receipt and Document Scanner M200 Grey', N'13.7 x 8.8 x 7.6 inches, mobile receipt and document scanner', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (681, N'Proseware Scan Jet Digital Flat Bed Scanner M300 Grey', N'7.2 x 18 x 15.1 inches, Scan Jet Digital Flat Bed scanner', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (682, N'Proseware All-In-One Photo Printer M200 Grey', N'14.5 x 17.7 x 5.7 inches, affordable, high-performance printer for professional printing at home or office', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (683, N'Proseware Ink Jet Wireless All-In-One Printer M400 Grey', N'17.4 x 10 x 5.6 inches, Ink jet printer delivers outstanding photo prints and text quality', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (684, N'Proseware Ink Jet Instant PDF Sheet-Fed Scanner M300 Grey', N'20 x 11.9 x 15.8 inches, robust and affordable scanner', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (685, N'Proseware Desk Jet All-in-One Printer, Scanner, Copier M350 Grey', N'8.2 x 17.8 x 16 inches, compact 3-in-1 color ink jet printer that prints, scans, and copies', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (686, N'Proseware Duplex Scanner M200 Grey', N'8.2 x 17.8 x 16 inches, duplex scans  ', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (687, N'Proseware High Speed Laser Fax M2000 Grey', N'22.3 x 13.2 x 21 inches, 30 pounds, high Speed Laser Fax', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (688, N'Proseware Laser Fax Printer M250 Grey', N'19.9 x 9.6 x 10.7 inches, 10.8 pounds, Laser fax printer', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (689, N'Proseware Color Ink Jet Fax, Copier, Phone M250 Grey', N'17 x 11.7 x 6.1 inches, 18 pounds, color Ink jet Fax, Copier, Phone', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (690, N'Proseware Color Ink Jet Fax with 5.8 GHz Cordless Handset X250 Grey', N'21.5 x 21.2 x 12.5 inches, 29 pounds, Fax - Color Inkjet Fax with 5.8 GHz cordless handset', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (691, N'Proseware Slim-Design Fax Machine with Answering System X180 Grey', N'22.5 x 15.6 x 9.6 inches, 15 pounds, flatbed scanner', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (692, N'Proseware High-Performance Business-Class Laser Fax X200 Grey', N'17.7 x 13.9 x 6.7 inches, 12.8 pounds, Fax high-performance business-class Laser Fax', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (693, N'Proseware Professional Quality Plain-Paper Fax and Copier X100 Grey', N'Print, Copy, with Ethernet, 2.4-in LCD color graphics display, lab quality borderless printing up to 8.5 x 11 in', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (694, N'Proseware Photo Ink Jet Printer E290 Grey', N'6.7 x 8.2 x 17.5 inches, robust and versatile inkjet printer ideal for home office use', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (695, N'Proseware Office Jet All-in-One Printer M500 Grey', N'13.6 x 22.1 x 20.7 inches, CD with software, set-up poster, power cord', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (696, N'Proseware Office Jet Wireless All-in-One Inkjet Printer M600 Grey', N'17.2 x 5.5 x 8.1 inches. 8.4 pounds, office jet wireless all-in-one Ink jet Printer', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (697, N'Proseware Photo Smart All-in-One Printer M380 Grey', N'9.5 x 17.4 x 17.7 inches, 25.4 pounds, All-In-One device offers color printing, copying, faxing, and scanning, outstanding print quality for photos and documents', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (698, N'Proseware Wireless Photo All-in-One Printer M390 Grey', N'11 x 13 x 13 inches, 12.6 pounds, border free photos in popular sizes', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (699, N'Proseware 23ppm Laser Printer with Wireless and Wired Network Interfaces M680 Grey', N'17.1 x 8.5 x 15.8 inches, 15.4 pounds, high-performance all-in-one color inkjet printer that prints, copies, scans, and faxes, prints at speeds of up to 23ppm', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (700, N'Proseware Photo Ink Jet Printer M100 White', N'Print speeds up to 26ppm, 6.4 x 11.4 x 17, 2 inches, 12.8 pounds', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (701, N'Proseware Ink Jet All in one M300 White', N'17.2 x 5.5 x 8.1 inches, 8.2 pounds, Ink Jet  All in one,  large 80-sheet input tray', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (702, N'Proseware Laser Jet Printer E100 White', N'19.4 x 17.1 x 8.9 inches, 34 pounds, various security features', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (703, N'Proseware Laser Jet Color Printer X300 White', N'16.1 x 18.1 x 9.3 inches, 23.5 pounds, LaserJet', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (704, N'Proseware Laser Jet All in one X300 White', N'17.5 x 13.1 x 6.1 inches, operate your printer within seconds after power-on with quick start', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (705, N'Proseware Fax Phone E100 White', N'14.2 x 6.7 x 14.5 inches, perfect for home or office use', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (706, N'Proseware Fax Machine E100 White', N'14.8 x 15.4 x 7.1 inches, 1 Wide 3.3\” color LCD', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (707, N'Proseware Laser Fax Printer E100 White', N'6.4 x 11.4 x 17, 1 inches, offering high-quality and fast output', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (708, N'Proseware Ink Jet Fax Machine E100 White', N'17.7 x 14.5 x 6.9 inches, Ink jet Fax machine', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (709, N'Proseware Mobile Receipt and Document Scanner M200 White', N'13.7 x 8.8 x 7.6 inches, mobile receipt and document scanner', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (710, N'Proseware Scan Jet Digital Flat Bed Scanner M300 White', N'7.2 x 18 x 15.1 inches, scan Jet Digital Flat Bed Scanner', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (711, N'Proseware All-In-One Photo Printer M200 White', N'14.5 x 17.7 x 5.7 inches, affordable, high-performance printer for professional printing at home or office', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (712, N'Proseware Ink Jet Wireless All-In-One Printer M400 White', N'17.4 x 10 x 5.6 inches, Ink jet printer delivers outstanding photo prints and text quality', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (713, N'Proseware Ink Jet Instant PDF Sheet-Fed Scanner M300 White', N'20 x 11.9 x 15.8 inches, robust and affordable  scanner', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (714, N'Proseware Desk Jet All-in-One Printer, Scanner, Copier M350 White', N'8.2 x 17.8 x 16 inches, compact 3-in-1 color inkjet printer that prints, scans, and copies', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (715, N'Proseware Duplex Scanner M200 White', N'8.2 x 17.8 x 16 inches, duplex scans  ', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (716, N'Proseware High Speed Laser M2000 White', N'22.3 x 13.2 x 21 inches, 30 pounds, high Speed Laser Fax', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (717, N'Proseware Laser Fax Printer M250 White', N'19.9 x 9.6 x 10.7 inches,10.8 pounds, Laser fax printer', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (718, N'Proseware Color Ink jet Fax, Copier, Phone M250 White', N'17 x 11.7 x 6.1 inches, 18 pounds, color Inkjet Fax, Copier, Phone', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (719, N'Proseware Color Ink Jet Fax with 5.8 GHz Cordless Handset X250 White', N'21.5 x 21.2 x 12.5 inches, 29 pounds, Fax - Color Inkjet Fax with 5.8 GHz Cordless Handset', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (720, N'Proseware Slim-Design Fax Machine with Answering System X180 White', N'22.5 x 15.6 x 9.6 inches, 15 pounds, Flatbed scanner', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (721, N'Proseware High-Performance Business-Class Laser Fax X200 White', N'17.7 x 13.9 x 6.7 inches, 12.8 pounds, Fax high-performance Business-Class Laser Fax', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (722, N'Proseware Professional Quality Plain-Paper Fax and Copier X100 White', N'Print, Copy, with Ethernet, 2.4-in LCD color graphics display, lab quality borderless printing up to 8.5 x 11 in', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (723, N'Proseware Photo Ink jet Printer E290 White', N'6.7 x 8.2 x 17.5 inches, robust and versatile inkjet printer ideal for home office use', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (724, N'Proseware Office Jet All-in-One Printer M500 White', N'13.6 x 22.1 x 20.7 inches, CD with software, set-up poster, power cord', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (725, N'Proseware Office Jet Wireless All-in-One Inkjet Printer M600 White', N'17.2 x 5.5 x 8.1 inches, 8.4 pounds, office jet wireless All-in-One Inkjet Printer', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (726, N'Proseware Photo Smart All-in-One Printer M380 White', N'9.5 x 17.4 x 17.7 inches, 25.4 pounds, All-In-One device offers color printing, copying, faxing, and scanning, outstanding print quality for photos and documents', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (727, N'Proseware Wireless Photo All-in-One Printer M390 White', N'11 x 13 x 13 inches, 12.6 pounds, border free photos in popular sizes', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (728, N'Proseware 23ppm Laser Printer with Wireless and Wired Network Interfaces M680 White', N'17.1 x 8.5 x 15.8 inches, 15.4 pounds, high-performance all-in-one color inkjet printer that prints, copies, scans, and faxes, prints at speeds of up to 23ppm', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (729, N'Proseware Scan Jet Digital Flat Bed Scanner M300 Green', N'12 x 16 x 8 inches, 17 pounds scan Jet Digital Flat Bed Scanner', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (730, N'Proseware All-In-One Photo Printer M200 Green', N'16 x 19 x 13 inches, 14 pounds, All-In-One Photo Printer', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (731, N'Proseware Ink Jet Wireless All-In-One Printer M400 Green', N'18.1 x 17.9 x 11.2 inches, 14.4 kbps fax modem with 200-sheet paper capacity, 20-page automatic document feeder, and 512 KB memory holds up to 25 pages', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (732, N'Proseware Ink Jet Instant PDF Sheet-Fed Scanner M300 Green', N'20 x 18 x 14.2 inches, Ink Jet Instant PDF Sheet-Fed Scanner', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (733, N'Proseware Desk Jet All-in-One Printer, Scanner, Copier M350 Green', N'15.2 x 15.7 x 8.7 inches, 18.4 pounds, Desk jet All-in-One Printer, Scanner, Copier', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (734, N'Proseware Duplex Scanner M200 Green', N'11 x 15 x 6 inches. 10 pounds, duplex scanner', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (735, N'Proseware High Speed Laser M2000 Green', N'Copy and fax capabilities, high speed Laser Fax', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (736, N'Proseware Laser Fax Printer M250 Green', N'10.6 x 15.7 x 6.8 inches, 12.4 pounds, technology for sending clear', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (737, N'Proseware Color Ink Jet Fax, Copier, Phone M250 Green', N'9.4 x 5.5 x 13 inches, 6.9 pounds, 15 seconds per page transmission time', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (738, N'Proseware Color Ink Jet Fax with 5.8 GHz Cordless Handset X250 Green', N'22 x 20.3 x 18.1 inches, Fax - Color Inkjet Fax with 5.8 GHz cordless handset', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (739, N'Proseware Slim-Design Fax Machine with Answering System X180 Green', N'9.4 x 11.8 x 5.4 inches, 6.4 pounds, Fax machine and telephone combined', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (740, N'Proseware High-Performance Business-Class Laser Fax X200 Green', N'Fax high-Performance business-class Laser Fax, copy function can make up to 99 copies', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (741, N'Proseware Professional Quality Plain-Paper Fax and Copier X100 Green', N'9.1 x 14 x 4.6 inches, 5.5 pounds, professional quality plain-paper Fax and Copier', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (742, N'Proseware Photo Inkjet Printer E290 Green', N'15 pounds, photo Inkjet Printer', N'Computers', N'Printers, Scanners & Fax', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (743, N'Contoso Rechargeable Battery E100 Black', N'Rechargeable Battery', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (744, N'Contoso Dual USB Power Adapter - power adapter E300 Black', N'Dual USB power adapter - power adapter', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (745, N'Contoso Car power adapter M90 Black', N'Attach your phone to the cigarette lighter in your car, providing it the power to be used and recharged', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (746, N'Contoso Notebook Peripheral Kit M69 Black', N'It acts as a convenient carrier for an included hub, can also be used as a non-scratch screen wipe', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (747, N'Contoso Mouse Lock Bundle E200 Black', N'Nearly 1,000 notebook computers are stolen everyday - protect your notebook computer and its valuable data with this affordable security product', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (748, N'Contoso Education Supplies Bundle E200 Black', N'al is to enhance your lifestyle by offering innovative and quality products, as well as continuing to listen and respond to its customers', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (749, N'Contoso Laptop Starter Bundle M200 Black', N'Get the four most popular accessories in one easy bundle with the Laptop 4-in-1 starter bundle This kit is the perfect complement to your laptop ensuring you have the tools you need', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (750, N'Contoso Education Essentials Bundle M300 Black', N'Education messenger essentials bundle - notebook accessories bundle', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (751, N'Contoso Desktop Alternative Bundle E200 Black', N'Desktop alternative bundle', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (752, N'Contoso Power Inverter - DC to AC power inverter E900 Black', N'Notebook essentials bundle - notebook accessories bundle', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (753, N'Contoso Smart Battery M901 Black', N'Smart battery - memory backup battery', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (754, N'Contoso Laptop Cooling Hub notebook fan with 4 ports USB hub E80 Black', N'Laptop cooling hub notebook fan with 4 ports USB hub', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (755, N'Contoso Home/Office Laptop Power Adapter E300 Black', N'Home/Office Laptop power adapter', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (756, N'Contoso USB 2.0 Dock Station docking station M800 Black', N'USB 2.0 dock station docking station', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (757, N'Contoso Enhanced Capacity Battery M800 Black', N'Home office enhanced capacity battery', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (758, N'Contoso Connectivity Starter Kit Smart Buy M680 Black', N'Connectivity starter kit smart buy', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (759, N'Contoso 90W AC/DC Power Adapter E300 Black', N'Enhanced capacity battery adapter', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (760, N'Contoso Reserve Pen - Tablet Pen E200 Black', N'Reserve pen - tablet pen, connectivity technology, wireless', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (761, N'Contoso USB Data Link-direct connect adapter E600 Black', N'USB data Link - direct connect adapter', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (762, N'Contoso Primary Extended Capacity Battery Pack - notebook battery X100 Black', N'Primary extended capacity battery pack - notebook battery', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (763, N'Contoso Digital camera accessory kit M200 Black', N'Digital camera accessory kit', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (764, N'Contoso Leather Case - case for digital photo camera X20 Black', N'Leather Case - case for digital photo camera', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (765, N'Contoso Lens cap E80 Black', N'Lens cap black', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (766, N'Contoso Battery charger - bike E200 Black', N'Primary extended capacity battery pack -for bike', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (767, N'Contoso USB Optical Mouse E200 Black', N'USB optical mouse', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (768, N'Contoso ADSL Modem Splitter/Filter X 1 E100 Black', N'ADSL modem splitter/filter X 1', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (769, N'Contoso ADSL Modem Splitter/Filter X 2 E200 Black', N'ADSL modem splitter/filter X 2', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (770, N'Contoso ADSL Modem Splitter/Filter X 3 E300 Black', N'ADSL modem splitter/filter X 3', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (771, N'Contoso USB Wave Multi-media Keyboard E280 Black', N'USB wave multimedia keyboard', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (772, N'Contoso Cables To  USB 2.0 Hard Drive Enclosure E920 Black', N'Cables to  USB 2.0 hard drive enclosure', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (773, N'Contoso USB Wave Multi-media Keyboard E280 Blue', N'USB wave multimedia keyboard', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (774, N'Contoso USB Optical Mouse E200 Blue', N'USB mouse', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (775, N'Contoso Smart Battery M901 Blue', N'Smart battery - memory backup battery', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (776, N'Contoso Digital Camera Accessory kit M200 Blue', N'Digital camera accessory kit', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (777, N'Contoso Reserve Pen -Tablet Pen E200 Blue', N'Reserve pen - tablet pen', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (778, N'Contoso Rechargeable Battery E100 White', N'Rechargeable battery', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (779, N'Contoso Dual USB Power Adapter - power adapter E300 White', N'Dual USB power adapter - power adapter', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (780, N'Contoso Car power adapter M90 White', N'Attach your phone to the cigarette lighter in your car, providing it the power to be used and recharged.', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (781, N'Contoso Notebook Peripheral Kit M69 White', N'It acts as a convenient carrier for an included hub, can also be used as a non-scratch screen wipe', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (782, N'Contoso Mouse Lock Bundle E200 White', N'Nearly 1,000 notebook computers are stolen everyday - protect your notebook computer and its valuable data with this affordable security product', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (783, N'Contoso Education Supplies Bundle E200 White', N'al is to enhance your lifestyle by offering innovative and quality products, as well as continuing to listen and respond to its customers', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (784, N'Contoso Laptop Starter Bundle M200 White', N'Get the four most popular accessories in one easy bundle with the Laptop 4-in-1 starter bundle This kit is the perfect complement to your laptop ensuring you have the tools you need', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (785, N'Contoso Education Essentials Bundle M300 White', N'Education messenger essentials Bundle - notebook accessories bundle', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (786, N'Contoso Desktop Alternative Bundle E200 White', N'Desktop alternative bundle', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (787, N'Contoso Power Inverter - DC to AC power inverter E900 White', N'Notebook essentials bundle - notebook accessories bundle', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (788, N'Contoso Smart Battery M901 White', N'Smart battery - memory backup battery', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (789, N'Contoso Laptop Cooling Hub notebook fan with 4 ports USB hub E80 White', N'Laptop cooling hub notebook fan with 4 ports USB hub', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (790, N'Contoso Home/Office Laptop Power Adapter E300 White', N'Home/office laptop power adapter', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (791, N'Contoso USB 2.0 Dock Station docking station M800 White', N'USB 2.0 dock station docking station', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (792, N'Contoso Enhanced Capacity Battery M800 White', N'Home office enhanced capacity battery', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1, N'Contoso 512MB MP3 Player E51 Silver', N'512MB USB driver plays MP3 and WMA', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2, N'Contoso 512MB MP3 Player E51 Blue', N'512MB USB driver plays MP3 and WMA', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (3, N'Contoso 1G MP3 Player E100 White', N'1GB flash memory and USB driver plays MP3 and WMA', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (4, N'Contoso 2G MP3 Player E200 Silver', N'2GB flash memory, LCD display, plays MP3 and WMA', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (5, N'Contoso 2G MP3 Player E200 Red', N'2GB flash memory, LCD display, plays MP3 and WMA', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (6, N'Contoso 2G MP3 Player E200 Black', N'2GB flash memory, LCD display, plays MP3 and WMA', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (7, N'Contoso 2G MP3 Player E200 Blue', N'2GB flash memory, LCD display, plays MP3 and WMA', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (8, N'Contoso 4G MP3 Player E400 Silver', N'4GB flash memory and FM Radio, LCD Display with 7-Color Backlight, plays MP3 and WMA', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (9, N'Contoso 4G MP3 Player E400 Black', N'4GB flash memory and FM Radio, LCD Display with 7-Color Backlight, plays MP3 and WMA', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (10, N'Contoso 4G MP3 Player E400 Green', N'4GB flash memory and FM Radio, LCD Display with 7-Color Backlight, plays MP3 and WMA', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (11, N'Contoso 4G MP3 Player E400 Orange', N'4GB flash memory and FM Radio, LCD Display with 7-Color Backlight, plays MP3 and WMA', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (12, N'Contoso 4GB Flash MP3 Player E401 Blue', N'1.8'''' color LCD, play MP3, WMA and Video MTV, and share JPG', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (13, N'Contoso 4GB Flash MP3 Player E401 Black', N'1.8'''' color LCD, play MP3, WMA and Video MTV, and share JPG', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (14, N'Contoso 4GB Flash MP3 Player E401 Silver', N'1.8'''' color LCD, play MP3, WMA and Video MTV, and share JPG', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (15, N'Contoso 4GB Flash MP3 Player E401 White', N'1.8'''' color LCD, play MP3, WMA and Video MTV, and share JPG', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (16, N'Contoso 8GB Super-Slim MP3/Video Player M800 White', N'2\” color LCD, Touchpad, Plays music, video, photos and text', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (17, N'Contoso 8GB Super-Slim MP3/Video Player M800 Red', N'2\” color LCD, Touchpad, Plays music, video, photos and text', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (18, N'Contoso 8GB Super-Slim MP3/Video Player M800 Green', N'2\” color LCD, Touchpad, Plays music, video, photos and text', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (19, N'Contoso 8GB Super-Slim MP3/Video Player M800 Pink', N'2\” color LCD, Touchpad, Plays music, video, photos and text', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (20, N'Contoso 8GB MP3 Player new model M820 Black', N'2'''' LCD with blue-white LED, 320x240-pixel, plays music, video, photos and text, display JPEG, BMP, GIF, TIFF and PNG  ', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (21, N'Contoso 8GB MP3 Player new model M820 Blue', N'2'''' LCD with blue-white LED, 320x240-pixel, plays music, video, photos and text, display JPEG, BMP, GIF, TIFF and PNG  ', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (22, N'Contoso 8GB MP3 Player new model M820 Yellow', N'2'''' LCD with blue-white LED, 320x240-pixel, plays music, video, photos and text, display JPEG, BMP, GIF, TIFF and PNG  ', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (23, N'Contoso 8GB MP3 Player new model M820 White', N'2'''' LCD with blue-white LED, 320x240-pixel, plays music, video, photos and text, display JPEG, BMP, GIF, TIFF and PNG  ', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (24, N'Contoso 16GB Mp5 Player M1600 Blue', N'3\” 16:9 TFT Touch screen, 16GB flash memory, plays AVI/RM/RMVB/FLV', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (25, N'Contoso 16GB Mp5 Player M1600 Black', N'3\” 16:9 TFT Touch screen, 16GB flash memory, plays AVI/RM/RMVB/FLV', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (26, N'Contoso 16GB Mp5 Player M1600 Green', N'3\” 16:9 TFT Touch screen, 16GB flash memory, plays AVI/RM/RMVB/FLV', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (27, N'Contoso 16GB Mp5 Player M1600 White', N'3\” 16:9 TFT Touch screen, 16GB flash memory, plays AVI/RM/RMVB/FLV', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (28, N'Contoso 16GB Mp5 Player M1600 Red', N'3\” 16:9 TFT Touch screen, 16GB flash memory, plays AVI/RM/RMVB/FLV', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (29, N'Contoso 32GB Video MP3 Player M3200 White', N'4.3'''' Touch screen, 32GB flash memory, beyond 30 hours battery life', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (30, N'Contoso 32GB Video MP3 Player M3200 Red', N'4.3'''' Touch screen, 32GB flash memory, beyond 30 hours battery life', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (31, N'Contoso 32GB Video MP3 Player M3200 Orange', N'4.3'''' Touch screen, 32GB flash memory, beyond 30 hours battery life', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (32, N'Contoso 32GB Video MP3 Player M3200 Pink', N'4.3'''' Touch screen, 32GB flash memory, beyond 30 hours battery life', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (33, N'Contoso 32GB Video MP3 Player M3200 Black', N'4.3'''' Touch screen, 32GB flash memory, beyond 30 hours battery life', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (34, N'Contoso 4GB Portable MP3 Player M450 Black', N'4GB built in memory, USB driver and earphone, play MP3, WMA', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (35, N'Contoso 4GB Portable MP3 Player M450 White', N'4GB built in memory, USB driver and earphone, play MP3, WMA', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (36, N'Contoso 4GB Portable MP3 Player M450 Yellow', N'4GB built in memory, USB driver and earphone, play MP3, WMA', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (37, N'Contoso 8GB Clock & Radio MP3 Player X850 Silver', N'2.6'''' Touch screen, 8GB flash memory, clock and radio, plays AVI/RM/RMVB', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (38, N'Contoso 8GB Clock & Radio MP3 Player X850 Black', N'2.6'''' Touch screen, 8GB flash memory, clock and radio, plays AVI/RM/RMVB', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (39, N'Contoso 8GB Clock & Radio MP3 Player X850 Green', N'2.6'''' Touch screen, 8GB flash memory, clock and radio, plays AVI/RM/RMVB', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (40, N'Contoso 8GB Clock & Radio MP3 Player X850 Blue', N'2.6'''' Touch screen, 8GB flash memory, clock and radio, plays AVI/RM/RMVB', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (41, N'Contoso 16GB New Generation MP5 Player M1650 Silver', N'2.4'''' LCD Touch screen, 8GB flash memory, plays music, video, photos and text, share JPEG, BMP, GIF, TIFF', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (42, N'Contoso 16GB New Generation MP5 Player M1650 White', N'2.4'''' LCD Touch screen, 8GB flash memory, plays music, video, photos and text, share JPEG, BMP, GIF, TIFF', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (43, N'Contoso 16GB New Generation MP5 Player M1650 Black', N'2.4'''' LCD Touch screen, 8GB flash memory, plays music, video, photos and text, share JPEG, BMP, GIF, TIFF', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (44, N'Contoso 16GB New Generation MP5 Player M1650 blue', N'2.4'''' LCD Touch screen, 8GB flash memory, plays music, video, photos and text, share JPEG, BMP, GIF, TIFF', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (45, N'Contoso 16GB New Generation MP5 Player M1650 Pink', N'2.4'''' LCD Touch screen, 8GB flash memory, plays music, video, photos and text, share JPEG, BMP, GIF, TIFF', N'Audio', N'MP4&MP3', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (46, N'WWI 1GB Pulse Smart pen E50 White', N'Record and link audio to be written, listen to recordings, share notes and recording with computer', N'Audio', N'Recording Pen', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (47, N'WWI 1GBPulse Smart pen E50 Black', N'Record and link audio to be written, listen to recordings, share notes and recording with computer', N'Audio', N'Recording Pen', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (48, N'WWI 1GB Pulse Smart pen E50 Silver', N'Record and link audio to be written, listen to recordings, share notes and recording with computer', N'Audio', N'Recording Pen', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (49, N'WWI 2GB Pulse Smart pen M100 White', N'Record and link audio to be written, listen to recordings, share notes and recording with computer', N'Audio', N'Recording Pen', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (50, N'WWI 2GB Pulse Smart pen M100 Black', N'Record and link audio to be written, listen to recordings, share notes and recording with computer', N'Audio', N'Recording Pen', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (51, N'WWI 2GB Pulse Smart pen M100 Blue', N'Record and link audio to be written, listen to recordings, share notes and recording with computer', N'Audio', N'Recording Pen', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (52, N'WWI 2GB Pulse Smart pen M100 Silver', N'Record and link audio to be written, listen to recordings, share notes and recording with computer', N'Audio', N'Recording Pen', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (53, N'WWI 4GB Video Recording Pen X200 Black', N'640 x 480 VGA audio video pen, business portable recorder, about 3 hours recording', N'Audio', N'Recording Pen', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (54, N'WWI 4GB Video Recording Pen X200 Red', N'640 x 480 VGA audio video pen, business portable recorder, about 3 hours recording', N'Audio', N'Recording Pen', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (55, N'WWI 4GB Video Recording Pen X200 Pink', N'640 x 480 VGA audio video pen, business portable recorder, about 3 hours recording', N'Audio', N'Recording Pen', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (56, N'WWI 4GB Video Recording Pen X200 Yellow', N'640 x 480 VGA audio video pen, business portable recorder, about 3 hours recording', N'Audio', N'Recording Pen', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (57, N'WWI 1GB Digital Voice Recorder Pen E100 Black', N'Voice recorder, MP3 player, USB flash drive, 64 hours recording', N'Audio', N'Recording Pen', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (58, N'WWI 1GB Digital Voice Recorder Pen E100 Red', N'Voice recorder, MP3 player, USB flash drive, 64 hours recording', N'Audio', N'Recording Pen', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (59, N'WWI 1GB Digital Voice Recorder Pen E100 Pink', N'Voice recorder, MP3 player, USB flash drive, 64 hours recording', N'Audio', N'Recording Pen', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (60, N'WWI 1GB Digital Voice Recorder Pen E100 White', N'Voice recorder, MP3 player, USB flash drive, 64 hours recording', N'Audio', N'Recording Pen', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (61, N'WWI 2GB Spy Video Recorder Pen M300 Black', N'2GB flash memory, USB driver, continuous recording until memory full, as spy cameras, hidden cameras', N'Audio', N'Recording Pen', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (62, N'WWI 2GB Spy Video Recorder Pen M300 White', N'2GB flash memory, USB driver, continuous recording until memory full, as spy cameras, hidden cameras', N'Audio', N'Recording Pen', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (63, N'WWI 2GB Spy Video Recorder Pen M300 Blue', N'2GB flash memory, USB driver, continuous recording until memory full, as spy cameras, hidden cameras', N'Audio', N'Recording Pen', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (64, N'WWI 2GB Spy Video Recorder Pen M300 Silver', N'2GB flash memory, USB driver, continuous recording until memory full, as spy cameras, hidden cameras', N'Audio', N'Recording Pen', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (65, N'WWI 2GB Spy Video Recorder Pen M300 Purple', N'2GB flash memory, USB driver, continuous recording until memory full, as spy cameras, hidden cameras', N'Audio', N'Recording Pen', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (66, N'NT Bluetooth Stereo Headphones E52 Blue', N'Seamlessly integrates wireless mobile music and calls', N'Audio', N'Bluetooth Headphones', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (67, N'NT Bluetooth Stereo Headphones E52 Black', N'Seamlessly integrates wireless mobile music and calls', N'Audio', N'Bluetooth Headphones', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (68, N'NT Bluetooth Stereo Headphones E52 Yellow', N'Seamlessly integrates wireless mobile music and calls', N'Audio', N'Bluetooth Headphones', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (69, N'NT Bluetooth Stereo Headphones E52 Pink', N'Seamlessly integrates wireless mobile music and calls', N'Audio', N'Bluetooth Headphones', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (70, N'NT Wireless Bluetooth Stereo Headphones E102 Silver', N'Wireless range beyond 10 meters, MP3-quality stereo sound', N'Audio', N'Bluetooth Headphones', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (71, N'NT Wireless Bluetooth Stereo Headphones E102 Black', N'Wireless range beyond 10 meters, MP3-quality stereo sound', N'Audio', N'Bluetooth Headphones', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (72, N'NT Wireless Bluetooth Stereo Headphones E102 Blue', N'Wireless range beyond 10 meters, MP3-quality stereo sound', N'Audio', N'Bluetooth Headphones', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (73, N'NT Wireless Bluetooth Stereo Headphones E102 White', N'Wireless range beyond 10 meters, MP3-quality stereo sound', N'Audio', N'Bluetooth Headphones', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (74, N'NT Bluetooth Active Headphones E202 Black', N'Wireless range up10 meters, beyond 7-hour talking time.', N'Audio', N'Bluetooth Headphones', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (75, N'NT Bluetooth Active Headphones E202 White', N'Wireless range up10 meters, beyond 7-hour talking time.', N'Audio', N'Bluetooth Headphones', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (76, N'NT Bluetooth Active Headphones E202 Red', N'Wireless range up10 meters, beyond 7-hour talking time.', N'Audio', N'Bluetooth Headphones', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (77, N'NT Bluetooth Active Headphones E202 Silver', N'Wireless range up10 meters, beyond 7-hour talking time.', N'Audio', N'Bluetooth Headphones', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (78, N'NT Wireless Bluetooth Stereo Headphones E302 Silver', N'Built-In Microphone, integrated headphone button to play/pause', N'Audio', N'Bluetooth Headphones', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (79, N'NT Wireless Bluetooth Stereo Headphones E302 White', N'Built-In Microphone, integrated headphone button to play/pause', N'Audio', N'Bluetooth Headphones', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (80, N'NT Wireless Bluetooth Stereo Headphones E302 Yellow', N'Built-In Microphone, integrated headphone button to play/pause', N'Audio', N'Bluetooth Headphones', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (81, N'NT Wireless Bluetooth Stereo Headphones E302 Black', N'Built-In Microphone, integrated headphone button to play/pause', N'Audio', N'Bluetooth Headphones', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (82, N'NT Wireless Bluetooth Stereo Headphones E302 Pink', N'Built-In Microphone, integrated headphone button to play/pause', N'Audio', N'Bluetooth Headphones', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (83, N'NT Wireless Bluetooth Stereo Headphones M402 Silver', N'Wireless range extends to 165 feet, beyond 8 hours per charge', N'Audio', N'Bluetooth Headphones', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (84, N'NT Wireless Bluetooth Stereo Headphones M402 Red', N'Wireless range extends to 165 feet, beyond 8 hours per charge', N'Audio', N'Bluetooth Headphones', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (85, N'NT Wireless Bluetooth Stereo Headphones M402 Green', N'Wireless range extends to 165 feet, beyond 8 hours per charge', N'Audio', N'Bluetooth Headphones', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (86, N'NT Wireless Bluetooth Stereo Headphones M402 Black', N'Wireless range extends to 165 feet, beyond 8 hours per charge', N'Audio', N'Bluetooth Headphones', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (87, N'NT Wireless Bluetooth Stereo Headphones M402 Purple', N'Wireless range extends to 165 feet, beyond 8 hours per charge', N'Audio', N'Bluetooth Headphones', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (88, N'NT Wireless Transmitter and Bluetooth Headphones M150 Black', N'Seamlessly switch between music and calls, integrated ouch sensitive play-answer-end and volume controls', N'Audio', N'Bluetooth Headphones', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (89, N'NT Wireless Transmitter and Bluetooth Headphones M150 Blue', N'Seamlessly switch between music and calls, integrated ouch sensitive play-answer-end and volume controls', N'Audio', N'Bluetooth Headphones', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (90, N'NT Wireless Transmitter and Bluetooth Headphones M150 Silver', N'Seamlessly switch between music and calls, integrated ouch sensitive play-answer-end and volume controls', N'Audio', N'Bluetooth Headphones', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (91, N'NT Wireless Transmitter and Bluetooth Headphones M150 Green', N'Seamlessly switch between music and calls, integrated ouch sensitive play-answer-end and volume controls', N'Audio', N'Bluetooth Headphones', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (92, N'NT Wireless Transmitter and Bluetooth Headphones M150 Red', N'Seamlessly switch between music and calls, integrated ouch sensitive play-answer-end and volume controls', N'Audio', N'Bluetooth Headphones', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (93, N'WWI Stereo Bluetooth Headphones E1000 Blue', N'Wireless headphones with 120 ft range, built-in microphone', N'Audio', N'Bluetooth Headphones', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (94, N'WWI Stereo Bluetooth Headphones E1000 Black', N'Wireless headphones with 120 ft range, built-in microphone', N'Audio', N'Bluetooth Headphones', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (95, N'WWI Stereo Bluetooth Headphones E1000 Silver', N'Wireless headphones with 120 ft range, built-in microphone', N'Audio', N'Bluetooth Headphones', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (96, N'WWI Stereo Bluetooth Headphones E1000 White', N'Wireless headphones with 120 ft range, built-in microphone', N'Audio', N'Bluetooth Headphones', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (97, N'WWI Stereo Bluetooth Headphones E1000 Green', N'Wireless headphones with 120 ft range, built-in microphone', N'Audio', N'Bluetooth Headphones', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (98, N'WWI Wireless Bluetooth Stereo Headphones M170 Silver', N'Wireless range beyond 10 meters, MP3-quality stereo sound', N'Audio', N'Bluetooth Headphones', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (99, N'WWI Wireless Bluetooth Stereo Headphones M170 Black', N'Wireless range beyond 10 meters, MP3-quality stereo sound', N'Audio', N'Bluetooth Headphones', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (100, N'WWI Wireless Bluetooth Stereo Headphones M170 White', N'Wireless range beyond 10 meters, MP3-quality stereo sound', N'Audio', N'Bluetooth Headphones', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (101, N'WWI Wireless Bluetooth Stereo Headphones M170 Pink', N'Wireless range beyond 10 meters, MP3-quality stereo sound', N'Audio', N'Bluetooth Headphones', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (102, N'WWI Wireless Bluetooth Stereo Headphones M270 Silver', N'Built-In Microphone, integrated headphone button to play/pause, MP3-quality stereo sound', N'Audio', N'Bluetooth Headphones', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (103, N'WWI Wireless Bluetooth Stereo Headphones M270 Black', N'Built-In Microphone, integrated headphone button to play/pause, MP3-quality stereo sound', N'Audio', N'Bluetooth Headphones', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (104, N'WWI Wireless Bluetooth Stereo Headphones M270 White', N'Built-In Microphone, integrated headphone button to play/pause, MP3-quality stereo sound', N'Audio', N'Bluetooth Headphones', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (105, N'WWI Wireless Bluetooth Stereo Headphones M270 Pink', N'Built-In Microphone, integrated headphone button to play/pause, MP3-quality stereo sound', N'Audio', N'Bluetooth Headphones', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (106, N'WWI Stereo Bluetooth Headphones New Generation M370 Black', N'Listening to music wirelessly with other Bluetooth audio devices, built-in microphone for phone call usage', N'Audio', N'Bluetooth Headphones', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (107, N'WWI Stereo Bluetooth Headphones New Generation M370 White', N'Listening to music wirelessly with other Bluetooth audio devices, built-in microphone for phone call usage', N'Audio', N'Bluetooth Headphones', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (108, N'WWI Stereo Bluetooth Headphones New Generation M370 Yellow', N'Listening to music wirelessly with other Bluetooth audio devices, built-in microphone for phone call usage', N'Audio', N'Bluetooth Headphones', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (109, N'WWI Stereo Bluetooth Headphones New Generation M370 Orange', N'Listening to music wirelessly with other Bluetooth audio devices, built-in microphone for phone call usage', N'Audio', N'Bluetooth Headphones', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (110, N'WWI Stereo Bluetooth Headphones New Generation M370 Blue', N'Listening to music wirelessly with other Bluetooth audio devices, built-in microphone for phone call usage', N'Audio', N'Bluetooth Headphones', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (111, N'WWI Wireless Transmitter and Bluetooth Headphones X250 Black', N'Seamlessly switch between music and calls, integrated ouch sensitive play-answer-end and volume controls', N'Audio', N'Bluetooth Headphones', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (112, N'WWI Wireless Transmitter and Bluetooth Headphones X250 Blue', N'Seamlessly switch between music and calls, integrated ouch sensitive play-answer-end and volume controls', N'Audio', N'Bluetooth Headphones', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (113, N'WWI Wireless Transmitter and Bluetooth Headphones X250 White', N'Seamlessly switch between music and calls, integrated ouch sensitive play-answer-end and volume controls', N'Audio', N'Bluetooth Headphones', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (114, N'WWI Wireless Transmitter and Bluetooth Headphones X250 Red', N'Seamlessly switch between music and calls, integrated ouch sensitive play-answer-end and volume controls', N'Audio', N'Bluetooth Headphones', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (115, N'WWI Wireless Transmitter and Bluetooth Headphones X250 Silver', N'Seamlessly switch between music and calls, integrated ouch sensitive play-answer-end and volume controls', N'Audio', N'Bluetooth Headphones', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (116, N'Adventure Works 20\” CRT TV E15 Silver', N'20'''' CRT television, built-in ATSC/NTSC tuner, receive digital and analog channels', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (117, N'Adventure Works 20\” CRT TV E15 Black', N'20'''' CRT television, built-in ATSC/NTSC tuner, receive digital and analog channels', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (118, N'Adventure Works 20\” CRT TV E15 White', N'20'''' CRT television, built-in ATSC/NTSC tuner, receive digital and analog channels', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (119, N'Adventure Works 13\” Color TV E25 Silver', N'13'''' Color TV, ATSC/QAM Tuner, 120 minute sleep timer', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (120, N'Adventure Works 13\” Color TV E25 Black', N'13'''' Color TV, ATSC/QAM Tuner, 120 minute sleep timer', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (121, N'Adventure Works 13\” Color TV E25 White', N'13'''' Color TV, ATSC/QAM Tuner, 120 minute sleep timer', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (122, N'Adventure Works 19\” Portable LCD HDTV M110 Silver', N'19'''' 720p LCD HDTV, 2 HDMI inputs, PC input for computers', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (123, N'Adventure Works 19\” Portable LCD HDTV M110 Black', N'19'''' 720p LCD HDTV, 2 HDMI inputs, PC input for computers', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (124, N'Adventure Works 19\” Portable LCD HDTV M110 White', N'19'''' 720p LCD HDTV, 2 HDMI inputs, PC input for computers', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (125, N'Adventure Works 19\” Color Digital TV E35 Silver', N'19'''' color TV, ATSC/QAM Tuner', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (126, N'Adventure Works 19\” Color Digital TV E35 Black', N'19'''' color TV, ATSC/QAM Tuner', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (127, N'Adventure Works 19\” Color Digital TV E35 White', N'19'''' color TV, ATSC/QAM Tuner', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (128, N'Adventure Works 19\” Color Digital TV E35 Brown', N'19'''' color TV, ATSC/QAM Tuner', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (129, N'Adventure Works 20\” Analog CRT TV E45 Silver', N'20\” Analog CRT TV, digital comb filter removes blurred edges between colors', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (130, N'Adventure Works 20\” Analog CRT TV E45 Black', N'20\” Analog CRT TV, digital comb filter removes blurred edges between colors', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (131, N'Adventure Works 20\” Analog CRT TV E45 White', N'20\” Analog CRT TV, digital comb filter removes blurred edges between colors', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (132, N'Adventure Works 20\” Analog CRT TV E45 Brown', N'20\” Analog CRT TV, digital comb filter removes blurred edges between colors', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (133, N'Adventure Works 20\” LCD HDTV M120 Silver', N'20'''' 720p LCD HDTV, HDMI v 1.3 digital inputs', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (134, N'Adventure Works 20\” LCD HDTV M120 Black', N'20'''' 720p LCD HDTV, HDMI v 1.3 digital inputs', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (135, N'Adventure Works 20\” LCD HDTV M120 White', N'20'''' 720p LCD HDTV, HDMI v 1.3 digital inputs', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (136, N'Adventure Works 20\” LCD HDTV M120 Brown', N'20'''' 720p LCD HDTV, HDMI v 1.3 digital inputs', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (137, N'Adventure Works 32\” LCD HDTV M130 Silver', N'32'''' 720p LCD HDTV, Back-Light Control, Built-In ATSC/NTSC/QAM Digital Tuning  ', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (138, N'Adventure Works 32\” LCD HDTV M130 Black', N'32'''' 720p LCD HDTV, Back-Light Control, Built-In ATSC/NTSC/QAM Digital Tuning  ', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (139, N'Adventure Works 32\” LCD HDTV M130 White', N'32'''' 720p LCD HDTV, Back-Light Control, Built-In ATSC/NTSC/QAM Digital Tuning  ', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (140, N'Adventure Works 32\” LCD HDTV M130 Brown', N'32'''' 720p LCD HDTV, Back-Light Control, Built-In ATSC/NTSC/QAM Digital Tuning  ', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (141, N'Adventure Works 15.6\” LCD TV M130W Silver', N'15.6'''' Widescreen LCD TV, built-in DVD Player', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (142, N'Adventure Works 15.6\” LCD TV M130W Black', N'15.6'''' Widescreen LCD TV, built-in DVD Player', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (143, N'Adventure Works 15.6\” LCD TV M130W White', N'15.6'''' Widescreen LCD TV, built-in DVD Player', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (144, N'Adventure Works 15.6\” LCD TV M130W Brown', N'15.6'''' Widescreen LCD TV, built-in DVD Player', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (145, N'Adventure Works 52\” LCD HDTV X590 Silver', N'52'''' 1080p 240Hz LCD HDTV, Four HDMI, two component, one PC, and two composite video inputs', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (146, N'Adventure Works 52\” LCD HDTV X590 Black', N'52'''' 1080p 240Hz LCD HDTV, Four HDMI, two component, one PC, and two composite video inputs', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (147, N'Adventure Works 52\” LCD HDTV X590 White', N'52'''' 1080p 240Hz LCD HDTV, Four HDMI, two component, one PC, and two composite video inputs', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (148, N'Adventure Works 52\” LCD HDTV X590 Brown', N'52'''' 1080p 240Hz LCD HDTV, Four HDMI, two component, one PC, and two composite video inputs', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (149, N'Adventure Works 40\” LCD HDTV M690 Silver', N'40'''' 1080p LCD HDTV, 70,000:1 dynamic contrast ratio, 6ms response time, Wide Color Enhancer 2 for more vivid colors', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (150, N'Adventure Works 40\” LCD HDTV M690 Black', N'40'''' 1080p LCD HDTV, 70,000:1 dynamic contrast ratio, 6ms response time, Wide Color Enhancer 2 for more vivid colors', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (151, N'Adventure Works 40\” LCD HDTV M690 White', N'40'''' 1080p LCD HDTV, 70,000:1 dynamic contrast ratio, 6ms response time, Wide Color Enhancer 2 for more vivid colors', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (152, N'Adventure Works 40\” LCD HDTV M690 Brown', N'40'''' 1080p LCD HDTV, 70,000:1 dynamic contrast ratio, 6ms response time, Wide Color Enhancer 2 for more vivid colors', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (153, N'Adventure Works 26\” 720p LCD HDTV M140 Silver', N'26'''' 720p LCD HDTV, 720p HD LCD Panel, Theater Wide Picture Modes', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (154, N'Adventure Works 26\” 720p LCD HDTV M140 Black', N'26'''' 720p LCD HDTV, 720p HD LCD Panel, Theater Wide Picture Modes', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (155, N'Adventure Works 26\” 720p LCD HDTV M140 White', N'26'''' 720p LCD HDTV, 720p HD LCD Panel, Theater Wide Picture Modes', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (156, N'Adventure Works 26\” 720p LCD HDTV M140 Brown', N'26'''' 720p LCD HDTV, 720p HD LCD Panel, Theater Wide Picture Modes', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (157, N'Adventure Works 37\” 1080p LCD HDTV M150W Silver', N'37'''' 1080p Widescreen LCD HDTV, 3 HDMI Inputs, USB 2.0 Connectivity', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (158, N'Adventure Works 37\” 1080p LCD HDTV M150W Black', N'37'''' 1080p Widescreen LCD HDTV, 3 HDMI Inputs, USB 2.0 Connectivity', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (159, N'Adventure Works 37\” 1080p LCD HDTV M150W White', N'37'''' 1080p Widescreen LCD HDTV, 3 HDMI Inputs, USB 2.0 Connectivity', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (160, N'Adventure Works 37\” 1080p LCD HDTV M150W Brown', N'37'''' 1080p Widescreen LCD HDTV, 3 HDMI Inputs, USB 2.0 Connectivity', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (161, N'Adventure Works 52\” LCD HDTV X790W Silver', N'52'''' 1080p 120Hz LCD HDTV, 16:9 Full HD 1080p Resolution (1920x1080p) LCD Panel  ', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (162, N'Adventure Works 52\” LCD HDTV X790W Black', N'52'''' 1080p 120Hz LCD HDTV, 16:9 Full HD 1080p Resolution (1920x1080p) LCD Panel  ', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (163, N'Adventure Works 52\” LCD HDTV X790W White', N'52'''' 1080p 120Hz LCD HDTV, 16:9 Full HD 1080p Resolution (1920x1080p) LCD Panel  ', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (164, N'Adventure Works 52\” LCD HDTV X790W Brown', N'52'''' 1080p 120Hz LCD HDTV, 16:9 Full HD 1080p Resolution (1920x1080p) LCD Panel  ', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (165, N'Adventure Works 42\” LCD HDTV M55 Black', N'42'''' 720p LCD HDTV, 1000000:1 Dynamic Contrast Ratio for the Brightest whites and darkest blacks', N'TV and Video', N'Televisions', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (166, N'SV 16xDVD M300 Black', N'Type:  16xDVD Playback, platform: Contoso 360.', N'TV and Video', N'VCD & DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (167, N'SV 8xDVD E100 Black', N'Type:  8xDVD Playback. Type Storage media-DVD-RAM. DVD-R/DVD-RAM purpose for video Native Capacity 9.4 GB', N'TV and Video', N'VCD & DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (168, N'SV 16xDVD M310 Black', N'Type:  16xDVD Playback, digital video recorder with 250GB hard drive. Network and Internet remote viewing with optional broadband router', N'TV and Video', N'VCD & DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (169, N'SV 16xDVD M320 Black', N'Type: 16xDVD Playback. Plays DVD, DVD-R/RW, DVD+R/RW, CD, CD-R/RW, MP3, WMA', N'TV and Video', N'VCD & DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (170, N'SV 16xDVD M330 Black', N'Type: 16xDVD Playback. Digital Audio Output Type: HDMI, Optical & Coaxial. HDMI Outputs: Yes', N'TV and Video', N'VCD & DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (171, N'SV 16xDVD E340 Black', N'Plays DVD Video, DVD+R/RW, DVD-R/RW, CD-R/RW and Audio CD, LED indicator', N'TV and Video', N'VCD & DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (172, N'SV 22xDVD X680 Black', N'Type:  22xDVD Playback, Line-In Recording - Satellite Link Recording.', N'TV and Video', N'VCD & DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (173, N'SV 8xDVD E120 Black', N'Type:  8xDVD Playback, type storage media - DVD-RAM, DVD-R/DVD-RAM purpose for video, native capacity 29.4 GB, write Speed 8x (max)', N'TV and Video', N'VCD & DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (174, N'SV 22xDVD M600 Black', N'Type: 22xDVD Playback. Network and Internet remote viewing with optional broadband router', N'TV and Video', N'VCD & DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (175, N'SV 16xDVD M350 Black', N'Type: 16xDVD Playback plays DVD, DVD-R/RW, CD, CD-R/RW, MP3, WMA, and JPEG', N'TV and Video', N'VCD & DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (176, N'SV 16xDVD M360 Black', N'Type: 16xDVD Playback, digital audio output type: HDMI, Optical & Coaxial, HDMI outputs', N'TV and Video', N'VCD & DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (177, N'SV 8xDVD E130 Black', N'Type: 8xDVD Playback plays DVD Video, DVD+R/RW, DVD-R/RW, CD-R/RW and Audio CD, LED indicator', N'TV and Video', N'VCD & DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (178, N'SV 8xDVD E140 Black', N'Type: 8xDVD Playback. Line-In recording -satellite link recording. Sync recording to STB output', N'TV and Video', N'VCD & DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (179, N'SV 16xDVD M300 Silver', N'Type:  16xDVD Playback, platform: Contoso 360.', N'TV and Video', N'VCD & DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (180, N'SV 8xDVD E100 Silver', N'Type:  8xDVD Playback, type Storage media - DVD-RAM. DVD-R/DVD-RAM purpose for video, native capacity 9.4 GB', N'TV and Video', N'VCD & DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (181, N'SV 16xDVD M310 Silver', N'Type: 16xDVD Playback, digital video recorder with 250GB hard drive, network and Internet remote viewing with optional broadband router', N'TV and Video', N'VCD & DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (182, N'SV 16xDVD M320 Silver', N'Type:  16xDVD Playback. Plays DVD, DVD-R/RW, DVD+R/RW, CD, CD-R/RW, MP3, WMA', N'TV and Video', N'VCD & DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (183, N'SV 16xDVD M330 Silver', N'Type:  16xDVD Playback. Digital Audio Output Type: HDMI, Optical & Coaxial. HDMI Outputs: Yes', N'TV and Video', N'VCD & DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (184, N'SV 16xDVD E340 Silver', N'Plays DVD Video, DVD+R/RW, DVD-R/RW, CD-R/RW and Audio CD, LED indicator', N'TV and Video', N'VCD & DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (185, N'SV 22xDVD X680 Silver', N'Type: 22xDVD Playback, line-in recording-satellite link recording', N'TV and Video', N'VCD & DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (186, N'SV 8xDVD E120 Silver', N'Type: 8xDVD Playback, type Storage media - DVD-RAM. DVD-R/DVD-RAM purpose for video, native capacity 29.4 GB, write Speed 8x (max)', N'TV and Video', N'VCD & DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (187, N'SV 22xDVD M600 Silver', N'Type: 22xDVD Playback, network and Internet remote viewing with optional broadband router', N'TV and Video', N'VCD & DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (188, N'SV 16xDVD M350 Silver', N'Type: 16xDVD Playback plays DVD, DVD-R/RW, CD, CD-R/RW, MP3, WMA, and JPEG', N'TV and Video', N'VCD & DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (189, N'SV 16xDVD M360 Silver', N'Type: 16xDVD Playback. Digital audio output type: HDMI, Optical & Coaxial, HDMI outputs.', N'TV and Video', N'VCD & DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (190, N'SV 8xDVD E130 Silver', N'Type: 8xDVD Playback plays DVD Video, DVD+R/RW, DVD-R/RW, CD-R/RW and Audio CD, LED indicator', N'TV and Video', N'VCD & DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (191, N'SV 8xDVD E140 Silver', N'Type: 8xDVD playback, line-in recording-satellite link recording, sync recording to STB output', N'TV and Video', N'VCD & DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (192, N'Litware Home Theater System 4.1 Channel M410 Black', N'4.1 channel front surround', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (193, N'Litware Home Theater System 5.1 Channel M511 Black', N'1000watts over 5 channels', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (194, N'Litware Home Theater System 2.1 Channel E210 Black', N'2.1 channel home theater system with an HDMI socket, an auxiliary input and a USB port', N'TV and Video', N'Home Theater System', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (793, N'Contoso Connectivity Starter Kit Smart Buy M680 White', N'Connectivity starter kit smart buy', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (794, N'Contoso 90W AC/DC Power Adapter E300 White', N'Enhanced capacity battery adapter', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (795, N'Contoso Reserve Pen - Tablet Pen E200 White', N'Reserve pen - tablet pen, connectivity technology, wireless', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (796, N'Contoso USB Data Link - direct connect adapter E600 White', N'USB data link - direct connect adapter', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (797, N'Contoso Primary Extended Capacity Battery Pack - notebook battery X100 White', N'Primary extended capacity battery pack - notebook battery', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (798, N'Contoso Digital camera accessory kit M200 White', N'Digital camera accessory kit', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (799, N'Contoso Leather Case - case for digital photo camera X20 White', N'Leather case for digital photo camera', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (800, N'Contoso Lens cap E80 White', N'Lens cap black', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (801, N'Contoso Battery charger - bike E200 White', N'Primary extended capacity battery pack', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (802, N'Contoso USB Optical Mouse E200 White', N'USB optical mouse', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (803, N'Contoso ADSL Modem Splitter/Filter X 1 E100 White', N'ADSL modem splitter/filter X 1', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (804, N'Contoso ADSL Modem Splitter/Filter X 2 E200 White', N'ADSL modem splitter/filter X 2', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (805, N'Contoso ADSL Modem Splitter/Filter X 3 E300 White', N'ADSL modem splitter/filter X 3', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (806, N'Contoso USB Wave Multi-media Keyboard E280 White', N'USB wave multimedia keyboard', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (807, N'Contoso Cables To  USB 2.0 Hard Drive Enclosure E920 White', N'Cables to  USB 2.0 hard drive enclosure', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (808, N'Contoso Rechargeable Battery E100 Grey', N'Rechargeable Battery', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (809, N'Contoso Dual USB Power Adapter - power adapter E300 Grey', N'Dual USB power adapter - power adapter', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (810, N'Contoso Car power adapter M90 Grey', N'Attach your phone to the cigarette lighter in your car, providing it the power to be used and recharged.', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (811, N'Contoso Notebook Peripheral Kit M69 Grey', N'It acts as a convenient carrier for an included hub, can also be used as a non-scratch screen wipe', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (812, N'Contoso Mouse Lock Bundle E200 Grey', N'Nearly 1,000 notebook computers are stolen everyday - protect your notebook computer and its valuable data with this affordable security product', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (813, N'Contoso Education Supplies Bundle E200 Grey', N'al is to enhance your lifestyle by offering innovative and quality products, as well as continuing to listen and respond to its customers', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (814, N'Contoso Laptop Starter Bundle M200 Grey', N'Get the four most popular accessories in one easy bundle with the Laptop 4-in-1 Starter bundle This kit is the perfect complement to your laptop ensuring you have the tools you need', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (815, N'Contoso Education Essentials Bundle M300 Grey', N'Education messenger essentials bundle - notebook accessories bundle', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (816, N'Contoso Desktop Alternative Bundle E200 Grey', N'Desktop alternative bundle', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (817, N'Contoso Power Inverter - DC to AC power inverter E900 Grey', N'Notebook essentials bundle - notebook accessories bundle', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (818, N'Contoso Smart Battery M901 Grey', N'Smart battery - memory backup battery', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (819, N'Contoso Laptop Cooling Hub notebook fan with 4 ports USB hub E80 Grey', N'Laptop cooling hub notebook fan with 4 ports USB hub', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (820, N'Contoso Home/Office Laptop Power Adapter E300 Grey', N'Home/office laptop power adapter', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (821, N'Contoso USB 2.0 Dock Station docking station M800 Grey', N'USB 2.0 dock station docking station', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (822, N'Contoso Enhanced Capacity Battery M800 Grey', N'Home office enhanced capacity battery', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (823, N'Contoso Connectivity Starter Kit Smart Buy M680 Grey', N'Connectivity starter kit smart buy', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (824, N'Contoso 90W AC/DC Power Adapter E300 Grey', N'Enhanced capacity battery adapter', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (825, N'Contoso Reserve Pen - Tablet Pen E200 Grey', N'Reserve pen - tablet pen, connectivity technology, wireless', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (826, N'Contoso USB Data Link - direct connect adapter E600 Grey', N'USB data Link - direct connect adapter', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (827, N'Contoso Primary Extended Capacity Battery Pack - notebook battery X100 Grey', N'Primary extended capacity battery pack - notebook battery', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (828, N'Contoso Digital camera accessory kit M200 Grey', N'Digital camera accessory kit', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (829, N'Contoso Leather Case - case for digital photo camera X20 Grey', N'Leather case for digital photo camera', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (830, N'Contoso Lens cap E80 Grey', N'Lens cap black', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (831, N'Contoso Battery charger - bike E200 Grey', N'imary extended capacity battery pack  ', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (832, N'Contoso USB Optical Mouse E200 Grey', N'USB optical mouse', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (833, N'Contoso ADSL Modem Splitter/Filter X 1 E100 Grey', N'ADSL modem splitter/filter X 1', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (834, N'Contoso ADSL Modem Splitter/Filter X 2 E200 Grey', N'ADSL modem splitter/filter X 2', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (835, N'Contoso ADSL Modem Splitter/Filter X 3 E300 Grey', N'ADSL modem splitter/filter X 3', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (836, N'Contoso USB Wave Multi-Media Keyboard E280 Grey', N'USB wave multimedia keyboard', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (837, N'Contoso Cables To  USB 2.0 Hard Drive Enclosure E920 Grey', N'Cables to  USB 2.0 hard drive enclosure', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (838, N'Contoso USB Optical Mouse E200 ld', N'USB optical mouse', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (839, N'Contoso USB Wave Multi-Media Keyboard M901 ld', N'USB wave multimedia keyboard', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (840, N'Contoso Laptop Cooling Hub notebook fan with 4 ports USB hub M200 ld', N'lden laptop cooling Hub notebook fan with 4 ports USB hub', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (841, N'Contoso Reserve Pen - Tablet Pen E200 ld', N'Reserve Pen - Tablet Pen', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (842, N'Contoso Bright Light battery E20 Black', N'Illuminate wireless reading device, two super LED lights', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (843, N'Contoso Bright Light battery E20 blue', N'Illuminate wireless reading device, two super LED lights', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (844, N'Contoso Bright Light battery E20 Pink', N'Illuminate wireless reading device, two super LED lights', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (845, N'Contoso Bright Light battery E20 White', N'Illuminate wireless reading device, two super LED lights', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (846, N'Contoso Ultraportable Neoprene Sleeve E30 Black', N'Compact neoprene sleeve transport mini laptop or DVD player in any briefcase, messenger bag or backpack', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (847, N'Contoso Ultraportable Neoprene Sleeve E30 Pink', N'Compact neoprene sleeve transport mini laptop or DVD player in any briefcase, messenger bag or backpack', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (848, N'Contoso Ultraportable Neoprene Sleeve E30 Yellow', N'Compact neoprene sleeve transport mini laptop or DVD player in any briefcase, messenger bag or backpack', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (849, N'Contoso Ultraportable Neoprene Sleeve E30 Green', N'Compact neoprene sleeve transport mini laptop or DVD player in any briefcase, messenger bag or backpack', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (850, N'Contoso Laptop Keyboard X105 Black', N'Beauty designed, wireless keyboard, combines easily with notebook to help improved comfort', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (851, N'Contoso Laptop Keyboard X105 White', N'Beauty designed, wireless keyboard, combines easily with notebook to help improved comfort', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (852, N'Contoso Laptop Keyboard X105 Brown', N'Beauty designed, wireless keyboard, combines easily with notebook to help improved comfort', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (853, N'Contoso Laptop Keyboard X105 Silver', N'Beauty designed, wireless keyboard, combines easily with notebook to help improved comfort', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (854, N'Contoso Multimedia Speakers M25 Brown', N'Speakers system is the perfect audio companion to your PC or notebook', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (855, N'Contoso Multimedia Speakers M25 Blue', N'Speakers system is the perfect audio companion to your PC or notebook', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (856, N'Contoso Multimedia Speakers M25 Black', N'Speakers system is the perfect audio companion to your PC or notebook', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (857, N'Contoso Multimedia Speakers M25 White', N'Speakers system is the perfect audio companion to your PC or notebook', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (858, N'Contoso Wireless Notebook Optical Mouse M35 Black', N'Wireless notebook mouse, long battery life, convenient snap-in receiver', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (859, N'Contoso Wireless Notebook Optical Mouse M35 White', N'Wireless notebook mouse, long battery life, convenient snap-in receiver', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (860, N'Contoso Wireless Notebook Optical Mouse M35 Blue', N'Wireless notebook mouse, long battery life, convenient snap-in receiver', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (861, N'Contoso Wireless Notebook Optical Mouse M35 Silver', N'Wireless notebook mouse, long battery life, convenient snap-in receiver', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (862, N'Contoso Wireless Notebook Optical Mouse M35 Orange', N'Wireless notebook mouse, long battery life, convenient snap-in receiver', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (863, N'Contoso Optical USB Mouse M45 Black', N'An improved wheel to make the scrolling up, down and sideways, faster, more comfortable and easier to use', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (864, N'Contoso Optical USB Mouse M45 White', N'An improved wheel to make the scrolling up, down and sideways, faster, more comfortable and easier to use', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (865, N'Contoso Optical USB Mouse M45 Grey', N'An improved wheel to make the scrolling up, down and sideways, faster, more comfortable and easier to use', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (866, N'Contoso Wireless Laser Mouse M55 Black', N'Advanced 2.4 GHz cordless technology makes freedom, hyper-fast scrolling, laser, and cursor control on virtually any surface', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (867, N'Contoso Wireless Laser Mouse M55 White', N'Advanced 2.4 GHz cordless technology makes freedom, hyper-fast scrolling, laser, and cursor control on virtually any surface', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (868, N'Contoso Wireless Laser Mouse M55 Grey', N'Advanced 2.4 GHz cordless technology makes freedom, hyper-fast scrolling, laser, and cursor control on virtually any surface', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (869, N'Contoso Wireless Laser Mouse M55 Silver', N'Advanced 2.4 GHz cordless technology makes freedom, hyper-fast scrolling, laser, and cursor control on virtually any surface', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (870, N'Contoso Wireless Laser Mouse E50 Black', N'Advanced 2.4 GHz cordless technology makes freedom, hyper-fast scrolling, laser, and cursor control on virtually any surface', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (871, N'Contoso Wireless Laser Mouse E50 White', N'Advanced 2.4 GHz cordless technology makes freedom, hyper-fast scrolling, laser, and cursor control on virtually any surface', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (872, N'Contoso Wireless Laser Mouse E50 Silver', N'Advanced 2.4 GHz cordless technology makes freedom, hyper-fast scrolling, laser, and cursor control on virtually any surface', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (873, N'Contoso Wireless Laser Mouse E50 Grey', N'Advanced 2.4 GHz cordless technology makes freedom, hyper-fast scrolling, laser, and cursor control on virtually any surface', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (874, N'Contoso Wireless Notebook Optical Mouse X205 Black', N'Wireless notebook mouse, long battery life, convenient snap-in receiver', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (875, N'Contoso Wireless Notebook Optical Mouse X205 White', N'Wireless notebook mouse, long battery life, convenient snap-in receiver', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (876, N'Contoso Wireless Notebook Optical Mouse X205 Blue', N'Wireless notebook mouse, long battery life, convenient snap-in receiver', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (877, N'Contoso Wireless Notebook Optical Mouse X205 Silver', N'Wireless notebook mouse, long battery life, convenient snap-in receiver', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (878, N'Contoso Wireless Notebook Optical Mouse X205 Orange', N'Wireless notebook mouse, long battery life, convenient snap-in receiver', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (879, N'Contoso Optical Wheel OEM PS/2 Mouse E60 Grey', N'PS/2 mouse, 6 feet mouse cable', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (880, N'Contoso Optical Wheel OEM PS/2 Mouse E60 Black', N'PS/2 mouse, 6 feet mouse cable', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (881, N'Contoso Optical Wheel OEM PS/2 Mouse E60 White', N'PS/2 mouse, 6 feet mouse cable', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (882, N'Contoso Optical Wheel OEM PS/2 Mouse E60 Silver', N'PS/2 mouse, 6 feet mouse cable', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (883, N'Contoso Bluetooth Notebook Mouse X305 Black', N'Transceiver-free wireless connection to your PC with Bluetooth Technology', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (884, N'Contoso Bluetooth Notebook Mouse X305 White', N'Transceiver-free wireless connection to your PC with Bluetooth Technology', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (885, N'Contoso Bluetooth Notebook Mouse X305 Silver', N'Transceiver-free wireless connection to your PC with Bluetooth Technology', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (886, N'Contoso Bluetooth Notebook Mouse X305 Grey', N'Transceiver-free wireless connection to your PC with Bluetooth Technology', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (887, N'Contoso Bluetooth Notebook Mouse E70 Black', N'Transceiver-free wireless connection to your PC with Bluetooth Technology', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (888, N'Contoso Bluetooth Notebook Mouse E70 White', N'Transceiver-free wireless connection to your PC with Bluetooth Technology', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (889, N'Contoso Bluetooth Notebook Mouse E70 Silver', N'Transceiver-free wireless connection to your PC with Bluetooth Technology', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (890, N'Contoso Bluetooth Notebook Mouse E70 Grey', N'Transceiver-free wireless connection to your PC with Bluetooth Technology', N'Computers', N'Computers Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (891, N'SV Rechargeable Bluetooth Notebook Mouse E80 Silver', N'33 ft range, recharges while in use.', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (892, N'SV Rechargeable Bluetooth Notebook Mouse E80 Black', N'33 ft range, recharges while in use.', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (893, N'SV Rechargeable Bluetooth Notebook Mouse E80 White', N'33 ft range, recharges while in use.', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (894, N'SV Rechargeable Bluetooth Notebook Mouse E80 Grey', N'33 ft range, recharges while in use.', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (895, N'SV Keyboard E90 Silver', N'Cutting-edge design and improved performance for maximum productivity, E-mail and Internet hot keys', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (896, N'SV Keyboard E90 White', N'Cutting-edge design and improved performance for maximum productivity, E-mail and Internet hot keys', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (897, N'SV Keyboard E90 Black', N'Cutting-edge design and improved performance for maximum productivity, E-mail and Internet hot keys', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (898, N'SV Keyboard E90 Grey', N'Cutting-edge design and improved performance for maximum productivity, E-mail and Internet hot keys', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (899, N'SV Keyboard E10 Silver', N'Cutting-edge design and improved performance for maximum productivity, E-mail and Internet hot keys', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (900, N'SV Keyboard E10 White', N'Cutting-edge design and improved performance for maximum productivity, E-mail and Internet hot keys', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (901, N'SV Keyboard E10 Black', N'Cutting-edge design and improved performance for maximum productivity, E-mail and Internet hot keys', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (902, N'SV Keyboard E10 Grey', N'Cutting-edge design and improved performance for maximum productivity, E-mail and Internet hot keys', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (903, N'SV 40GB USB2.0 Portable Hard Disk E400 Red', N'Ultra durable 40GB USB portable storage, can withstand vertical drops of up to 35 inches', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (904, N'SV 40GB USB2.0 Portable Hard Disk E400 Silver', N'Ultra durable 40GB USB portable storage, can withstand vertical drops of up to 35 inches', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (905, N'SV 40GB USB2.0 Portable Hard Disk E400 Blue', N'Ultra durable 40GB USB portable storage, can withstand vertical drops of up to 35 inches', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (906, N'SV 40GB USB2.0 Portable Hard Disk E400 Yellow', N'Ultra durable 40GB USB portable storage, can withstand vertical drops of up to 35 inches', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (907, N'SV 80GB USB2.0 Portable Hard Disk E500 Red', N'Ultra durable 80GB USB portable storage, can withstand vertical drops of up to 35 inches', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (908, N'SV 80GB USB2.0 Portable Hard Disk E500 Silver', N'Ultra durable 80GB USB portable storage, can withstand vertical drops of up to 35 inches', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (909, N'SV 80GB USB2.0 Portable Hard Disk E500 Blue', N'Ultra durable 80GB USB portable storage, can withstand vertical drops of up to 35 inches', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (910, N'SV 80GB USB2.0 Portable Hard Disk E500 Yellow', N'Ultra durable 80GB USB portable storage, can withstand vertical drops of up to 35 inches', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (911, N'SV 160GB USB2.0 Portable Hard Disk M65 Silver', N'Ultra durable160GB USB portable storage', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (912, N'SV 160GB USB2.0 Portable Hard Disk M65 Black', N'Ultra durable160GB USB portable storage', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (913, N'SV 160GB USB2.0 Portable Hard Disk M65 White', N'Ultra durable160GB USB portable storage', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (914, N'SV 160GB USB2.0 Portable Hard Disk M65 Grey', N'Ultra durable160GB USB portable storage', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (915, N'SV 500GB USB 2.0 Portable External Hard Drive X405 Pink', N'Internal shock sensor and ramp loading Technology, USB Powered for portability/ Small size saves desktop space', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (916, N'SV 500GB USB 2.0 Portable External Hard Drive X405 Blue', N'Internal shock sensor and ramp loading Technology, USB Powered for portability/ Small size saves desktop space', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (917, N'SV 500GB USB 2.0 Portable External Hard Drive X405 White', N'Internal shock sensor and ramp loading Technology, USB Powered for portability/ Small size saves desktop space', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (918, N'SV 500GB USB 2.0 Portable External Hard Drive X405 Black', N'Internal shock sensor and ramp loading Technology, USB Powered for portability/ Small size saves desktop space', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (919, N'SV USB Data Cable E600 Pink', N'A single, standardized and easy way to connect the phone to a computer', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (920, N'SV USB Data Cable E600 Black', N'A single, standardized and easy way to connect the phone to a computer', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (921, N'SV USB Data Cable E600 Silver', N'A single, standardized and easy way to connect the phone to a computer', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (922, N'SV USB Data Cable E600 Grey', N'A single, standardized and easy way to connect the phone to a computer', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (923, N'SV USB Sync Charge Cable E700 Blue', N'Simultaneously synchronize and recharge your device, USB 2.0 & 1.1 compatible', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (924, N'SV USB Sync Charge Cable E700 Black', N'Simultaneously synchronize and recharge your device, USB 2.0 & 1.1 compatible', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (925, N'SV USB Sync Charge Cable E700 White', N'Simultaneously synchronize and recharge your device, USB 2.0 & 1.1 compatible', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (926, N'SV USB Sync Charge Cable E700 Silver', N'Simultaneously synchronize and recharge your device, USB 2.0 & 1.1 compatible', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (927, N'SV 512MB Laptop memory E800 White', N'DDR socket   ', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (928, N'SV 512MB Laptop memory E800 Silver', N'DDR socket   ', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (929, N'SV 512MB Laptop memory E800 Black', N'DDR socket   ', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (930, N'SV 512MB Laptop memory E800 Yellow', N'DDR2 socket   ', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (931, N'SV 2GB Laptop memory E800 Silver', N'DDR2 socket   ', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (932, N'SV 2GB Laptop memory E800 Black', N'DDR2 socket   ', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (933, N'SV 2GB Laptop memory E800 White', N'DDR2 socket   ', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (934, N'SV 4GB Laptop Memory M65 Blue', N'Standard SDRAM SODIMM socket', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (935, N'SV 4GB Laptop Memory M65 Yellow', N'Standard SDRAM SODIMM socket', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (936, N'SV 4GB Laptop Memory M65 Black', N'Standard SDRAM SODIMM socket', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (937, N'SV 4GB Laptop Memory M65 White', N'Standard SDRAM SODIMM socket', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (938, N'SV Wireless LAN PCI Network Card Adapter E900 Black', N'Broadcom chipset PCI interface 802.11g, 54 Mbps data transfer rate', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (939, N'SV Wireless LAN PCI Network Card Adapter E901 Black', N'Broadcom chipset PCI interface 802.11g, 54 Mbps data transfer rate', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (940, N'SV Wireless LAN PCI Network Card Adapter E902 Black', N'Broadcom chipset PCI interface 802.11g, 54 Mbps data transfer rate', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (941, N'SV PCI Network Adapter E903 Silver', N'Easy migration to faster networks as current 10/100 Mbps networks move to Gigabit', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (942, N'SV PCI Network Adapter E904 Silver', N'Easy migration to faster networks as current 10/100 Mbps networks move to Gigabit', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (943, N'SV PCI Network Adapter E905 Silver', N'Easy migration to faster networks as current 10/100 Mbps networks move to gigabit', N'Computers', N'Computers Accessories', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (944, N'A. Datum Compact Digital Camera M200 Black', N'Digital camera, 3.7 in x 0.9 in x 2', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (945, N'A. Datum Rangefinder Digital Camera X200 Black', N'Digital camera – compact, 3.7 in x 0.9 in x 2 in, 4.4 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (946, N'A. Datum Slim Digital Camera M180 Black', N'Digital camera-compact, 3.7 in x 0.9 in x 2.3', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (947, N'A. Datum Ultra Compact Digital Camera M190 Black', N'10.2in x 3 in x 15.3in, 2.2 lbs', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (948, N'A. Datum All in One Digital Camera M200 Black', N'Digital camera, Product Type Digital camera - compact, Dimensions. 3.7 in x 0.9 in x 2.3 in, weight 5.5 oz  ', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (949, N'A. Datum Interchangeable lens Non-SLR Digital Camera X250 Black', N'Digital camera, product type digital camera - compact, dimensions 3.5 in x 1 in x 2.3 in', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (950, N'A. Datum Super-zoom Digital Camera X300 Black', N'Digital camera, Product type digital camera - compact, Dimensions 3.7 in x 1.1 in x 2.4 in', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (951, N'A. Datum Consumer Digital Camera E100 Black', N'Digital camera, product type digital camera - compact', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (952, N'A. Datum Consumer Digital Camera M300 Black', N'Product type digital camera - compact, dimensions 3.8 in x 1 in x 2.1 in, weight 5.3 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (953, N'A. Datum Advanced Digital Camera M300 Black', N'Digital camera, product type digital camera, dimensions 3.9 in x 1 in x 2.2 in, weight 5.3 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (954, N'A. Datum Bridge Digital Camera M300 Black', N'Digital camera, product Type digital camera - compact, dimensions 4.3 in x 1.1 in x 2.4 in, weight 8.1 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (955, N'A. Datum SLR-like Digital Camera M400 Black', N'Digital camera, product type digital camera - compact, dimensions 4.7 in x 3.5 in x 3 in, weight 13 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (956, N'A. Datum Point Shoot Digital Camera M500 Black', N'gital camera, digital camera - compact, 3.7 in x 0.9 in x 2 in, weight 4.4 oz  ', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (957, N'A. Datum Full Frame Digital Camera X300 Black', N'Digital camera, digital camera - compact, 3.9 in x 0.8 in x 2.3 in, weight 4.8 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (958, N'A. Datum Compact Digital Camera M200 Grey', N'Digital camera .3.7 in x 0.9 in x 2', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (959, N'A. Datum Rangefinder Digital Camera X200 Grey', N'Digital camera - compact, 3.7 in x 0.9 in x 2 in, 4.4 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (960, N'A. Datum Slim Digital Camera M180 Grey', N'Digital camera – compact, 3.7 in x 0.9 in x 2.3', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (961, N'A. Datum Ultra Compact Digital Camera M190 Grey', N'10.2 In x 3 in x 15.3 in, 2.2 lbs', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (962, N'A. Datum All in One Digital Camera M200 Grey', N'Digital camera, product type digital camera - compact, dimensions, 3.7 in x 0.9 in x 2.3 in, weight 5.5 oz  ', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (963, N'A. Datum Interchangeable lens Non-SLR Digital Camera X250 Grey', N'Digital camera, product type digital camera - compact, dimensions 3.5 in x 1 in x 2.3 in', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (964, N'A. Datum Super-zoom Digital Camera X300 Grey', N'Digital camera, product type digital camera - compact, dimensions 3.7 in x 1.1 in x 2.4 in', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (965, N'A. Datum Consumer Digital Camera E100 Grey', N'Digital camera, product type digital camera - compact', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (966, N'A. Datum Consumer Digital Camera M300 Grey', N'Product type digital camera - compact, dimensions 3.8 in x 1 in x 2.1 in, weight 5.3 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (967, N'A. Datum Advanced Digital Camera M300 Grey', N'Digital camera, product type digital camera, dimensions 3.9 in x 1 in x 2.2 in . Weight 5.3 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (968, N'A. Datum Bridge Digital Camera M300 Grey', N'Digital camera, product type digital camera - compact, dimensions 4.3 in x 1.1 in x 2.4 in, weight 8.1 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (969, N'A. Datum SLR-like Digital Camera M400 Grey', N'Digital camera, product type digital camera - compact, dimensions 4.7 in x 3.5 in x 3 in, weight 13 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (970, N'A. Datum Point n'' Shoot Digital Camera M500 Grey', N'gital camera, digital camera - compact, 3.7 in x 0.9 in x 2 in, weight 4.4 oz  ', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (971, N'A. Datum Full Frame Digital Camera X300 Grey', N'Digital camera, digital camera - compact, 3.9 in x 0.8 in x 2.3 in, weight 4.8 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (972, N'A. Datum Compact Digital Camera M200 Pink', N'Digital camera .3.7 in x 0.9 in x 2', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (973, N'A. Datum Rangefinder Digital Camera X200 Pink', N'Digital camera - compact .3.7 in x 0.9 in x 2 in, 4.4 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (974, N'A. Datum Slim Digital Camera M180 Pink', N'Digital camera – compact, 3.7 in x 0.9 in x 2.3', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (975, N'A. Datum Ultra Compact Digital Camera M190 Pink', N'10.2 In x 3 in x 15.3 in, 2.2 lbs', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (976, N'A. Datum All in One Digital Camera M200 Pink', N'Digital camera, product type digital camera - compact, dimensions, 3.7 in x 0.9 in x 2.3 in, weight 5.5 oz  ', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (977, N'A. Datum Interchangeable lens Non-SLR Digital Camera X250 Pink', N'Digital camera, product type digital camera - compact, dimensions 3.5 in x 1 in x 2.3 in', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (978, N'A. Datum Super-zoom Digital Camera X300 Pink', N'Digital camera, product type digital camera - compact, dimensions 3.7 in x 1.1 in x 2.4 in', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (979, N'A. Datum Consumer Digital Camera E100 Pink', N'Digital camera, product type digital camera - compact', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (980, N'A. Datum Consumer Digital Camera M300 Pink', N'Product type digital camera - compact, dimensions 3.8 in x 1 in x 2.1 in, weight 5.3 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (981, N'A. Datum Advanced Digital Camera M300 Pink', N'Digital camera, product type digital camera, dimensions 3.9 in x 1 in x 2.2 in, weight 5.3 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (982, N'A. Datum Bridge Digital Camera M300 Pink', N'Digital camera, product type digital camera - compact, dimensions 4.3 in x 1.1 in x 2.4 in, weight 8.1 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (983, N'A. Datum SLR-like Digital Camera M400 Pink', N'Digital camera, product Type digital camera - compact, dimensions 4.7 in x 3.5 in x 3 in, weight 13 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (984, N'A. Datum Point Shoot Digital Camera M500 Pink', N'gital Camera, Digital camera - compact, 3.7 in x 0.9 in x 2 in, weight 4.4 oz  ', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (985, N'A. Datum Full Frame Digital Camera X300 Pink', N'Digital Camera, Digital camera - compact, 3.9 in x 0.8 in x 2.3 in, weight 4.8 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (986, N'A. Datum Compact Digital Camera M200 Silver', N'Digital camera, 3.7 in x 0.9 in x 2', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (987, N'A. Datum Rangefinder Digital Camera X200 Silver', N'Digital camera – compact, 3.7 in x 0.9 in x 2 in, 4.4 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (988, N'A. Datum Slim Digital Camera M180 Silver', N'Digital camera – compact, 3.7 in x 0.9 in x 2.3', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (989, N'A. Datum Ultra Compact Digital Camera M190 Silver', N'10.2 In x 3 in x 15.3 in, 2.2 lbs', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (990, N'A. Datum All in One Digital Camera M200 Silver', N'Digital camera, product type digital camera - compact, dimensions, 3.7 in x 0.9 in x 2.3 in, weight 5.5 oz  ', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (991, N'A. Datum Interchangeable lens Non-SLR Digital Camera X250 Silver', N'Digital camera, Product type digital camera - compact, dimensions 3.5 in x 1 in x 2.3 in', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (992, N'A. Datum Super-zoom Digital Camera X300 Silver', N'Digital camera, Product type digital camera - compact, dimensions 3.7 in x 1.1 in x 2.4 in', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (993, N'A. Datum Consumer Digital Camera E100 Silver', N'Digital camera, product type digital camera - compact', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (994, N'A. Datum Consumer Digital Camera M300 Silver', N'Product type digital camera - compact, dimensions 3.8 in x 1 in x 2.1 in, weight 5.3 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (995, N'A. Datum Advanced Digital Camera M300 Silver', N'Digital camera, product type digital camera, dimensions 3.9 in x 1 in x 2.2 in, weight 5.3 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (996, N'A. Datum Bridge Digital Camera M300 Silver', N'Digital camera, product type digital camera - compact, dimensions 4.3 in x 1.1 in x 2.4 in, weight 8.1 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (997, N'A. Datum SLR-like Digital Camera M400 Silver', N'Digital camera, product type digital camera - compact, dimensions 4.7 in x 3.5 in x 3 in, weight 13 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (998, N'A. Datum Point Shoot Digital Camera M500 Silver', N'gital camera, digital camera - compact, 3.7 in x 0.9 in x 2 in, weight 4.4 oz  ', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (999, N'A. Datum Full Frame Digital Camera X300 Silver', N'Digital camera, digital camera - compact, 3.9 in x 0.8 in x 2.3 in, weight 4.8 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1000, N'A. Datum Compact Digital Camera M200 Orange', N'Digital camera, 3.7 in x 0.9 in x 2', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1001, N'A. Datum Rangefinder Digital Camera X200 Orange', N'Digital camera – compact, 3.7 in x 0.9 in x 2 in, 4.4 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1002, N'A. Datum Slim Digital Camera M180 Orange', N'Digital camera – compact, 3.7 in x 0.9 in x 2.3', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1003, N'A. Datum Ultra Compact Digital Camera M190 Orange', N'10.2 In x 3 in x 15.3 in, 2.2 lbs', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1004, N'A. Datum All in One Digital Camera M200 Orange', N'Digital camera, product type digital camera - compact, dimensions, 3.7 in x 0.9 in x 2.3 in, weight 5.5 oz  ', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1005, N'A. Datum Interchangeable lens Non-SLR Digital Camera X250 Orange', N'Digital camera, product type digital camera - compact, dimensions 3.5 in x 1 in x 2.3 in', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1006, N'A. Datum Super-zoom Digital Camera X300 Orange', N'Digital camera, product type digital camera - compact, dimensions 3.7 in x 1.1 in x 2.4 in', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1007, N'A. Datum Consumer Digital Camera E100 Orange', N'Digital camera, product type digital camera - compact', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1008, N'A. Datum Consumer Digital Camera M300 Orange', N'Product type digital camera - compact, dimensions 3.8 in x 1 in x 2.1 in, weight 5.3 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1009, N'A. Datum Advanced Digital Camera M300 Orange', N'Digital camera, product type digital camera, dimensions 3.9 in x 1 in x 2.2 in, weight 5.3 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1010, N'A. Datum Bridge Digital Camera M300 Orange', N'Digital camera, product type digital camera - compact, dimensions 4.3 in x 1.1 in x 2.4 in, weight 8.1 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1011, N'A. Datum SLR-like Digital Camera M400 Orange', N'Digital camera, product type digital camera - compact, dimensions 4.7 in x 3.5 in x 3 in, weight 13 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1012, N'A. Datum Point Shoot Digital Camera M500 Orange', N'gital camera, digital camera - compact, 3.7 in x 0.9 in x 2 in, weight 4.4 oz  ', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1013, N'A. Datum Full Frame Digital Camera X300 Orange', N'Digital camera, digital camera - compact, 3.9 in x 0.8 in x 2.3 in, weight 4.8 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1014, N'A. Datum Compact Digital Camera M200 Green', N'Digital camera .3.7 in x 0.9 in x 2', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1015, N'A. Datum Rangefinder Digital Camera X200 Green', N'Digital camera - compact, 3.7 in x 0.9 in x 2 in, 4.4 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1016, N'A. Datum Slim Digital Camera M180 Green', N'Digital camera – compact, 3.7 in x 0.9 in x 2.3', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1017, N'A. Datum Ultra Compact Digital Camera M190 Green', N'10.2 In x 3 in x 15.3 in, 2.2 lbs', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1018, N'A. Datum All in One Digital Camera M200 Green', N'Digital camera, product type digital camera - compact, dimensions, 3.7 in x 0.9 in x 2.3 in, weight 5.5 oz  ', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1019, N'A. Datum Interchangeable lens Non-SLR Digital Camera X250 Green', N'Digital camera, product type digital camera - compact, dimensions 3.5 in x 1 in x 2.3 in', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1020, N'A. Datum Super-zoom Digital Camera X300 Green', N'Digital camera, product type digital camera - compact, dimensions 3.7 in x 1.1 in x 2.4 in', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1021, N'A. Datum Consumer Digital Camera E100 Green', N'Digital camera, product type digital camera - compact', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1022, N'A. Datum Consumer Digital Camera M300 Green', N'Product Type Digital camera - compact, dimensions 3.8 in x 1 in x 2.1 in, weight 5.3 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1023, N'A. Datum Advanced Digital Camera M300 Green', N'Digital camera, product type digital camera, dimensions 3.9 in x 1 in x 2.2 in, weight 5.3 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1024, N'A. Datum Bridge Digital Camera M300 Green', N'Digital camera, product type digital camera - compact, dimensions 4.3 in x 1.1 in x 2.4 in, weight 8.1 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1025, N'A. Datum SLR-like Digital Camera M400 Green', N'Digital camera, product type digital camera - compact, Dimensions 4.7 in x 3.5 in x 3 in, weight 13 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1026, N'A. Datum Point Shoot Digital Camera M500 Green', N'gital camera, digital camera - compact, 3.7 in x 0.9 in x 2 in, weight 4.4 oz  ', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1027, N'A. Datum Full Frame Digital Camera X300 Green', N'Digital camera, digital camera - compact, 3.9 in x 0.8 in x 2.3 in, weight 4.8 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1028, N'A. Datum Compact Digital Camera M200 Azure', N'Digital camera, 3.7 in x 0.9 in x 2', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1029, N'A. Datum Rangefinder Digital Camera X200 Azure', N'Digital camera – compact, 3.7 in x 0.9 in x 2 in, 4.4 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1030, N'A. Datum Slim Digital Camera M180 Azure', N'Digital camera – compact, 3.7 in x 0.9 in x 2.3', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1031, N'A. Datum Ultra Compact Digital Camera M190 Azure', N'10.2 In x 3 in x 15.3 in, 2.2 lbs', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1032, N'A. Datum All in One Digital Camera M200 Azure', N'Digital camera, product type digital camera - compact, dimensions, 3.7 in x 0.9 in x 2.3 in, weight 5.5 oz  ', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1033, N'A. Datum Interchangeable lens Non-SLR Digital Camera X250 Azure', N'Digital camera, product type digital camera - compact, dimensions 3.5 in x 1 in x 2.3 in', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1034, N'A. Datum Super-zoom Digital Camera X300 Azure', N'Digital camera, product type digital camera - compact, dimensions 3.7 in x 1.1 in x 2.4 in', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1035, N'A. Datum Consumer Digital Camera E100 Azure', N'Digital camera, product type digital camera - compact', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1036, N'A. Datum Consumer Digital Camera M300 Azure', N'Product type digital camera - compact, dimensions 3.8 in x 1 in x 2.1 in, weight 5.3 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1037, N'A. Datum Advanced Digital Camera M300 Azure', N'Digital camera, product type digital camera, dimensions 3.9 in x 1 in x 2.2 in, weight 5.3 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1038, N'A. Datum Bridge Digital Camera M300 Azure', N'Digital camera, product type digital camera - compact, dimensions 4.3 in x 1.1 in x 2.4 in, weight 8.1 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1039, N'A. Datum SLR-like Digital Camera M400 Azure', N'Digital camera, product type digital camera - compact, dimensions 4.7 in x 3.5 in x 3 in, weight 13 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1040, N'A. Datum Point n'' Shoot Digital Camera M500 Azure', N'gital camera, digital camera - compact, 3.7 in x 0.9 in x 2 in, weight 4.4 oz  ', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1041, N'A. Datum Full Frame Digital Camera X300 Azure', N'Digital camera, digital camera - compact, 3.9 in x 0.8 in x 2.3 in, weight 4.8 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1042, N'A. Datum Point Shoot Digital Camera M500 Silver Grey', N'Digital camera – compact, 3.8 in x 1 in x 2.2 in, 4.9 oz', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1043, N'A. Datum Full Frame Digital Camera X300 Silver Grey', N'Optical zoom 2.7in LCD digital camera, 100kgf', N'Cameras and camcorders ', N'Digital Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1044, N'A. Datum SLR Camera X135 Black', N'On-screen autofocus with live view displays subjects in focus on the LCD the instant the shutter is pressed halfway', N'Cameras and camcorders ', N'Digital SLR Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1045, N'A. Datum SLR Camera 35\” X358 Black', N'Choice of data storage options - accepts compact flash type I & II, UDMA, micro drives, and XD-picture cards digital 14-42mm F3.5-5.6 lens', N'Cameras and camcorders ', N'Digital SLR Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1046, N'A. Datum SLR Camera M135 Black', N'SLR camera, 4.8 in x 2.7 in x 3.6 in, 1.1 lbs', N'Cameras and camcorders ', N'Digital SLR Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1047, N'A. Datum SLR Camera 35\” M358 Black', N'8 digital-variable program automatic shooting modes', N'Cameras and camcorders ', N'Digital SLR Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1048, N'A. Datum SLR Camera X136 Silver', N'Compact 3x zoom lens covering the most frequently used focal range', N'Cameras and camcorders ', N'Digital SLR Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1049, N'A. Datum SLR Camera 35\” X358 Silver', N'Powerful megapixel live-MOS sensor', N'Cameras and camcorders ', N'Digital SLR Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1050, N'A. Datum SLR Camera M136 Silver', N'Powerful 12.3-megapixel live-MOSLO sensor', N'Cameras and camcorders ', N'Digital SLR Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1051, N'A. Datum SLR Camera 35\” M358 Silver', N'4.8 In x 2.7 in x 3.6 in. 1.1 lbs', N'Cameras and camcorders ', N'Digital SLR Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1052, N'A. Datum SLR Camera X137 Grey', N'Fast startup and split-second shutter response, shoot continuously at up to 3 frames per second', N'Cameras and camcorders ', N'Digital SLR Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1053, N'A. Datum SLR Camera 35\” X358 Grey', N'Shoot at up to 2.5 frames per second, capturing high-quality action sequences of children in sporting activities such as soccer', N'Cameras and camcorders ', N'Digital SLR Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1054, N'A. Datum SLR Camera M137 Grey', N'Continuous shooting up to 5 frames per second', N'Cameras and camcorders ', N'Digital SLR Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1055, N'A. Datum SLR Camera 35\” M358 Grey', N'Compact flash type I/II, micro drive', N'Cameras and camcorders ', N'Digital SLR Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1056, N'A. Datum SLR Camera X138 Silver Grey', N'Dynamic integrated dust reduction system', N'Cameras and camcorders ', N'Digital SLR Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1057, N'A. Datum SLR Camera 35\” X358 Silver Grey', N'Fast startup and split-second shutter response, shoot continuously at up to 3 frames per second', N'Cameras and camcorders ', N'Digital SLR Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1058, N'A. Datum SLR Camera M138 Silver Grey', N'Digital camera - SLR with live view mode, 5 in x 2.4 in x 3.9 in, 15.9 oz', N'Cameras and camcorders ', N'Digital SLR Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1059, N'A. Datum SLR Camera 35\” M358 Silver Grey', N'5 in x 2.4 in x 3.9 in, 15.9 oz, digital camera - SLR with live view mode', N'Cameras and camcorders ', N'Digital SLR Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1060, N'A. Datum SLR Camera X139 ld', N'Digital camera - SLR with live view mode, 5.8 in x 2.9 in x 4.5 in, 1.8 lbs', N'Cameras and camcorders ', N'Digital SLR Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1061, N'A. Datum SLR Camera 35\” X358 ld', N'Digital camera - SLR with live view mode,', N'Cameras and camcorders ', N'Digital SLR Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1062, N'A. Datum SLR Camera M139 ld', N'Digital camera - SLR with live view mode, 5.1 in x 2.4 in x 3.9 in, 16.8 oz', N'Cameras and camcorders ', N'Digital SLR Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1063, N'A. Datum SLR Camera 35\” M358 ld', N'Digital camera - SLR with live view mode', N'Cameras and camcorders ', N'Digital SLR Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1064, N'A. Datum SLR Camera X140 Pink', N'Digital camera - SLR with live view mode', N'Cameras and camcorders ', N'Digital SLR Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1065, N'A. Datum SLR Camera 35\” X358 Pink', N'Digital camera - SLR with live view mode', N'Cameras and camcorders ', N'Digital SLR Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1066, N'A. Datum SLR Camera M140 Pink', N'Optical - fixed eye-level pen, LCD display', N'Cameras and camcorders ', N'Digital SLR Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1067, N'A. Datum SLR Camera 35\” M358 Pink', N'Digital camera - SLR with live view mode', N'Cameras and camcorders ', N'Digital SLR Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1068, N'A. Datum SLR Camera X141 Blue', N'Digital camera - SLR with live view mode, movie recording, 5.1 in x 2.4 in x 3.9 in, 16.9 oz', N'Cameras and camcorders ', N'Digital SLR Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1069, N'A. Datum SLR Camera 35\” X358 Blue', N'Digital camera - SLR with live view mode', N'Cameras and camcorders ', N'Digital SLR Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1070, N'A. Datum SLR Camera M141 Blue', N'Digital camera - SLR with live view mode, 5.1 in x 2.1 in x 3.6 in, 13.2 oz', N'Cameras and camcorders ', N'Digital SLR Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1071, N'A. Datum SLR Camera 35\” M358 Blue', N'Digital camera – SLR, 4.8 in x 2.7 in x 3.6 in, 1.1 lbs', N'Cameras and camcorders ', N'Digital SLR Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1072, N'A. Datum SLR Camera X142 Orange', N'Digital camera - SLR with live view mode', N'Cameras and camcorders ', N'Digital SLR Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1073, N'A. Datum SLR Camera 35\” X358 Orange', N'Digital camera – SLR, 4.5 in x 2.5 in x 3.4 in, 1.2 lbs', N'Cameras and camcorders ', N'Digital SLR Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1074, N'A. Datum SLR Camera M142 Orange', N'Digital camera – SLR, 5.2 in x 2.8 in x 3.7 in, 19.2 oz', N'Cameras and camcorders ', N'Digital SLR Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1075, N'A. Datum SLR Camera 35\” M358 Orange', N'Digital camera – SLR, 5.2 in x 2.8 in x 3.7 in, 19.2 oz', N'Cameras and camcorders ', N'Digital SLR Cameras', N'A. Datum Corporation')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1076, N'Contoso SLR Camera X142 Black', N'On-screen autofocus with live view displays subjects in focus on the LCD the instant the shutter is pressed halfway', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1077, N'Contoso SLR Camera 35\” X358 Black', N'Choice of data storage options -- accepts compact flash type I & II, UDMA, micro drives, and XD-picture cards digital 14-42mm F3.5-5.6 lens', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1078, N'Contoso SLR Camera M142 Black', N'SLR camera, 4.8 in x 2.7 in x 3.6 in, 1.1 lbs', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1079, N'Contoso SLR Camera 35\” M358 Black', N'8 digital-variable program automatic shooting modes', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1080, N'Contoso SLR Camera X143 Silver', N'Compact 3x zoom lens covering the most frequently used focal range', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1081, N'Contoso SLR Camera 35\” X358 Silver', N'Powerful megapixel Live-MOS sensor', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1082, N'Contoso SLR Camera M143 Silver', N'Powerful 12.3-megapixel live-MOSLO sensor', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1083, N'Contoso SLR Camera 35\” M358 Silver', N'4.8 In x 2.7 in x 3.6 in, 1.1 lbs', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1084, N'Contoso SLR Camera X143 Grey', N'Fast startup and split-second shutter response, shoot continuously at up to 3 frames per second', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1085, N'Contoso SLR Camera 35\” X358 Grey', N'Shoot at up to 2.5 frames per second, capturing high-quality action sequences of children in sporting activities such as soccer', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1086, N'Contoso SLR Camera M143 Grey', N'Continuous shooting up to 5 frames per second', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1087, N'Contoso SLR Camera 35\” M358 Grey', N'Compact flash Type I/II, micro drive', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1088, N'Contoso SLR Camera X144 Silver Grey', N'Dynamic integrated dust reduction system', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1089, N'Contoso SLR Camera 35\” X358 Silver Grey', N'Fast startup and split-second shutter response, shoot continuously at up to 3 frames per second', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1090, N'Contoso SLR Camera M144 Silver Grey', N'Digital camera - SLR with live view mode, 5 in x 2.4 in x 3.9 in, 15.9 oz', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1091, N'Contoso SLR Camera 35\” M358 Silver Grey', N'5 in x 2.4 in x 3.9 in. 15.9 oz. Digital camera - SLR with Live View mode', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1092, N'Contoso SLR Camera X144 ld', N'Digital camera - SLR with live view mode, 5.8 in x 2.9 in x 4.5 in, 1.8 lbs', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1093, N'Contoso SLR Camera 35\” X358 ld', N'Digital camera - SLR with live view mode', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1094, N'Contoso SLR Camera M144 ld', N'Digital camera - SLR with live view mode, 5.1 in x 2.4 in x 3.9 in, 16.8 oz', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1095, N'Contoso SLR Camera 35\” M358 ld', N'Digital camera - SLR with live view mode', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1096, N'Contoso SLR Camera X145 Pink', N'Digital camera - SLR with live view mode', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1097, N'Contoso SLR Camera 35\” X358 Pink', N'Digital camera - SLR with live view mode', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1098, N'Contoso SLR Camera M145 Pink', N'Optical - fixed eye-level pen, LCD display', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1099, N'Contoso SLR Camera 35\” M358 Pink', N'Digital camera - SLR with live view mode', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1100, N'Contoso SLR Camera X145 Blue', N'Digital camera - SLR with live view mode, movie recording, 5.1 in x 2.4 in x 3.9 in, 16.9 oz', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1101, N'Contoso SLR Camera 35\” X358 Blue', N'Digital camera - SLR with live view mode', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1102, N'Contoso SLR Camera M145 Blue', N'Digital camera - SLR with live view mode, 5.1 in x 2.1 in x 3.6 in, 13.2 oz', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1103, N'Contoso SLR Camera 35\” M358 Blue', N'Digital camera – SLR, 4.8 in x 2.7 in x 3.6 in, 1.1 lbs', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1104, N'Contoso SLR Camera X146 Orange', N'Digital camera - SLR with live view mode', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1105, N'Contoso SLR Camera 35\” X358 Orange', N'Digital camera – SLR, 4.5 in x 2.5 in x 3.4 in, 1.2 lbs', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1106, N'Contoso SLR Camera M146 Orange', N'Digital camera – SLR, 5.2 in x 2.8 in x 3.7 in, 19.2 oz', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1107, N'Contoso SLR Camera 35\” M358 Orange', N'Digital camera – SLR, 5.2 in x 2.8 in x 3.7 in, 19.2 oz', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1108, N'Fabrikam SLR Camera X146 Black', N'On-screen autofocus with live view displays subjects in focus on the LCD the instant the shutter is pressed halfway', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1109, N'Fabrikam SLR Camera 35\” X358 Black', N'Choice of data storage options - accepts compact flash type I & II, UDMA, Micro drives, and XD-picture cards digital 14-42mm F3.5-5.6 lens', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1110, N'Fabrikam SLR Camera M146 Black', N'SLR camera, 4.8 in x 2.7 in x 3.6 in, 1.1 lbs', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1111, N'Fabrikam SLR Camera 35\” M358 Black', N'8 digital-variable Program Automatic Shooting Modes.', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1112, N'Fabrikam SLR Camera X147 Silver', N'Compact 3x zoom lens covering the most frequently used focal range', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1113, N'Fabrikam SLR Camera 35\” X358 Silver', N'Powerful megapixel live-MOS sensor', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1114, N'Fabrikam SLR Camera M147 Silver', N'Powerful 12.3-megapixel live-MOSLO sensor', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1115, N'Fabrikam SLR Camera 35\” M358 Silver', N'4.8 In x 2.7 in x 3.6 in. 1.1 lbs', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1116, N'Fabrikam SLR Camera X147 Grey', N'Fast startup and split-second shutter response, shoot continuously at up to 3 frames per second', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1117, N'Fabrikam SLR Camera 35\” X358 Grey', N'Shoot at up to 2.5 frames per second, capturing high-quality action sequences of children in sporting activities such as soccer', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1118, N'Fabrikam SLR Camera M147 Grey', N'Continuous shooting up to 5 frames per second', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1119, N'Fabrikam SLR Camera 35\” M358 Grey', N'Compact flash type I/II, micro drive', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1120, N'Fabrikam SLR Camera X148 Silver Grey', N'Dynamic integrated dust reduction system', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1121, N'Fabrikam SLR Camera 35\” X358 Silver Grey', N'Fast startup and split-second shutter response, shoot continuously at up to 3 frames per second', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1122, N'Fabrikam SLR Camera M148 Silver Grey', N'Digital camera - SLR with live view mode, 5 in x 2.4 in x 3.9 in, 15.9 oz', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1123, N'Fabrikam SLR Camera 35\” M358 Silver Grey', N'5 in x 2.4 in x 3.9 in, 15.9 oz, digital camera - SLR with live view mode', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1124, N'Fabrikam SLR Camera X148 ld', N'Digital camera - SLR with live view mode, 5.8 in x 2.9 in x 4.5 in, 1.8 lbs', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1125, N'Fabrikam SLR Camera 35\” X358 ld', N'Digital camera - SLR with live view mode', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1126, N'Fabrikam SLR Camera M148 ld', N'Digital camera - SLR with live view mode, 5.1 in x 2.4 in x 3.9 in, 16.8 oz', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1127, N'Fabrikam SLR Camera 35\” M358 ld', N'Digital camera - SLR with live view mode', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1128, N'Fabrikam SLR Camera X149 Pink', N'Digital camera - SLR with live view mode', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1129, N'Fabrikam SLR Camera 35\” X358 Pink', N'Digital camera - SLR with live view mode', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1130, N'Fabrikam SLR Camera M149 Pink', N'Optical - fixed eye-level pen, LCD display', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1131, N'Fabrikam SLR Camera 35\” M358 Pink', N'Digital camera - SLR with live view mode', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1132, N'Fabrikam SLR Camera X149 Blue', N'Digital camera - SLR with live view mode, movie recording, 5.1 in x 2.4 in x 3.9 in, 16.9 oz', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1133, N'Fabrikam SLR Camera 35\” X358 Blue', N'Digital camera - SLR with live view mode', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1134, N'Fabrikam SLR Camera M149 Blue', N'Digital camera - SLR with live view mode, 5.1 in x 2.1 in x 3.6 in, 13.2 oz', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1135, N'Fabrikam SLR Camera 35\” M358 Blue', N'Digital camera – SLR, 4.8 in x 2.7 in x 3.6 in, 1.1 lbs', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1136, N'Fabrikam SLR Camera X150 Orange', N'Digital camera - SLR with live view mode', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1137, N'Fabrikam SLR Camera 35\” X358 Orange', N'Digital camera – SLR, 4.5 in x 2.5 in x 3.4 in, 1.2 lbs', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1138, N'Fabrikam SLR Camera M150 Orange', N'Digital camera – SLR, 5.2 in x 2.8 in x 3.7 in, 19.2 oz', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1139, N'Fabrikam SLR Camera 35\” M358 Orange', N'Digital camera – SLR, 5.2 in x 2.8 in x 3.7 in, 19.2 oz', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1140, N'Fabrikam SLR Camera X150 Green', N'Digital camera - SLR with live view mode', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1141, N'Fabrikam SLR Camera 35\” X358 Green', N'Digital camera – SLR, 4.5 in x 2.5 in x 3.4 in, 1.2 lbs', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1142, N'Fabrikam SLR Camera M150 Green', N'Digital camera – SLR, 5.2 in x 2.8 in x 3.7 in, 19.2 oz', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1143, N'Fabrikam SLR Camera 35\” M358 Green', N'Digital camera – SLR, 5.2 in x 2.8 in x 3.7 in, 19.2 oz', N'Cameras and camcorders ', N'Digital SLR Cameras', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1144, N'Fabrikam Home and Vacation Moviemaker 1\” 25mm M400 Blue', N'720i or 720p high definition or standard definition, 4mm, 47.3º', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1145, N'Fabrikam Home and Vacation Moviemaker 1/2\” 3mm M300 Orange', N'720i or 720p high definition or standard definition, 4mm, 43’, 47.3º', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1146, N'Fabrikam Home and vacation moviemaker 1/3\” 8.5mm M200 Blue', N'720i or 720p high definition or standard definition, 4mm, 43’, 47.3º', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1147, N'Fabrikam Home and vacation moviemaker 2/3'''' 17mm M103 Black', N'720i or 720p high definition or standard definition, 4mm, 43’, 47.3º', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1148, N'Fabrikam Budget Movie-Maker 1'''' 25mm E400 Black', N'Standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1149, N'Fabrikam Budget Movie-Maker 1/2'''' 3mm E300 Black', N'Standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1150, N'Fabrikam Budget Movie-Maker 1/3'''' 8.5mm E200 Black', N'Standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1151, N'Fabrikam Budget Movie-Maker 2/3'''' 17mm E100 Black', N'Standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1152, N'Fabrikam Trendsetter 1\” 25mm X400 Blue', N'1080i or 1080p high definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1153, N'Fabrikam Trendsetter 1/2'''' 3mm X300 Black', N'1080i or 1080p high definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1154, N'Fabrikam Trendsetter 1/3\” 8.5mm X200 Blue', N'1080i or 1080p high definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1155, N'Fabrikam Trendsetter 2/3'''' 17mm X100 Black', N'1080i or 1080p high definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1156, N'Fabrikam Independent Filmmaker 1'''' 25mm X400 Black', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1157, N'Fabrikam Independent Filmmaker 1/2\” 3mm X300 Orange', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1158, N'Fabrikam Independent Filmmaker 1/3'''' 8.5mm X200 Black', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1159, N'Fabrikam Independent Filmmaker 2/3\” 17mm X100 Blue', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1160, N'Fabrikam Business Videographer 1\” 25mm M600 Blue', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1161, N'Fabrikam Business Videographer 1/2'''' 3mm M500 Black', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1162, N'Fabrikam Business Videographer 1/3'''' 8.5mm M380 Black', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1163, N'Fabrikam Business Videographer 2/3'''' 17mm M280 Black', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1164, N'Fabrikam Social videographer 1'''' 25mm E400 Black', N'720p high definition or VGA', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1165, N'Fabrikam Social Videographer 1/2'''' 3mm E300 Black', N'720p high definition or VGA', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1166, N'Fabrikam Social Videographer 1/3'''' 8.5mm E200 Black', N'720p high definition or VGA', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1167, N'Fabrikam Social Videographer 2/3'''' 17mm E100 Black', N'720p high definition or VGA', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1168, N'Fabrikam Home and Vacation Moviemaker 1'''' 25mm M400 White', N'720i or 720p high definition or standard definition, 4mm,47.3º', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1169, N'Fabrikam Home and Vacation Moviemaker 1/2'''' 3mm M300 White', N'720i or 720p high definition or standard definition, 4mm, 43'', 47.3º', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1170, N'Fabrikam Home and Vacation Moviemaker 1/3'''' 8.5mm M200 White', N'720i or 720p high definition or standard definition, 4mm, 43'', 47.3º', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1171, N'Fabrikam Home and Vacation Moviemaker 2/3'''' 17mm M103 White', N'720i or 720p high definition or standard definition, 4mm, 43'', 47.3º', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1172, N'Fabrikam Budget Moviemaker 1'''' 25mm E400 White', N'Standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1173, N'Fabrikam Budget Moviemaker 1/2'''' 3mm E300 White', N'Standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1174, N'Fabrikam Budget Moviemaker 1/3'''' 8.5mm E200 White', N'Standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1175, N'Fabrikam Budget Moviemaker 2/3'''' 17mm E100 White', N'Standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1176, N'Fabrikam Trendsetter 1'''' 25mm X400 White', N'1080i or 1080p high definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1177, N'Fabrikam Trendsetter 1/2'''' 3mm X300 White', N'1080i or 1080p high definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1178, N'Fabrikam Trendsetter 1/3'''' 8.5mm X200 White', N'1080i or 1080p high definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1179, N'Fabrikam Trendsetter 2/3'''' 17mm X100 White', N'1080i or 1080p high definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1180, N'Fabrikam Independent filmmaker 1'''' 25mm X400 White', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1181, N'Fabrikam Independent filmmaker 1/2'''' 3mm X300 White', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1182, N'Fabrikam Independent filmmaker 1/3'''' 8.5mm X200 White', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1183, N'Fabrikam Independent filmmaker 2/3'''' 17mm X100 White', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1184, N'Fabrikam Business Videographer 1'''' 25mm M600 White', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1185, N'Fabrikam Business Videographer 1/2\” 3mm M500 Orange', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1186, N'Fabrikam Business Videographer 1/3\” 8.5mm M380 Orange', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1187, N'Fabrikam Business Videographer 2/3\” 17mm M280 Orange', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1188, N'Fabrikam Social Videographer 1\” 25mm E400 Orange', N'720p high definition or VGA', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1189, N'Fabrikam Social Videographer 1/2\” 3mm E300 Orange', N'720p high definition or VGA', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1190, N'Fabrikam Social Videographer 1/3\” 8.5mm E200 Orange', N'720p high definition or VGA', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1191, N'Fabrikam Social Videographer 2/3\” 17mm E100 Orange', N'720p high definition or VGA', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1192, N'Fabrikam Home and Vacation Moviemaker 1'''' 25mm M400 Grey', N'720i or 720p high definition or standard definition, 4mm, 47.3º', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1193, N'Fabrikam Home and Vacation Moviemaker 1/2'''' 3mm M300 Grey', N'720i or 720p high definition or standard definition, 4mm, 43'', 47.3º', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1194, N'Fabrikam Home and Vacation Moviemaker 1/3'''' 8.5mm M200 Grey', N'720i or 720p high definition or standard definition, 4mm, 43'', 47.3º', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1195, N'Fabrikam Home and Vacation Moviemaker 2/3'''' 17mm M103 Grey', N'720i or 720p high definition or standard definition, 4mm, 43'', 47.3º', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1196, N'Fabrikam Budget Moviemaker 1'''' 25mm E400 Grey', N'Standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1197, N'Fabrikam Budget Moviemaker 1/2'''' 3mm E300 Grey', N'Standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1198, N'Fabrikam Budget Moviemaker 1/3'''' 8.5mm E200 Grey', N'Standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1199, N'Fabrikam Budget Moviemaker 2/3'''' 17mm E100 Grey', N'Standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1200, N'Fabrikam Trendsetter 1'''' 25mm X400 Grey', N'1080i or 1080p high definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1201, N'Fabrikam Trendsetter 1/2'''' 3mm X300 Grey', N'1080i or 1080p high definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1202, N'Fabrikam Trendsetter 1/3'''' 8.5mm X200 Grey', N'1080i or 1080p high definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1203, N'Fabrikam Trendsetter 2/3'''' 17mm X100 Grey', N'1080i or 1080p high definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1204, N'Fabrikam Independent Filmmaker 1'''' 25mm X400 Grey', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1205, N'Fabrikam Independent Filmmaker 1/2'''' 3mm X300 Grey', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1206, N'Fabrikam Independent Filmmaker 1/3'''' 8.5mm X200 Grey', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1207, N'Fabrikam Independent Filmmaker 2/3'''' 17mm X100 Grey', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1208, N'Fabrikam Business Videographer 1'''' 25mm M600 Grey', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1209, N'Fabrikam Business Videographer 1/2'''' 3mm M500 Grey', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1210, N'Fabrikam Business Videographer 1/3'''' 8.5mm M380 Grey', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1211, N'Fabrikam Business Videographer 2/3'''' 17mm M280 Grey', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1212, N'Fabrikam Social Videographer 1'''' 25mm E400 Grey', N'720p high definition or VGA', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1213, N'Fabrikam Social Videographer 1/2'''' 3mm E300 Grey', N'720p high definition or VGA', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1214, N'Fabrikam Social Videographer 1/3'''' 8.5mm E200 Grey', N'720p high definition or VGA', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1215, N'Fabrikam Social Videographer 2/3'''' 17mm E100 Grey', N'720p high definition or VGA', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1216, N'Fabrikam Home and Vacation Moviemaker 1'''' 25mm M400 Black', N'720i or 720p high definition or standard definition, 4mm, 47.3º', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1217, N'Fabrikam Home and Vacation Moviemaker 1/2'''' 3mm M300 Black', N'720i or 720p high definition or standard definition, 4mm, 43'', 47.3º', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1218, N'Fabrikam Home and Vacation Moviemaker 1/3'''' 8.5mm M200 Black', N'720i or 720p high definition or standard definition, 4mm, 43'', 47.3º', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1219, N'Fabrikam Home and Vacation Moviemaker 2/3\” 17mm M103 Blue', N'720i or 720p high definition or standard definition, 4mm, 43'', 47.3º', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1220, N'Fabrikam Budget Moviemaker 1'''' 25mm E400 Black', N'Standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1221, N'Fabrikam Budget Moviemaker 1/2'''' 3mm E300 Black', N'Standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1222, N'Fabrikam Budget Moviemaker 1/3'''' 8.5mm E200 Black', N'Standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1223, N'Fabrikam Budget Moviemaker 2/3'''' 17mm E100 Black', N'Standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1224, N'Fabrikam Trendsetter 1'''' 25mm X400 Black', N'1080i or 1080p high definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1225, N'Fabrikam Trendsetter 1/2\” 3mm X300 Orange', N'1080i or 1080p high definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1226, N'Fabrikam Trendsetter 1/3'''' 8.5mm X200 Black', N'1080i or 1080p high definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1227, N'Fabrikam Trendsetter 2/3\” 17mm X100 Orange', N'1080i or 1080p high definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1228, N'Fabrikam Independent Filmmaker 1\” 25mm X400 Blue', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1229, N'Fabrikam Independent Filmmaker 1/2'''' 3mm X300 Black', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1230, N'Fabrikam Independent Filmmaker 1/3\” 8.5mm X200 Blue', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1231, N'Fabrikam Independent Filmmaker 2/3'''' 17mm X100 Black', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1232, N'Fabrikam Business Videographer 1'''' 25mm M600 Black', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1233, N'Fabrikam Business Videographer 1/2\” 3mm M500 Blue', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1234, N'Fabrikam Business Videographer 1/3\” 8.5mm M380 Blue', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1235, N'Fabrikam Business Videographer 2/3\” 17mm M280 Blue', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1236, N'Fabrikam Social Videographer 1\” 25mm E400 Blue', N'720p high definition or VGA', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1237, N'Fabrikam Social Videographer 1/2\” 3mm E300 Blue', N'720p high definition or VGA', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1238, N'Fabrikam Social Videographer 1/3\” 8.5mm E200 Blue', N'720p high definition or VGA', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1239, N'Fabrikam Social Videographer 2/3\” 17mm E100 Blue', N'720p high definition or VGA', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1240, N'Fabrikam Business Videographer 1/2'''' 3mm M500 White', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1241, N'Fabrikam Business Videographer 1/3'''' 8.5mm M380 White', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1242, N'Fabrikam Business Videographer 2/3'''' 17mm M280 White', N'1080i/p or 720p high definition or standard definition', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1243, N'Fabrikam Social Videographer 1'''' 25mm E400 White', N'720p high definition or VGA', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1244, N'Fabrikam Social Videographer 1/2'''' 3mm E300 White', N'720p high definition or VGA', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1245, N'Fabrikam Social Videographer 1/3'''' 8.5mm E200 White', N'720p high definition or VGA', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1246, N'Fabrikam Social Videographer 2/3'''' 17mm E100 White', N'720p high definition or VGA', N'Cameras and camcorders ', N'Camcorders', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1247, N'Contoso Rechargeable Li-Ion Battery Pack E300 Silver', N'Width 1-7/16 x height 11/32 x depth 1-11/16', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1248, N'Contoso Rechargeable Li-Ion Battery Pack E300 Black', N'Width 1-7/16 x height 11/32 x depth 1-11/17', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1249, N'Contoso Rechargeable Li-Ion Battery Pack E300 White', N'Width 1-7/16 x height 11/32 x depth 1-11/18', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1250, N'Contoso Travel Charger for S-Series Battery E302 Silver', N'Fully charges an NP-BG1 battery in approximately 1.5 hours', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1251, N'Contoso Travel Charger for S-Series Battery E302 Black', N'Fully charges an NP-BG1 battery in approximately 1.5 hours', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1252, N'Contoso Travel Charger for S-Series Battery E302 White', N'Fully charges an NP-BG1 battery in approximately 1.5 hours', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1253, N'Contoso General Carrying Case E304 Silver', N'General carrying case for compatible cyber shot digital camera, protect camera from occasional bumps and bruises', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1254, N'Contoso General Carrying Case E304 Black', N'General carrying case for compatible cyber shot digital camera, protect camera from occasional bumps and bruises', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1255, N'Contoso General Carrying Case E304 White', N'General carrying case for compatible cyber shot digital camera, protect camera from occasional bumps and bruises', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1256, N'Contoso General Carrying Case E304 Blue', N'General carrying case for compatible cyber shot digital camera, protect camera from occasional bumps and bruises', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1257, N'Contoso Cyber Shot Digital Cameras Adapter E306 Pink', N'Supplies a steady and reliable source of power, perfect for use while transferring images', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1258, N'Contoso Cyber Shot Digital Cameras Adapter E306 Blue', N'Supplies a steady and reliable source of power, perfect for use while transferring images', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1259, N'Contoso Cyber Shot Digital Cameras Adapter E306 Black', N'Supplies a steady and reliable source of power, perfect for use while transferring images', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1260, N'Contoso Multi-Use Terminal Cable E308 Silver', N'Connects Cyber-shot camera to most other compatible products, includes video, audio and USB out, plus it connects to your power supply', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1261, N'Contoso Multi-Use Terminal Cable E308 White', N'Connects Cyber-shot camera to most other compatible products, includes video, audio and USB out, plus it connects to your power supply', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1262, N'Contoso Multi-Use Terminal Cable E308 Black', N'Connects Cyber-shot camera to most other compatible products, includes video, audio and USB out, plus it connects to your power supply', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1263, N'Contoso Rechargeable Battery Pack E310 Silver', N'Li-Ion rechargeable battery pack for digital SLR cameras', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1264, N'Contoso Rechargeable Battery Pack E310 Black', N'Li-Ion rechargeable battery pack for digital SLR cameras', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1265, N'Contoso Rechargeable Battery Pack E310 White', N'Li-Ion rechargeable battery pack for digital SLR cameras', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1266, N'Contoso Carrying Case E312 Silver', N'Soft carrying case for DSLR, user-friendly system case', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1267, N'Contoso Carrying Case E312 Pink', N'Soft carrying case for DSLR, user-friendly system case', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1268, N'Contoso Carrying Case E312 White', N'Soft carrying case for DSLR, user-friendly system case', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1269, N'Contoso Carrying Case E312 Blue', N'Soft carrying case for DSLR, user-friendly system case', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1270, N'Contoso Lens Cap Keeper E314 Pink', N'Attaches lens cap to the lens, to avoid losing it', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1271, N'Contoso Lens Cap Keeper E314 Yellow', N'Attaches lens cap to the lens, to avoid losing it', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1272, N'Contoso Lens Cap Keeper E314 White', N'Attaches lens cap to the lens, to avoid losing it', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1273, N'Contoso Lens Cap Keeper E314 Silver', N'Attaches lens cap to the lens, to avoid losing it', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1274, N'Contoso Digital Cameras Lightweight Tripod E316 White', N'Panning angle: 360 degrees, maximum Load: 3kg tilt angle: 60-90 degrees  ', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1275, N'Contoso Digital Cameras Lightweight Tripod E316 Black', N'Panning angle: 360 degrees, maximum Load: 3kg tilt angle: 60-90 degrees  ', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1276, N'Contoso Digital Cameras Lightweight Tripod E316 Pink', N'Panning angle: 360 degrees, maximum Load: 3kg tilt angle: 60-90 degrees  ', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1277, N'Contoso Digital Cameras Lightweight Tripod E316 Silver', N'Panning Angle: 360 degrees, maximum Load: 3kg tilt angle: 60-90 degrees  ', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1278, N'Contoso General Soft Carrying Case E318 Blue', N'General purpose soft carrying case for slim cyber shot digital cameras', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1279, N'Contoso General Soft Carrying Case E318 Black', N'General purpose soft carrying case for slim cyber shot digital cameras', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1280, N'Contoso General Soft Carrying Case E318 Silver', N'General purpose soft carrying case for slim cyber shot digital cameras', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1281, N'Contoso General Soft Carrying Case E318 White', N'General purpose soft carrying case for slim cyber shot digital cameras', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1282, N'Contoso Mini Battery Charger Kit E320 Red', N'Universal 110-240V AC power source, a car adapter', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1283, N'Contoso Mini Battery Charger Kit E320 White', N'Universal 110-240V AC power source, a car adapter', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1284, N'Contoso Mini Battery Charger Kit E320 Black', N'Universal 110-240V AC power source, a car adapter', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1285, N'Contoso Mini Battery Charger Kit E320 Silver', N'Universal 110-240V AC power source, a car adapter', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1286, N'Contoso Genuine Leather Grip Belt E322 Black', N'Fits any system DSLR camera: The grip belt fastens simply and snugly to any system DSLR', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1287, N'Contoso Genuine Leather Grip Belt E322 White', N'Fits any system DSLR camera: The grip belt fastens simply and snugly to any system DSLR', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1288, N'Contoso Genuine Leather Grip Belt E322 Silver', N'Fits any system DSLR camera: The grip belt fastens simply and snugly to any system DSLR', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1289, N'Contoso Genuine Leather Grip Belt E322 Grey', N'Fits any system DSLR camera: The grip belt fastens simply and snugly to any system DSLR', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1290, N'Contoso Macro Zoom Lens X300 Silver', N'70-300mm macro lens with f/4-5.6 maximum aperture for digital or 35mm cameras', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1291, N'Contoso Macro Zoom Lens X300 White', N'70-300mm macro lens with f/4-5.6 maximum aperture for digital or 35mm cameras', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1292, N'Contoso Macro Zoom Lens X300 Black', N'70-300mm macro lens with f/4-5.6 maximum aperture for digital or 35mm cameras', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1293, N'Contoso Telephoto Conversion Lens X400 Silver', N'Telephoto conversion Lens for compatible cyber shot digital cameras', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1294, N'Contoso Telephoto Conversion Lens X400 White', N'Telephoto conversion Lens for compatible cyber shot digital cameras', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1295, N'Contoso Telephoto Conversion Lens X400 Black', N'Telephoto conversion Lens for compatible cyber shot digital cameras', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1296, N'Contoso USB Cable M250 Black', N'Cable for transferring still images from the camera via USB port', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1297, N'Contoso USB Cable M250 White', N'Cable for transferring still images from the camera via USB port', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1298, N'Contoso USB Cable M250 Yellow', N'Cable for transferring still images from the camera via USB port', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1299, N'Contoso USB Cable M250 Blue', N'Cable for transferring still images from the camera via USB port', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1300, N'Contoso Telephoto Conversion Lens M350 Black', N'Magnification X2.6, Diameter 45mm', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1301, N'Contoso Telephoto Conversion Lens M350 White', N'Magnification X2.6, Diameter 45mm', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1302, N'Contoso Telephoto Conversion Lens M350 Silver', N'Magnification X2.6, Diameter 45mm', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1303, N'Contoso Telephoto Conversion Lens M350 Blue', N'Magnification X2.6, Diameter 45mm', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1304, N'Contoso Lens Adapter M450 White', N'Lens adapter for cyber shot M-series digital cameras', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1305, N'Contoso Lens Adapter M450 Silver', N'Lens adapter for cyber shot M-series digital cameras', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1306, N'Contoso Lens Adapter M450 Black', N'Lens adapter for cyber shot M-series digital cameras', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1307, N'Contoso Lens Adapter M450 Grey', N'Lens adapter for cyber shot M-series digital cameras', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1308, N'Contoso Digital Camera/Camcorder USB Cable E324 Purple', N'Spare/replacement cable for USB enabled cyber-shot digital cameras', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1309, N'Contoso Digital Camera/Camcorder USB Cable E324 Black', N'Spare/replacement cable for USB enabled cyber - shot digital cameras', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1310, N'Contoso Digital Camera/Camcorder USB Cable E324 Silver', N'Spare/replacement cable for USB enabled cyber - shot digital cameras', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1311, N'Contoso Digital Camera/Camcorder USB Cable E324 White', N'Spare/replacement cable for USB enabled cyber - shot digital cameras', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1312, N'Contoso Conversion Lens M550 Blue', N'1.7x Magnification, autofocus feature, high grade construction', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1313, N'Contoso Conversion Lens M550 Black', N'1.7x Magnification, autofocus feature, high grade construction', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1314, N'Contoso Conversion Lens M550 Silver', N'1.7x Magnification, autofocus feature, high grade construction', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1315, N'Contoso Conversion Lens M550 Pink', N'1.7x Magnification, autofocus feature, high grade construction', N'Cameras and camcorders ', N'Cameras & Camcorders Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1316, N'Contoso Single-line phones E10 Black', N'1-line operation, LCD display - monochrome   ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1317, N'Contoso Dual Handset Cordless Phone System  E20 Black', N'Dual handset cordless phone system with answering system', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1318, N'Contoso 3 Handset Cordless Phone System  E30 Black', N'16-minute all-digital answering system, wireless network friendly  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1319, N'Contoso Multi-line phones M30 Black', N'3 handsets, 1 base, and 2 chargers  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1320, N'Contoso KSU-less key system M38 Black', N'Enjoy unlimited US calling, exceptional voice quality', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1321, N'Contoso Hybrid system M60 Black', N'Dual keypad, talking caller ID, handset speaker phone, expandable up to 6 handsets  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1322, N'Contoso Private Branch Exchange M88 Black', N'Caller ID feature, lighted key pad ,handset speakerphone', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1323, N'Contoso 4 Handset Cordless Phone System M86 Black', N'Lighted keypad, handset speaker phone, expandable up to 6 handsets  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1324, N'Contoso Private Automatic Branch Exchange M65 Black', N'Digital answering machine with 16 minutes recording time  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1325, N'Contoso Electronic Private Automatic Branch Exchange M90 Black', N'Phonebook directory with memory for 20 entries', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1326, N'Contoso Centrex Phone System L10 Black', N'5.8 GHz frequency that won''t interfere with wireless networks, caller ID/Call waiting compatible with memory for last 45 callers', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1327, N'Contoso In front of Centrex L15 Black', N'Lighted Keypad, caller ID, 3-way conferencing, expandable up to 6 handsets', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1328, N'Contoso behind Centrex X15 Black', N'LCD screen for viewing contacts, compatible with PCs, plug into USB port for use  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1329, N'Contoso Phone with 13-Number Memory (210) M301 Black', N'Phone with 13-number memory (210)', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1330, N'Contoso Expandable Cordless Phone System M008 Black', N'Special Backlit keypad, receiver volume control, handset volume control', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1331, N'Contoso Phone System Accessory Handset with Charger M308 Black', N'Built-in 60-minute digital answering machine  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1332, N'Contoso 2-Line Corded Cordless Telephone M202 Black', N'Digital duplex speakerphones built into back of handset, built-in clock with alarm on handset  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1333, N'Contoso 4-Line Corded Cordless Telephone M203 Black', N'4-Line operation, includes 1 corded handset with base, 1 cordless handset with charger, up to 6 handsets capability 60 channels  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1334, N'Contoso Expandable 3-Handset Cordless Phone System M204 Black', N'Additional handset for phone systems, light-up indicator for quick reference, backlit keypad for easy use, Digital speakerphone for hands-free use or conference calls, space-saving wall-mountable design  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1335, N'Contoso Expandable 2-Handset Cordless Phone System M205 Black', N'Additional handset for phone systems, light-up indicator for quick reference, backlit keypad for easy use, digital speakerphone for hands-free use or conference calls, space-saving wall-mountable design  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1336, N'Contoso Expandable 4-Handset Cordless Phone System M206 Black', N'Additional handset for phone systems, light-up indicator for quick reference, backlit keypad for easy use, Digital speakerphone for hands-free use or conference calls, space-saving wall-mountable design  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1337, N'Contoso Expandable1-Handset Cordless Phone System M207 Black', N'Additional handset for phone systems, light-up indicator for quick reference, backlit keypad for easy use, Digital speakerphone for hands-free use or conference calls, space-saving wall-mountable design  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1338, N'Contoso Digital Cordless Expansion Handset Phone M900 Black', N'Additional handset for phone systems, light-up indicator for quick reference, backlit keypad for easy use, Digital speakerphone for hands-free use or conference calls, space-saving wall-mountable design  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1339, N'Contoso 2-Line Speakerphone M109 Black', N'2-Line speakerphone, conference call between an outside line and up to 2 handsets  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1340, N'Contoso Phone with Memory Dialing-single line E88 Black', N'Memory for 100 contact entries', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1341, N'Contoso Phone with Memory Dialing-2 lines E90 Black', N'Memory for 100 contact entries, three-party conferencing, and each line can be set to its own distinct ringtone  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1342, N'Contoso Integrated Business Phone With card L10 Black', N'Receiver volume control, 32-digit redials, 12 memory-dialing presets, up to 21 digits', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1343, N'Contoso Integrated Business Phone L08 Black', N'Business Speakerphone built into base, headset jack for hands-free operation with optional headset', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1344, N'Contoso Phone for MSN E200 Black', N'Phone for MSN', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1345, N'Contoso 4-Line Expandable Cordless Phone System M900 Black', N'Operate via wireless Internet connection, making calls to reviewing call history; support all standard wireless network encryption protocols', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1346, N'Contoso Lifestyles Series - Big Button Cordless phone M800 Black', N'Big button cordless phone   ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1347, N'Contoso Bedroom Phone with AM/FM Stereo and Call Waiting Caller ID M600 Black', N'Up to 15 hours battery life/talk time; up to 8 days standby  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1348, N'Contoso Waterproof Accessory Handset and Charging Cradle M609 Black', N'Waterproof Accessory Handset and Charging Cradle', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1349, N'Contoso Single-line phones E10 White', N'1-line operation, LCD display - monochrome', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1350, N'Contoso Dual Handset Cordless Phone System E20 White', N'Dual Handset cordless phone system with answering system', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1351, N'Contoso 3 Handset Cordless Phone System E30 White', N'16-minute all-digital answering system, wireless network friendly  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1352, N'Contoso Multi-line phones M30 White', N'3 handsets, 1 base, and 2 chargers  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1353, N'Contoso KSU-less key system M38 White', N'Enjoy unlimited US calling, exceptional voice quality', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1354, N'Contoso Hybrid system M60 White', N'Dual Keypad, talking caller ID, handset speaker phone, expandable up to 6 handsets  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1355, N'Contoso Private Branch Exchange M88 White', N'Caller ID feature, Lighted keypad, handset speakerphone', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1356, N'Contoso 4 Handset Cordless Phone System M86 White', N'Lighted keypad, handset speaker phone, expandable up to 6 handsets  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1357, N'Contoso Private Automatic Branch Exchange M65 White', N'Digital answering machine with 16 minutes recording time  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1358, N'Contoso Electronic Private Automatic Branch Exchange M90 White', N'Phonebook directory with memory for 20 entries silver', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1359, N'Contoso Centrex Phone System L10 White', N'5.8 GHz frequency that won''t interfere with wireless networks, caller ID/Call waiting compatible with memory for last 45 callers', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1360, N'Contoso In front of Centrex L15 White', N'Lighted keypad, caller ID, 3-way conferencing, expandable up to 6 handsets', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1361, N'Contoso Behind Centrex X15 White', N'LCD screen for viewing contacts, compatible with PCs, plug into USB port for use  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1362, N'Contoso Phone with 13-Number Memory (210) M301 White', N'Phone with 13-number memory (210)', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1363, N'Contoso Expandable Cordless Phone System M008 White', N'Special backlit keypad, receiver volume control, handset volume control', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1364, N'Contoso Phone System Accessory Handset with Charger M308 White', N'Built-in 60-minute digital answering machine  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1365, N'Contoso 2-Line Corded Cordless Telephone M202 White', N'Digital duplex speakerphones built into back of handset, Built-in clock with alarm on handset  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1366, N'Contoso 4-Line Corded Cordless Telephone M203 White', N'4-Line operation, includes 1 corded handset with base, 1 cordless handset with charger, up to 6 handsets capability 60 channels  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1367, N'Contoso Expandable 3-Handset Cordless Phone System M204 White', N'Additional handset for phone systems, light-up indicator for quick reference, backlit keypad for easy use, digital speakerphone for hands-free use or conference calls, space-saving wall-mountable design  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1368, N'Contoso Expandable 2-Handset Cordless Phone System M205 White', N'Additional handset for phone systems, light-up indicator for quick reference, backlit keypad for easy use, digital speakerphone for hands-free use or conference calls, space-saving wall-mountable design  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1369, N'Contoso Expandable 4-Handset Cordless Phone System M206 White', N'Additional handset for phone systems, light-up indicator for quick reference, backlit keypad for easy use, digital speakerphone for hands-free use or conference calls, space-saving wall-mountable design  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1370, N'Contoso Expandable1-Handset Cordless Phone System M207 White', N'Additional handset for phone systems, light-up indicator for quick reference, backlit keypad for easy use, digital speakerphone for hands-free use or conference calls, space-saving wall-mountable design  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1371, N'Contoso Digital Cordless Expansion Handset Phone M900 White', N'Additional handset for phone systems, light-up indicator for quick reference, backlit keypad for easy use, Digital speakerphone for hands-free use or conference calls, space-saving wall-mountable design  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1372, N'Contoso 2-Line Speakerphone M109 White', N'Line speakerphone, conference call between an outside line and up to 2 handsets  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1373, N'Contoso Phone with Memory Dialing-single line E88 White', N'Memory for 100 contact entries', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1374, N'Contoso Phone with Memory Dialing-2 lines E90 White', N'Memory for 100 contact entries, three-party conferencing, each line can be set to its own distinct ringtone  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1375, N'Contoso Integrated Business Phone With card L10 White', N'Receiver volume control, 32-digit redials, 12 memory-dialing presets, up to 21 digits', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1376, N'Contoso Integrated Business Phone L08 White', N'Business Speakerphone built into base, headset jack for hands-free operation with optional headset', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1377, N'Contoso Phone for MSN E200 White', N'Phone for MSN', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1378, N'Contoso 4-Line Expandable Cordless Phone System M900 White', N'Operate via wireless Internet connection, making calls to reviewing call history; support all standard wireless network encryption protocols', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1379, N'Contoso Lifestyles Series - Big Button Cordless phone M800 White', N'Big button cordless phone   ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1380, N'Contoso Bedroom Phone with AM/FM Stereo and Call Waiting Caller ID M600 White', N'Up to 15 hours battery life/talk time; up to 8 days standby  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1381, N'Contoso Waterproof Accessory Handset and Charging Cradle M609 White', N'Waterproof accessory handset and charging cradle', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1382, N'Contoso Single-line phones E10 Grey', N'1-line operation, LCD display - monochrome', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1383, N'Contoso Dual Handset Cordless Phone System E20 Grey', N'Dual handset cordless phone system with answering system', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1384, N'Contoso 3 Handset Cordless Phone System E30 Grey', N'16-minute all-digital answering system, wireless network friendly  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1385, N'Contoso Multi-line phones M30 Grey', N'3 handsets, 1 base, and 2 chargers  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1386, N'Contoso KSU-less key system M38 Grey', N'Enjoy unlimited US calling, exceptional voice quality', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1387, N'Contoso Hybrid system M60 Grey', N'Dual Keypad, talking caller ID, handset speakerphone, expandable up to 6 handsets  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1388, N'Contoso Private Branch Exchange M88 Grey', N'Caller ID feature, lighted keypad, handset speakerphone', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1389, N'Contoso 4 Handset Cordless Phone System M86 Grey', N'Lighted keypad, handset speaker phone, expandable up to 6 handsets  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1390, N'Contoso Private Automatic Branch Exchange M65 Grey', N'Digital answering machine with 16 minutes recording time  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1391, N'Contoso Electronic Private Automatic Branch Exchange M90 Grey', N'Phonebook directory with memory for 20 entries silver', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1392, N'Contoso Centrex Phone System L10 Grey', N'5.8 GHz frequency that won''t interfere with wireless networks, caller ID/call waiting compatible with memory for last 45 callers', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1393, N'Contoso In front of Centrex L15 Grey', N'Lighted keypad, caller ID,3-way conferencing ,expandable up to 6 handsets', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1394, N'Contoso behind Centrex X15 Grey', N'LCD screen for viewing contacts, compatible with PCs, plug into USB port for use  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1395, N'Contoso Phone with 13-Number Memory (210) M301 Grey', N'Phone with 13-number memory (210)', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1396, N'Contoso Expandable Cordless Phone System M008 Grey', N'Special backlit keypad, receiver volume control, handset volume control', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1397, N'Contoso Phone System Accessory Handset with Charger M308 Grey', N'Built-in 60-minute digital answering machine  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1398, N'Contoso 2-Line Corded Cordless Telephone M202 Grey', N'Digital duplex speakerphones built into back of handset, built-in clock with alarm on handset  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1399, N'Contoso 4-Line Corded Cordless Telephone M203 Grey', N'4-Line operation, includes 1 corded handset with base, 1 cordless handset with charger, up to 6 handsets capability 60 channels  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1400, N'Contoso Expandable 3-Handset Cordless Phone System M204 Grey', N'Additional handset for phone systems, light-up indicator for quick reference, backlit keypad for easy use, digital speakerphone for hands-free use or conference calls, space-saving wall-mountable design  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1401, N'Contoso Expandable 2-Handset Cordless Phone System M205 Grey', N'Additional handset for phone systems, light-up indicator for quick reference, backlit keypad for easy use, digital speakerphone for hands-free use or conference calls, space-saving wall-mountable design  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1402, N'Contoso Expandable 4-Handset Cordless Phone System M206 Grey', N'Additional handset for phone systems, light-up indicator for quick reference, backlit keypad for easy use, digital speakerphone for hands-free use or conference calls, space-saving wall-mountable design  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1403, N'Contoso Expandable1-Handset Cordless Phone System M207 Grey', N'Additional handset for phone systems, light-up indicator for quick reference, backlit keypad for easy use, digital speakerphone for hands-free use or conference calls, space-saving wall-mountable design  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1404, N'Contoso Digital Cordless Expansion Handset Phone M900 Grey', N'Additional handset for phone systems, light-up indicator for quick reference, backlit keypad for easy use, digital speakerphone for hands-free use or conference calls, space-saving wall-mountable design  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1405, N'Contoso 2-Line Speakerphone M109 Grey', N'Line speakerphone, conference call between an outside line and up to 2 handsets  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1406, N'Contoso Phone with Memory Dialing-single line E88 Grey', N'Memory for 100 contact entries', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1407, N'Contoso Phone with Memory Dialing-2 lines E90 Grey', N'Memory for 100 contact entries, three-party conferencing, and each line can be set to its own distinct ringtone  ', N'Cell phones', N'Home & Office Phones', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1408, N'The Phone Company Touch Screen Phone 1600 TFT-2.2\” L200 Black', N'240×320, GSM/GPRS/EDGE 2.2''''', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1409, N'The Phone Company Touch Screen Phone 1600 TFT-1.4\” L250 Black', N'GSM/GPRS/EDGE, 1.4''''', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1410, N'The Phone Company Touch Screen Phones 26-2.2\” M200 Black', N'8 GB of storage provides approximately 1,750 songs, includes earphones, USB', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1411, N'The Phone Company Touch Screen Phones 26-1.4\” M250 Black', N'What''s in the Box: handset, battery, charger, USB cable, mini-USB-to-3.5mm adapter, quick start guide', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1412, N'The Phone Company Touch Screen Phones 4-Wire/On-wall M302 Black', N'1.3 megapixel camera, touch screen display', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1413, N'The Phone Company Touch Screen Phones SAW/Built-in M801 Black', N'Video share service, 3.2-megapixel camera/camcorder', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1414, N'The Phone Company Touch Screen Phones 5-Wire/Built-in M500 Black', N'5 MP camera, MP3/video player, and Micro SD Slot-International version with no warranty', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1415, N'The Phone Company Touch Screen Phones Infrared M901 Black', N'Bluetooth stereo music streaming, Micro SD expansion to 16 GB, access to personal email and instant messaging, up to 5 hours of talk time', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1416, N'The Phone Company Touch Screen Phones Capacitive M908 Black', N'Support 3G service, 5-megapixel camera/camcorder, bluetooth stereo music streaming', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1417, N'The Phone Company Touch Screen Phones 4-Wire/ Built-in M205 Black', N'Fast 2.75G EDGE wireless technologies,', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1418, N'The Phone Company Touch Screen Phones SAW/On-wall M806 Black', N'5MP camera FM radio - international version with no warranty', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1419, N'The Phone Company Touch Screen Phones 5-Wire/On-wall M508 Black', N'GSM phone with 3-inch touch screen featuring intuitive controls, 2-megapixel camera with video recording', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1420, N'The Phone Company Finger Touch Screen Phones M30 Black', N'5.0 megapixel camera w/auto focus, zoom and video capture', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1421, N'The Phone Company Pen Touch Screen Phones-2.6\” M320 Black', N'Touch 3G phone with 2MP camera and 2.6\” TFT-LCD with backlight LED touch-sensitive screen', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1422, N'The Phone Company Sharp Touch Screen Phones M910 Black', N'Wherever you are, you can enjoy the high-speed, always on connectivity provides the ultimate internet experience, radio, Bluetooth capability  ', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1423, N'The Phone Company Touch Screen Phones - CRT M11 Black', N'Support Bluetooth V2.0 and A2DP Bluetooth stereo and MP3/MP4 music player', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1424, N'The Phone Company Touch Screen Phones - LCD M12 Black', N'5 MP camera, MP3/Video Player, and Micro SD slot-international version with no warranty', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1425, N'The Phone Company Touch Screen Phone 1600 TFT-2.2\” L200 Grey', N'Business-oriented Smartphone with windows mobile 6.1 OS, video share service, and mobile banking', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1426, N'The Phone Company Touch Screen Phone 1600 TFT-1.4\” L250 Grey', N'Dual SIM-international version with warranty', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1427, N'The Phone Company Touch Screen Phones 26-2.2\” M200 Grey', N'Unlocked quad band, 4 GB of memory, FM radio, and touch screen, Mp3, Mp4 players, Bluetooth', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1428, N'The Phone Company Touch Screen Phones 26-1.4\” M250 Grey', N'It comes with headphone, double battery (rechargeable), USB cable, charger and user''s manual', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1429, N'The Phone Company Touch Screen Phones 4-Wire/On-wall M302 Grey', N'3G-enabled touch screen phone in ice blue with full HTML browsing, and access to email and instant messaging, compatible with 3G network', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1430, N'The Phone Company Touch Screen Phones SAW/Built-in M801 Grey', N'Dust free, scratch resistant, easy to apply', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1431, N'The Phone Company Touch Screen Phones 5-Wire/Built-in M500 Grey', N'3G-enabled touch screen phone with full HTML browsing, access to email and instant messaging, compatible with  3G network (available in select markets)', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1432, N'The Phone Company Touch Screen Phones Infrared M901 Grey', N'Bluetooth stereo music, Micro SD expansion to 8 GB, access to personal email and instant messaging', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1433, N'The Phone Company Touch Screen Phones Capacitive M908 Grey', N'Up to 5 hours of talk time, up to 240 hours (10 days) of standby time  ', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1434, N'The Phone Company Touch Screen Phones 4-Wire/ Built-in M205 Grey', N'What''s in the box: handset, battery, charger, user manual', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1435, N'The Phone Company Touch Screen Phones SAW/On-wall M806 Grey', N'Up to 288 hours (12 days) of standby time, what’s in the box: handset, battery, charger, 1 GB Micro SD memory card, USB cable, wired stereo hands free headset, quick start guide', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1436, N'The Phone Company Touch Screen Phones 5-Wire/On-wall M508 Grey', N'Micro SD expansion to 16 GB, access to personal email and instant messaging', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1437, N'The Phone Company Finger Touch Screen Phones M30 Grey', N'240×320, GSM/GPRS/EDGE 2.2''''', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1438, N'The Phone Company Pen Touch Screen Phones M320 Grey', N'GSM/GPRS/EDGE, 1.4''''', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1439, N'The Phone Company Sharp Touch Screen Phones M910 Grey', N'8 GB of storage provides approximately 1,750 songs, includes earphones, USB', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1440, N'The Phone Company Touch Screen Phones - CRT M11 Grey', N'What''s in the box: handset, battery, charger, USB cable, mini-USB-to-3.5mm adapter, quick start guide', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1441, N'The Phone Company Touch Screen Phones - LCD M12 Grey', N'1.3 megapixel camera, touch screen display', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1442, N'The Phone Company Touch Screen Phone 1600 TFT-2.2\” L200 ld', N'Video share service, 3.2-megapixel camera/camcorder', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1443, N'The Phone Company Touch Screen Phone 1600 TFT-1.4\” L250 ld', N'5 MP camera, MP3/Video player, and Micro SD slot-international version with no warranty', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1444, N'The Phone Company Touch Screen Phones 26-2.2\” M200 ld', N'Bluetooth stereo music streaming, Micro SD expansion to 16 GB, access to personal email and instant messaging, up to 5 hours of talk time', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1445, N'The Phone Company Touch Screen Phones 26-1.4\” M250 ld', N'Support 3G service, 5-megapixel camera/camcorder, Bluetooth stereo music streaming', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1446, N'The Phone Company Touch Screen Phones 4-Wire/On-wall M302 ld', N'Fast 2.75G EDGE wireless technologies,', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1447, N'The Phone Company Touch Screen Phones SAW/Built-in M801 ld', N'5MP camera FM radio - international version with no warranty', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1448, N'The Phone Company Touch Screen Phones 5-Wire/Built-in M500 ld', N'GSM phone with 3-inch touch screen featuring intuitive controls, 2-megapixel camera with video recording', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1449, N'The Phone Company Touch Screen Phones Infrared M901 ld', N'5.0 megapixel camera w/auto focus, zoom and video capture', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1450, N'The Phone Company Touch Screen Phones Capacitive M908 ld', N'Touch 3G phone with 2MP camera and 2.6\” TFT-LCD with backlight LED touch-sensitive screen', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1451, N'The Phone Company Touch Screen Phones 4-Wire/ Built-in M205 ld', N'Wherever you are, you can enjoy the high-speed, always on connectivity provides the ultimate internet experience, radio, Bluetooth capability  ', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1452, N'The Phone Company Touch Screen Phones SAW/On-wall M806 ld', N'Support Bluetooth V2.0 and A2DP Bluetooth stereo and MP3/MP4 music player', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1453, N'The Phone Company Touch Screen Phones 5-Wire/On-wall M508 ld', N'5 MP camera, MP3/Video player, and Micro SD slot-international version with no warranty', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1454, N'The Phone Company Finger Touch Screen Phones M30 ld', N'Business-oriented Smartphone with windows mobile 6.1 OS, video share service, and mobile banking', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1455, N'The Phone Company Pen Touch Screen Phones M320 ld', N'Dual SIM-international version with warranty', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1456, N'The Phone Company Sharp Touch Screen Phones M910 ld', N'Unlocked quad band, 4 GB of memory, FM Radio, touch screen, Mp3, Mp4 Players, and Bluetooth', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1457, N'The Phone Company Touch Screen Phones - CRT M11 ld', N'It comes with Headphone, double battery (rechargeable), USB cable, charger and user''s manual , access to email and instant messaging, compatible with  3G network dust Free, scratch resistant, easy to apply', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1458, N'The Phone Company Touch Screen Phones - LCD M12 ld', N'3G-enabled touch screen phone with full HTML browsing, access to email and instant messaging, compatible with  3G network (available in select markets)', N'Cell phones', N'Touch Screen Phones ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1459, N'Contoso Touch Screen Phones 5-Wire/Built-in M500 Black', N'Bluetooth stereo music, Micro SD expansion to 8 GB, access to personal email and instant messaging', N'Cell phones', N'Touch Screen Phones ', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1460, N'Contoso Touch Screen Phones Infrared M901 Black', N'Up to 5 hours of talk time, up to 240 hours (10 days) of standby time  ', N'Cell phones', N'Touch Screen Phones ', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1461, N'Contoso Touch Screen Phones Capacitive M908 Black', N'What''s in the box: handset, battery, charger, user manual', N'Cell phones', N'Touch Screen Phones ', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1462, N'Contoso Touch Screen Phones 4-Wire/ Built-in M205 Black', N'Up to 288 hours (12 days) of standby time, what’s in the box: handset, battery, charger, 1 GB Micro SD memory card, USB cable, wired stereo hands free headset, quick start guide', N'Cell phones', N'Touch Screen Phones ', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1463, N'Contoso Touch Screen Phones SAW/On-wall M806 Black', N'Micro SD expansion to 16 GB, access to personal email and instant messaging', N'Cell phones', N'Touch Screen Phones ', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1464, N'Contoso Touch Screen Phones 5-Wire/On-wall M508 Black', N'Up to 5 hours of talk time, up to 240 hours (10 days) of standby time  ', N'Cell phones', N'Touch Screen Phones ', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1465, N'Contoso Finger Touch Screen Phones M30 Black', N'What''s in the Box: handset, battery, charger, and user manual', N'Cell phones', N'Touch Screen Phones ', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1466, N'Contoso Pen Touch Screen Phones M320 Black', N'Up to 288 hours (12 days) of standby time, what''s in the box: handset, battery, charger, 1 GB Micro SD memory card, USB cable, wired stereo hands free headset, quick start guide', N'Cell phones', N'Touch Screen Phones ', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1467, N'Contoso Sharp Touch Screen Phones M910 Black', N'Micro SD expansion to 16 GB, access to personal email and instant messaging', N'Cell phones', N'Touch Screen Phones ', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1468, N'Contoso Touch Screen Phones - CRT M11 Black', N'Up to 288 hours (12 days) of standby time, what''s in the box: handset, battery, charger, 1 GB Micro SD memory card, USB cable, wired stereo hands free headset, quick start guide', N'Cell phones', N'Touch Screen Phones ', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1469, N'Contoso Touch Screen Phones  - LCD M12 Black', N'Micro SD expansion to 16 GB, access to personal email and instant messaging', N'Cell phones', N'Touch Screen Phones ', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1470, N'The Phone Company Smart phones without camera E100 Black', N'Smart phones without camera, high-resolution monochrome display', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1471, N'The Phone Company Microsoft Windows Mobile M200 Black', N'Microsoft windows mobile, high-resolution monochrome display', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1472, N'The Phone Company Smart phones 4 GB of Memory M300 Black', N'Smart phones 4 GB of memory, memory stick media expansion slot', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1473, N'The Phone Company Smart phones 8 GB of Memory M400 Black', N'Smart phones 8 GB of memory, memory stick media expansion slot', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1474, N'The Phone Company Smart phones 160x160 M26 Black', N'Smart phones 160x160, AC adapter, stylus, protective cover, installation CD-ROM, application manual', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1475, N'The Phone Company Smart phones 6-LINE SCREEN M21 Black', N'Create and edit word, excel and PowerPoint-compatible files on the run, listen to MP3s', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1476, N'The Phone Company Smart phones -320 x 320 M86 Black', N'Handheld device, special laptop software, including Documents to ', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1477, N'The Phone Company Smart phones Unlocked M300 Black', N'Watch video clips and view photos wherever you  , create and edit word, excel and PowerPoint-compatible files on the run, listen to MP3s', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1478, N'The Phone Company Smart phones Expert M400 Black', N'Create and edit Word, Excel and PowerPoint-compatible files on the run, listen to MP3s', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1479, N'The Phone Company Smart phones Unlocked International M800 Black', N'Create and edit Word, Excel and PowerPoint-compatible files on the run, listen to MP3s, watch video clips and view photos wherever you ', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1480, N'The Phone Company Smart phones without camera E100 Grey', N'Smart phones without camera, high-resolution monochrome display', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1481, N'The Phone Company Microsoft Windows Mobile M200 Grey', N'Microsoft windows mobile, high-resolution monochrome display', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1482, N'The Phone Company Smart phones 4 GB of Memory M300 Grey', N'Smart phones 4 GB of memory, memory stick media expansion slot', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1483, N'The Phone Company Smart phones 8 GB of Memory M400 Grey', N'Smart phones 8 GB of memory, memory stick media expansion slot', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1484, N'The Phone Company Smart phones 160x160 M26 Grey', N'Smart phones 160x160, AC adapter, stylus, protective cover, installation CD-ROM, application manual', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1485, N'The Phone Company Smart phones 6-LINE SCREEN M21 Grey', N'Create and edit Word, Excel and PowerPoint-compatible files on the run, listen to MP3s', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1486, N'The Phone Company Smart phones 320 x 320 M86 Grey', N'Handheld device, special laptop software, including Documents to ', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1487, N'The Phone Company Smart phones Unlocked M300 Grey', N'Watch video clips and view photos wherever you , create and edit Word, Excel and PowerPoint-compatible files on the run, listen to MP3s', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1488, N'The Phone Company Smart phones Expert M400 Grey', N'Create and edit Word, Excel and PowerPoint-compatible files on the run, listen to MP3s', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1489, N'The Phone Company Smart phones Unlocked International M800 Grey', N'Create and edit Word, Excel and PowerPoint-compatible files on the run, listen to MP3s, watch video clips and view photos wherever you ', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1490, N'The Phone Company Smart phones without camera E100 White', N'Smart phones without camera, high-resolution monochrome display', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1491, N'The Phone Company Microsoft Windows Mobile M200 White', N'Microsoft windows mobile, high-resolution monochrome display', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1492, N'The Phone Company Smart phones 4 GB of Memory M300 White', N'Smart phones 4 GB of memory, memory Stick media expansion slot', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1493, N'The Phone Company Smart phones 8 GB of Memory M400 White', N'Smart phones 8 GB of memory, memory Stick media expansion slot', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1494, N'The Phone Company Smart phones 160x160 M26 White', N'Smart phones 160x160, AC adapter, stylus, protective cover, installation CD-ROM, application manual', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1495, N'The Phone Company Smart phones 6-LINE SCREEN M21 White', N'Create and edit Word, Excel and PowerPoint-compatible files on the run, listen to MP3s', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1496, N'The Phone Company Smart phones 320 x 320 M86 White', N'Handheld device, special laptop software, including Documents to ', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1497, N'The Phone Company Smart phones Unlocked M300 White', N'Watch video clips and view photos wherever you , create and edit Word, Excel and PowerPoint-compatible files on the run, listen to MP3s', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1498, N'The Phone Company Smart phones Expert M400 White', N'Create and edit Word, Excel and PowerPoint-compatible files on the run, listen to MP3s', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1499, N'The Phone Company Smart phones Unlocked International M800 White', N'Create and edit Word, Excel and PowerPoint-compatible files on the run, listen to MP3s, watch video clips and view photos wherever you ', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1500, N'The Phone Company Smart phones without camera E100 Pink', N'Smart phones without camera, high-resolution monochrome display', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1501, N'The Phone Company Microsoft Windows Mobile M200 Pink', N'Microsoft windows mobile, high-resolution monochrome display', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1502, N'The Phone Company Smart phones 4 GB of Memory M300 Pink', N'Smart phones 4 GB of memory, memory stick media expansion slot', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1503, N'The Phone Company Smart phones 8 GB of Memory M400 Pink', N'Smart phones 8 GB of memory, memory stick media expansion slot', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1504, N'The Phone Company Smart phones 160x160 M26 Pink', N'Smart phones 160x160, AC adapter, stylus, protective cover, installation CD-ROM, application manual', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1505, N'The Phone Company Smart phones 6-LINE SCREEN M21 Pink', N'Create and edit Word, Excel and PowerPoint-compatible files on the run, listen to MP3s', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1506, N'The Phone Company Smart phones 320 x 320 M86 Pink', N'Handheld device, special laptop software, including Documents to ', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1507, N'The Phone Company Smart phones Unlocked M300 Pink', N'Watch video clips and view photos wherever you , create and edit Word, Excel and PowerPoint-compatible files on the run, listen to MP3s', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1508, N'The Phone Company Smart phones Expert M400 Pink', N'Create and edit Word, Excel and PowerPoint-compatible files on the run, listen to MP3s', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1509, N'The Phone Company Smart phones Unlocked International M800 Pink', N'Create and edit Word, Excel and PowerPoint-compatible files on the run, listen to MP3s, watch video clips and view photos wherever you ', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1510, N'The Phone Company Smart phones without camera E100 ld', N'Smart phones without camera, high-resolution monochrome display', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1511, N'The Phone Company Microsoft Windows Mobile M200 ld', N'Microsoft windows mobile, high-resolution monochrome display', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1512, N'The Phone Company Smart phones 4 GB of Memory M300 ld', N'Smart phones 4 GB of memory, memory stick media expansion slot', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1513, N'The Phone Company Smart phones 8 GB of Memory M400 ld', N'Smart phones 8 GB of memory, memory stick media expansion slot', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1514, N'The Phone Company Smart phones 160x160 M26 ld', N'Smart phones 160x160, AC adapter, stylus, protective cover, installation CD-ROM, application manual', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1515, N'The Phone Company Smart phones 6-LINE SCREEN M21 ld', N'Create and edit Word, Excel and PowerPoint-compatible files on the run, listen to MP3s', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1516, N'The Phone Company Smart phones 320 x 320 M86 ld', N'Handheld device, special laptop software, including documents to ', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1517, N'The Phone Company Smart phones Unlocked M300 ld', N'Watch video clips and view photos wherever you , create and edit Word, Excel and PowerPoint-compatible files on the run, listen to MP3s', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1518, N'The Phone Company Smart phones Expert M400 ld', N'Create and edit Word, Excel and PowerPoint-compatible files on the run, listen to MP3s', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1519, N'The Phone Company Smart phones Unlocked International M800 ld', N'Create and edit Word, Excel and PowerPoint-compatible files on the run, listen to MP3s, watch video clips and view photos wherever you ', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1520, N'The Phone Company PDA Wifi 3.5-inch M200 Black', N'Multimedia accelerator with 16MB video memory', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1521, N'The Phone Company PDA Wifi 3.7-inch M250 Black', N'Genuine leather and great looks', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1522, N'The Phone Company PDA Wifi 4.7-inch L290 Black', N'The sensitive slanted stylus tip gives you smooth navigation', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1523, N'The Phone Company PDA Phone 3.5 inches M320 Black', N'A single, standardized and easy way to connect the phone to a computer', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1524, N'The Phone Company PDA Phone 3.7 inches M340 Black', N'Opera 8 web browser supports adobe flash 9 browser plug in', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1525, N'The Phone Company PDA Phone 4.7 inches L360 Black', N'Opera 8 web browsers supports adobe flash 9 browser plugs in, 256 MB flash memory expands via two memory card slots', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1526, N'The Phone Company PDA Phone Unlocked 3.7 inches M510 Black', N'Stream and store MP3s and videos with high quality stereo sound', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1527, N'The Phone Company PDA Phone Unlocked 3.5 inches M530 Black', N'Wide touch screen and full keyboard', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1528, N'The Phone Company PDA Phone Unlocked 4.7 inches L550 Black', N'With 3MB Memory and 6-line backlit display', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1529, N'The Phone Company PDA Handheld 3.5 inch M610 Black', N'Toll free Numbers & Weights & Measures & Schedule planner', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1530, N'The Phone Company PDA Handheld 3.7 inch M630 Black', N'Access the web, high-resolution widescreen display, opera 8 web browser', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1531, N'The Phone Company PDA Handheld 4.7 inch L650 Black', N'256 MB flash memory expands via two memory card slots', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1532, N'The Phone Company PDA Palm 3.5 inch M810 Black', N'Pocket versions of familiar applications like Outlook, Word, and Excel', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1533, N'The Phone Company PDA Palm 3.7 inch M830 Black', N'Pocket versions of familiar applications like Outlook, Word, and Excel', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1534, N'The Phone Company PDA Palm 4.7 inch L850 Black', N'Removable/rechargeable battery and integrated keyboard', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1535, N'The Phone Company PDA GPS Phone 3.5 inch M910 Black', N'Removable/rechargeable battery and integrated keyboard, integrated Bluetooth', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1536, N'The Phone Company PDA GPS Phone 3.7 inch M930 Black', N'624 MHz processor, 256MB ROM / 64MB SDRAM', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1537, N'The Phone Company PDA GPS Phone 4.7 inch L950 Black', N'Complete suite of PIM applications, HotSync technology for PC synchronization, 1MB memory', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1538, N'The Phone Company PDA Wifi 3.5-inch M200 Silver', N'Multimedia accelerator with 16MB video memory', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1539, N'The Phone Company PDA Wifi 3.7-inch M250 Silver', N'Genuine leather and great looks', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1540, N'The Phone Company PDA Wifi 4.7-inch L290 Silver', N'The sensitive slanted stylus tip gives you smooth navigation', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1541, N'The Phone Company PDA Phone 3.5 inches M320 Silver', N'A single, standardized and easy way to connect the phone to a computer', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1542, N'The Phone Company PDA Phone 3.7 inches M340 Silver', N'Opera 8 web browser, supports Adobe flash 9 browser plug in', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1543, N'The Phone Company PDA Phone 4.7 inches L360 Silver', N'Opera 8 web browser, supports Adobe flash 9 browser plug in, 256 MB flash memory expands via two memory card slots', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1544, N'The Phone Company PDA Phone Unlocked 3.7 inches M510 Silver', N'Stream and store MP3s and videos with high quality stereo sound', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1545, N'The Phone Company PDA Phone Unlocked 3.5 inches M530 Silver', N'Wide touch screen and full keyboard', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1546, N'The Phone Company PDA Phone Unlocked 4.7 inches L550 Silver', N'With 3MB Memory and 6-Line backlit display', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1547, N'The Phone Company PDA Handheld 3.5 inch M610 Silver', N'Toll free Numbers & Weights & Measures & Schedule planner', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1548, N'The Phone Company PDA Handheld 3.7 inch M630 Silver', N'Access the web, high-resolution widescreen display, opera 8 web browser', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1549, N'The Phone Company PDA Handheld 4.7 inch L650 Silver', N'256 MB flash memory expands via two memory card slots', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1550, N'The Phone Company PDA Palm 3.5 inch M810 Silver', N'Pocket versions of familiar applications like Outlook, Word, and Excel', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1551, N'The Phone Company PDA Palm 3.7 inch M830 Silver', N'Pocket versions of familiar applications like Outlook, Word, and Excel', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1552, N'The Phone Company PDA Palm 4.7 inch L850 Silver', N'Removable/rechargeable battery and integrated keyboard', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1553, N'The Phone Company PDA GPS Phone 3.5 inch M910 Silver', N'Removable/rechargeable battery and integrated keyboard, integrated Bluetooth', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1554, N'The Phone Company PDA GPS Phone 3.7 inch M930 Silver', N'624 MHz Processor, 256MB ROM / 64MB SDRAM', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1555, N'The Phone Company PDA GPS Phone 4.7 inch L950 Silver', N'Complete suite of PIM applications, HotSync technology for PC synchronization, 1MB memory', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1556, N'The Phone Company PDA Wifi 3.5-inch M200 White', N'Multimedia accelerator with 16MB video memory', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1557, N'The Phone Company PDA Wifi 3.7-inch M250 White', N'Genuine leather and great looks', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1558, N'The Phone Company PDA Wifi 4.7-inch L290 White', N'The sensitive slanted stylus tip gives you smooth navigation', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1559, N'The Phone Company PDA Phone 3.5 inches M320 White', N'A single, standardized and easy way to connect the phone to a computer', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1560, N'The Phone Company PDA Phone 3.7 inches M340 White', N'Opera 8 web browsers; supports Adobe flash 9 browser plug in', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1561, N'The Phone Company PDA Phone 4.7 inches L360 White', N'Opera 8 web browser; supports Adobe flash 9 browser plug in, 256 MB flash memory expands via two memory card slots', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1562, N'The Phone Company PDA Phone Unlocked 3.7 inches M510 White', N'Stream and store MP3s and videos with high quality stereo sound', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1563, N'The Phone Company PDA Phone Unlocked 3.5 inches M530 White', N'Wide touch screen and full keyboard', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1564, N'The Phone Company PDA Phone Unlocked 4.7 inches L550 White', N'With 3MB Memory and 6-Line backlit display', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1565, N'The Phone Company PDA Handheld 3.5 inch M610 White', N'Toll free Numbers & Weights & Measures & Schedule planner', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1566, N'The Phone Company PDA Handheld 3.7 inch M630 White', N'Access the web, high-resolution widescreen display, Opera 8 web browser', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1567, N'The Phone Company PDA Handheld 4.7 inch L650 White', N'256 MB flash memory expands via two memory card slots', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1568, N'The Phone Company PDA Palm 3.5 inch M810 White', N'Pocket versions of familiar applications like Outlook, Word, and Excel', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1569, N'The Phone Company PDA Palm 3.7 inch M830 White', N'Pocket versions of familiar applications like Outlook, Word, and Excel', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1570, N'The Phone Company PDA Palm 4.7 inch L850 White', N'Removable/rechargeable battery and integrated keyboard', N'Cell phones', N'Smart phones & PDAs ', N'The Phone Company')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1571, N'SV DVD Player M100 Black', N'Exceeds ENERGY STAR standards, Multi-brand TV remote control', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1572, N'SV DVD Player M110 Silver', N'Exceeds ENERGY STAR standards, Multi-brand TV remote control', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1573, N'SV DVD Player M120 White', N'Exceeds ENERGY STAR standards, Multi-brand TV remote control', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1574, N'SV DVD Player M130 Grey', N'Exceeds ENERGY STAR standards, Multi-brand TV remote control', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1575, N'SV DVD Player M140 ld', N'Exceeds ENERGY STAR standards, Multi-brand TV remote control', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1576, N'SV DVD Movies E100 Yellow', N'Language: English software installation, enterprise', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1577, N'SV DVD Recorder L200 Black', N'DVD and VHS recorder with two way dubbing, records -R/-RW, +R/+RW formats', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1578, N'SV DVD Recorder L210 Silver', N'DVD and VHS recorder with two way dubbing, records -R/-RW, +R/+RW formats', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1579, N'SV DVD Recorder L220 White', N'DVD and VHS recorder with two way dubbing, records -R/-RW, +R/+RW formats', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1580, N'SV DVD Recorder L230 Grey', N'DVD and VHS recorder with two way dubbing, records -R/-RW, +R/+RW formats', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1581, N'SV DVD Recorder L240 ld', N'DVD and VHS recorder with two way dubbing, records -R/-RW, +R/+RW formats', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1582, N'SV DVD 48 DVD Storage Binder M50 Black', N'Gift-wrapping is not available for this item', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1583, N'SV DVD 58 DVD Storage Binder M55 Black', N'Store your CDs or DVDs in these beautiful binders, designed to look like books', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1584, N'SV DVD 38 DVD Storage Binder E25 Black', N'Store your CDs or DVDs in these beautiful binders, designed to look like books', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1585, N'SV DVD 60 DVD Storage Binder L20 Black', N'Store your CDs or DVDs in these beautiful binders, designed to look like books', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1586, N'SV DVD 55DVD Storage Binder M56 Black', N'Store your CDs or DVDs in these beautiful binders, designed to look like books', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1587, N'SV DVD 48 DVD Storage Binder M50 Silver', N'Gift-wrapping is not available for this item', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1588, N'SV DVD 58 DVD Storage Binder M55 Silver', N'Store your CDs or DVDs in these beautiful binders, designed to look like books', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1589, N'SV DVD 38 DVD Storage Binder E25 Silver', N'Store your CDs or DVDs in these beautiful binders, designed to look like books', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1590, N'SV DVD 60 DVD Storage Binder L20 Silver', N'Store your CDs or DVDs in these beautiful binders, designed to look like books', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1591, N'SV DVD 55DVD Storage Binder M56 Silver', N'Store your CDs or DVDs in these beautiful binders, designed to look like books', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1592, N'SV DVD 48 DVD Storage Binder M50 Red', N'Gift-wrapping is not available for this item', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1593, N'SV DVD 58 DVD Storage Binder M55 Red', N'Store your CDs or DVDs in these beautiful binders, designed to look like books', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1594, N'SV DVD 38 DVD Storage Binder E25 Red', N'Store your CDs or DVDs in these beautiful binders, designed to look like books', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1595, N'SV DVD 60 DVD Storage Binder L20 Red', N'Store your CDs or DVDs in these beautiful binders, designed to look like books', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1596, N'SV DVD 55DVD Storage Binder M56 Red', N'Store your CDs or DVDs in these beautiful binders, designed to look like books', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1597, N'SV DVD External DVD Burner M200 Black', N'Supported by Windows Vista, Windows XP, includes CD/DVD player & recording suite', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1598, N'SV DVD External DVD Burner M200 Grey', N'Supported by Windows Vista, Windows XP, includes CD/DVD player & recording suite', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1599, N'SV DVD External DVD Burner M200 Blue', N'Supported by Windows Vista, Windows XP, includes CD/DVD player & recording suite', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1600, N'SV DVD External DVD Burner M200 Silver', N'Supported by Windows Vista, Windows XP, includes CD/DVD player & recording suite', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1601, N'SV DVD 9-Inch Player Portable M300 Black', N'6-hour rechargeable battery, 180-degree swivel and flip screen', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1602, N'SV DVD 12-Inch Player Portable M400 Black', N'6-hour rechargeable battery, 180-degree swivel and flip screen', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1603, N'SV DVD 7-Inch Player Portable E200 Black', N'6-hour rechargeable battery, 180-degree swivel and flip screen', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1604, N'SV DVD 14-Inch Player Portable L100 Black', N'6-hour rechargeable battery, 180-degree swivel and flip screen', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1605, N'SV DVD 15-Inch Player Portable L200 Black', N'6-hour rechargeable battery, 180-degree swivel and flip screen', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1606, N'SV DVD 9-Inch Player Portable M300 Silver', N'6-hour rechargeable battery, 180-degree swivel and flip screen', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1607, N'SV DVD 12-Inch Player Portable M400 Silver', N'6-hour rechargeable battery, 180-degree swivel and flip screen', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1608, N'SV DVD 7-Inch Player Portable E200 Silver', N'6-hour rechargeable battery, 180-degree swivel and flip screen', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1609, N'SV DVD 14-Inch Player Portable L100 Silver', N'6-hour rechargeable battery, 180-degree swivel and flip screen', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1610, N'SV DVD 15-Inch Player Portable L200 Silver', N'6-hour rechargeable battery, 180-degree swivel and flip screen', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1611, N'SV DVD 9-Inch Player Portable M300 White', N'6-hour rechargeable battery, 180-degree swivel and flip screen', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1612, N'SV DVD 12-Inch Player Portable M400 White', N'6-hour rechargeable battery, 180-degree swivel and flip screen', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1613, N'SV DVD 7-Inch Player Portable E200 White', N'6-hour rechargeable battery, 180-degree swivel and flip screen', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1614, N'SV DVD 14-Inch Player Portable L100 White', N'6-hour rechargeable battery, 180-degree swivel and flip screen', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1615, N'SV DVD 15-Inch Player Portable L200 White', N'6-hour rechargeable battery, 180-degree swivel and flip screen', N'Music, Movies and Audio Books', N'Movie DVD', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1616, N'Contoso DVD Player M100 Black', N'Exceeds ENERGY STAR standards, multi-brand TV remote control', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1617, N'Contoso DVD Player M110 Silver', N'Exceeds ENERGY STAR standards, multi -brand TV remote control', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1618, N'Contoso DVD Player M120 White', N'Exceeds ENERGY STAR standards, multi -brand TV remote control', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1619, N'Contoso DVD Player M130 Grey', N'Exceeds ENERGY STAR standards, multi -brand TV remote control', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1620, N'Contoso DVD Player M140 ld', N'Exceeds ENERGY STAR standards, multi -brand TV remote control', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1621, N'Contoso DVD Movies E100 Yellow', N'Language: English software installation, enterprise', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1622, N'Contoso DVD Recorder L200 Black', N'DVD and VHS Recorder with two way dubbing, Records -R/-RW, +R/+RW Formats', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1623, N'Contoso DVD Recorder L210 Silver', N'DVD and VHS Recorder with two way dubbing, Records -R/-RW, +R/+RW Formats', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1624, N'Contoso DVD Recorder L220 White', N'DVD and VHS Recorder with two way dubbing, Records -R/-RW, +R/+RW Formats', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1625, N'Contoso DVD Recorder L230 Grey', N'DVD and VHS Recorder with two way dubbing, Records -R/-RW, +R/+RW Formats', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1626, N'Contoso DVD Recorder L240 ld', N'DVD and VHS Recorder with two way dubbing, Records -R/-RW, +R/+RW Formats', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1627, N'Contoso DVD 48 DVD Storage Binder M50 Black', N'Gift-wrapping is not available for this item', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1628, N'Contoso DVD 58 DVD Storage Binder M55 Black', N'Store your CDs or DVDs in these beautiful binders, designed to look like books', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1629, N'Contoso DVD 38 DVD Storage Binder E25 Black', N'Store your CDs or DVDs in these beautiful binders, designed to look like books', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1630, N'Contoso DVD 60 DVD Storage Binder L20 Black', N'Store your CDs or DVDs in these beautiful binders, designed to look like books', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1631, N'Contoso DVD 55DVD Storage Binder M56 Black', N'Store your CDs or DVDs in these beautiful binders, designed to look like books', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1632, N'Contoso DVD 48 DVD Storage Binder M50 Silver', N'Gift-wrapping is not available for this item', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1633, N'Contoso DVD 58 DVD Storage Binder M55 Silver', N'Store your CDs or DVDs in these beautiful binders, designed to look like books', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1634, N'Contoso DVD 38 DVD Storage Binder E25 Silver', N'Store your CDs or DVDs in these beautiful binders, designed to look like books', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1635, N'Contoso DVD 60 DVD Storage Binder L20 Silver', N'Store your CDs or DVDs in these beautiful binders, designed to look like books', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1636, N'Contoso DVD 55DVD Storage Binder M56 Silver', N'Store your CDs or DVDs in these beautiful binders, designed to look like books', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1637, N'Contoso DVD 48 DVD Storage Binder M50 Red', N'Gift-wrapping is not available for this item', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1638, N'Contoso DVD 58 DVD Storage Binder M55 Red', N'Store your CDs or DVDs in these beautiful binders, designed to look like books', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1639, N'Contoso DVD 38 DVD Storage Binder E25 Red', N'Store your CDs or DVDs in these beautiful binders, designed to look like books', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1640, N'Contoso DVD 60 DVD Storage Binder L20 Red', N'Store your CDs or DVDs in these beautiful binders, designed to look like books', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1641, N'Contoso DVD 55DVD Storage Binder M56 Red', N'Store your CDs or DVDs in these beautiful binders, designed to look like books', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1642, N'Contoso DVD External DVD Burner M200 Black', N'Supported by Windows Vista, Windows XP, includes CD/DVD player & recording suite', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1643, N'Contoso DVD External DVD Burner M200 Grey', N'Supported by Windows Vista, Windows XP, includes CD/DVD player & recording suite', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1644, N'Contoso DVD External DVD Burner M200 Blue', N'Supported by Windows Vista, Windows XP, includes CD/DVD player & recording suite', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1645, N'Contoso DVD External DVD Burner M200 Silver', N'Supported by Windows Vista, Windows XP, includes CD/DVD player & recording suite', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1646, N'Contoso DVD 9-Inch Player Portable M300 Black', N'6-hour rechargeable battery, 180-degree swivel and flip screen', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1647, N'Contoso DVD 12-Inch Player Portable M400 Black', N'6-hour rechargeable battery, 180-degree swivel and flip screen', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1648, N'Contoso DVD 7-Inch Player Portable E200 Black', N'6-hour rechargeable battery, 180-degree swivel and flip screen', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1649, N'Contoso DVD 14-Inch Player Portable L100 Black', N'6-hour rechargeable battery, 180-degree swivel and flip screen', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1650, N'Contoso DVD 15-Inch Player Portable L200 Black', N'6-hour rechargeable battery, 180-degree swivel and flip screen', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1651, N'Contoso DVD 9-Inch Player Portable M300 Silver', N'6-hour rechargeable battery, 180-degree swivel and flip screen', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1652, N'Contoso DVD 12-Inch Player Portable M400 Silver', N'6-hour rechargeable battery, 180-degree swivel and flip screen', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1653, N'Contoso DVD 7-Inch Player Portable E200 Silver', N'6-hour rechargeable battery, 180-degree swivel and flip screen', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1654, N'Contoso DVD 14-Inch Player Portable L100 Silver', N'6-hour rechargeable battery, 180-degree swivel and flip screen', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1655, N'Contoso DVD 15-Inch Player Portable L200 Silver', N'6-hour rechargeable battery, 180-degree swivel and flip screen', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1656, N'Contoso DVD 9-Inch Player Portable M300 White', N'6-hour rechargeable battery, 180-degree swivel and flip screen', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1657, N'Contoso DVD 12-Inch Player Portable M400 White', N'6-hour rechargeable battery, 180-degree swivel and flip screen', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1658, N'Contoso DVD 7-Inch Player Portable E200 White', N'6-hour rechargeable battery, 180-degree swivel and flip screen', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1659, N'Contoso DVD 14-Inch Player Portable L100 White', N'6-hour rechargeable battery, 180-degree swivel and flip screen', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1660, N'Contoso DVD 15-Inch Player Portable L200 White', N'6-hour rechargeable battery, 180-degree swivel and flip screen', N'Music, Movies and Audio Books', N'Movie DVD', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1661, N'MGS Hand Games for kids E300 Yellow', N'Hand Games for kids 2~16', N'Games and Toys', N'Boxed Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1662, N'MGS Hand Games for students E400 Yellow', N'Hand Games for all students', N'Games and Toys', N'Boxed Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1663, N'MGS Hand Games men M300 Yellow', N'Hand Games men, cool', N'Games and Toys', N'Boxed Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1664, N'MGS Hand Games women M400 Yellow', N'Hand Games women, make you happy', N'Games and Toys', N'Boxed Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1665, N'MGS Hand Games for 12-16 boys E600 Yellow', N'Hand Games for 12-16 boys or girls', N'Games and Toys', N'Boxed Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1666, N'MGS Hand Games for Office worker L299 Yellow', N'Hand Games for Office worker, enjoy your life', N'Games and Toys', N'Boxed Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1667, N'MGS Hand Games for kids E300 Black', N'Hand Games for kids 2~16', N'Games and Toys', N'Boxed Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1668, N'MGS Hand Games for students E400 Black', N'Hand Games for all students', N'Games and Toys', N'Boxed Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1669, N'MGS Hand Games men M300 Black', N'Hand Games men, cool', N'Games and Toys', N'Boxed Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1670, N'MGS Hand Games women M400 Black', N'Hand Games women, make you happy', N'Games and Toys', N'Boxed Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1671, N'MGS Hand Games for 12-16 boys E600 Black', N'Hand Games for 12-16 boys or girls', N'Games and Toys', N'Boxed Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1672, N'MGS Hand Games for Office worker L299 Black', N'Hand Games for Office worker, enjoy your life', N'Games and Toys', N'Boxed Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1673, N'MGS Hand Games for kids E300 Red', N'Hand Games for kids 2~16', N'Games and Toys', N'Boxed Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1674, N'MGS Hand Games for students E400 Red', N'Hand Games for all students', N'Games and Toys', N'Boxed Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1675, N'MGS Hand Games men M300 Red', N'Hand Games men, cool', N'Games and Toys', N'Boxed Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1676, N'MGS Hand Games women M400 Red', N'Hand Games women, make you happy', N'Games and Toys', N'Boxed Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1677, N'MGS Hand Games for 12-16 boys E600 Red', N'Hand Games for 12-16 boys or girls', N'Games and Toys', N'Boxed Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1678, N'MGS Hand Games for Office worker L299 Red', N'Hand Games for Office worker, enjoy your life', N'Games and Toys', N'Boxed Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1679, N'MGS Hand Games for kids E300 Silver', N'Hand Games for kids 2~16', N'Games and Toys', N'Boxed Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1680, N'MGS Hand Games for students E400 Silver', N'Hand Games for all students', N'Games and Toys', N'Boxed Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1681, N'MGS Hand Games men M300 Silver', N'Hand Games men, cool', N'Games and Toys', N'Boxed Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1682, N'MGS Hand Games women M400 Silver', N'Hand Games women, make you happy', N'Games and Toys', N'Boxed Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1683, N'MGS Hand Games for 12-16 boys E600 Silver', N'Hand Games for 12-16 boys or girls', N'Games and Toys', N'Boxed Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1684, N'MGS Hand Games for Office worker L299 Silver', N'Hand Games for Office worker, enjoy your life', N'Games and Toys', N'Boxed Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1685, N'SV Hand Games for kids E30 Yellow', N'Hand Games for kids 2~16', N'Games and Toys', N'Boxed Games', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1686, N'SV Hand Games for students E40 Yellow', N'Hand Games for all students', N'Games and Toys', N'Boxed Games', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1687, N'SV Hand Games men M30 Yellow', N'Hand Games men, cool', N'Games and Toys', N'Boxed Games', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1688, N'SV Hand Games women M40 Yellow', N'Hand Games women, make you happy', N'Games and Toys', N'Boxed Games', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1689, N'SV Hand Games for 12-16 boys E60 Yellow', N'Hand Games for 12-16 boys or girls', N'Games and Toys', N'Boxed Games', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1690, N'SV Hand Games for Office worker L28 Yellow', N'Hand Games for Office worker, enjoy your life', N'Games and Toys', N'Boxed Games', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1691, N'SV Hand Games for kids E30 Black', N'Hand Games for kids 2~16', N'Games and Toys', N'Boxed Games', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1692, N'SV Hand Games for students E40 Black', N'Hand Games for all students', N'Games and Toys', N'Boxed Games', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1693, N'SV Hand Games men M30 Black', N'Hand Games men, cool', N'Games and Toys', N'Boxed Games', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1694, N'SV Hand Games women M40 Black', N'Hand Games women, make you happy', N'Games and Toys', N'Boxed Games', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1695, N'SV Hand Games for 12-16 boys E60 Black', N'Hand Games for 12-16 boys or girls', N'Games and Toys', N'Boxed Games', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1696, N'SV Hand Games for Office worker L28 Black', N'Hand Games for Office worker, enjoy your life', N'Games and Toys', N'Boxed Games', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1697, N'SV Hand Games for kids E30 Red', N'Hand Games for kids 2~16', N'Games and Toys', N'Boxed Games', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1698, N'SV Hand Games for students E40 Red', N'Hand Games for all students', N'Games and Toys', N'Boxed Games', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1699, N'SV Hand Games men M30 Red', N'Hand Games men, cool', N'Games and Toys', N'Boxed Games', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1700, N'SV Hand Games women M40 Red', N'Hand Games women, make you happy', N'Games and Toys', N'Boxed Games', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1701, N'SV Hand Games for 12-16 boys E60 Red', N'Hand Games for 12-16 boys or girls', N'Games and Toys', N'Boxed Games', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1702, N'SV Hand Games for Office worker L28 Red', N'Hand Games for Office worker, enjoy your life', N'Games and Toys', N'Boxed Games', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1703, N'SV Hand Games for kids E30 Silver', N'Hand Games for kids 2~16', N'Games and Toys', N'Boxed Games', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1704, N'SV Hand Games for students E40 Silver', N'Hand Games for all students', N'Games and Toys', N'Boxed Games', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1705, N'SV Hand Games men M30 Silver', N'Hand Games men, cool', N'Games and Toys', N'Boxed Games', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1706, N'SV Hand Games women M40 Silver', N'Hand Games women, make you happy', N'Games and Toys', N'Boxed Games', N'Southridge Video')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1707, N'MGS Dal of Honor Airborne M150', N'Dal of Honor Airborne', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1708, N'MGS Collector''s M160', N'Collectors', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1709, N'MGS Gears of War M170', N'Gears of War', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1710, N'MGS Age of Empires III: The Asian Dynasties M180', N'Age of Empires III: The Asian Dynasties', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1711, N'MGS Age of Empires III: The Asian Dynasties M190', N'Age of Empires III: The Asian Dynasties', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1712, N'MGS Flight Simulator X Acceleration Expansion Pack M200', N'Flight Simulator X Acceleration Expansion Pack', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1713, N'MGS Zoo Tycoon 2: Extinct Animals M210', N'Zoo Tycoon 2 : Extinct Animals', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1714, N'MGS Halo 2 for Windows Vista M220', N'Halo 2 for Windows Vista', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1715, N'MGS Shadow-run M230', N'Shadow run', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1716, N'MGS Age of Empires III: The War Chiefs M240', N'Age of Empires III : The War Chiefs', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1717, N'MGS Flight Simulator X M250', N'Tailspin Flight Simulator X', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1718, N'MGS Zoo Tycoon 2: Zookeeper Collection M260', N'Zoo Tycoon 2: Zookeeper Collection', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1719, N'MGS Zoo Tycoon 2: Marine Mania Expansion Pack M270', N'Zoo Tycoon 2: Marine Mania Expansion Pack', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1720, N'MGS Zoo Tycoon 2: African Adventure M280', N'Zoo Tycoon 2: African Adventure', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1721, N'MGS Rise of Nations: Rise of Legends M290', N'Tailspin Rise of Nations: Rise of Legends', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1722, N'MGS Zoo Tycoon 2: End range Species Expansion Pack E105', N'Zoo Tycoon 2: Endangered Species Expansion Pack', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1723, N'MGS Age of Empires III: The Asian Dynasties E106', N'Age of Empires III: The Asian Dynasties', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1724, N'MGS Fable: The Lost Chapters E107', N'Fable: The Lost Chapters', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1725, N'MGS Dungeon Siege II E105', N'Dungeon Siege II', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1726, N'MGS Zoo Tycoon 2 E108', N'Zoo Tycoon 2', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1727, N'MGS Rise of Nations: ld Edition M300', N'Rise of Nations: ld Edition', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1728, N'MGS Age of Mythology: ld Edition M310', N'Age of Mythology: ld Edition', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1729, N'MGS Rise of Nations: Thrones and Patriots M320', N'Rise of Nations: Thrones and Patriots', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1730, N'MGS Dungeon Siege: Legends of Aranna M330', N'Dungeon Siege: Legends of Arana', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1731, N'MGS King& Myths: The Age Collection M340', N'Kings & Myths: The Age Collection', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1732, N'MGS Age of Mythology: The Titans Expansion M350', N'Age of Mythology: The Titans Expansion', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1733, N'MGS Halo: Combat Evolved E109', N'Halo: Combat Evolved', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1734, N'MGS Zoo Tycoon Complete Collection E110', N'Zoo Tycoon Complete Collection', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1735, N'MGS Flight Simulator 2004: A Century of Flight E111', N'Flight Simulator 2004: A Century of Flight', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1736, N'MGS Rise of Nations E112', N'Rise of Nations', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1737, N'MGS Freelancer E113', N'Freelancer', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1738, N'MGS Impossible Creatures E114', N'Impossible Creatures', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1739, N'MGS RalliSport Challenge E115', N'RalliSport Challenge', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1740, N'MGS MechCollection E116', N'MechCollection', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1741, N'MGS MechWarrior 4: Mercenaries E117', N'MechWarrior 4: Mercenaries', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1742, N'MGS Age of Mythology E118', N'Age of Mythology', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1743, N'MGS Combat Flight Simulator 3 E119', N'Combat Flight Simulator 3', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1744, N'MGS Zoo Tycoon Marine Mania E120', N'Zoo Tycoon Marine Mania', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1745, N'MGS MechWarrior 4 Mach Packs X100', N'MechWarrior 4 ''Mach Paks', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1746, N'MGS Zoo Tycoon Dinosaur Digs X200', N'Zoo Tycoon Dinosaur Digs', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1747, N'MGS Dungeon Siege X300', N'Dungeon Siege', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1748, N'MGS Classic Flight Collection X400', N'Classic Flight Collection', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1749, N'MGS Bicycle Board Games X500', N'Bicycle Board Games', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1750, N'MGS Bicycle Card Games X600', N'Bicycle Card Games', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1751, N'MGS Bicycle Casino Games X700', N'Bicycle Casino Games', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1752, N'MGS Flight Simulator 2002 M360', N'Flight Simulator 2002', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1753, N'MGS Racing Madness 2 M370', N'Racing Madness 2', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1754, N'MGS Zoo Tycoon M380', N'Zoo Tycoon', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1755, N'MGS MechWarrior 4: Knight E121', N'MechWarrior 4: Black Knight', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1756, N'MGS Age of Empires II ld Edition E122', N'Age of Empires II ld Edition', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1757, N'MGS MechCommander 2 E123', N'MechCommander 2', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1758, N'MGS Train Simulator E124', N'Train Simulator', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1759, N'MGS MechWarrior 4: Vengeance X800', N'MechWarrior 4: Vengeance', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1760, N'MGS Return of Arcade Anniversary Edition M390', N'Return of Arcade Anniversary Edition', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1761, N'MGS Combat Flight Simulator 2 M400', N'Combat Flight Simulator 2', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1762, N'MGS Age of Empires II: The Conquerors Expansion E125', N'Age of Empires II: The Conquerors Expansion', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1763, N'MGS Flight Simulator 2000 M410', N'Tailspin Flight Simulator 2000', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1764, N'MGS Age of Empires II: The Age of Kings E126', N'Age of Empires II: The Age of Kings', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1765, N'MGS Age of Empires Expansion: The Rise of Rome X900', N'Age of Empires Expansion: The Rise of Rome', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1766, N'MGS Age of Empires 2008new M420', N'Tailspin Age of Empires 2008new', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1767, N'MGS Dal of Honor Airborne 2008 M430', N'Dal of Honor Airborne 2008', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1768, N'MGS Empires Collector''s 2008 M440', N'Empires Collector''s 2008', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1769, N'MGS Gears of War 2008 M450', N'Gears of War 2008', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1770, N'MGS Age of Empires III: The Asian Dynasties 2008 E126', N'Age of Empires III: The Asian Dynasties 2008', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1771, N'MGS Age of Empires III: The Asian Dynasties 2009 E127', N'Age of Empires III: The Asian Dynasties 2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1772, N'MGS Flight Simulator X Acceleration Expansion Pack 2009 E128', N'Flight Simulator X Acceleration Expansion Pack 2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1773, N'MGS Zoo Tycoon 2: Extinct Animals 2008 E129', N'Zoo Tycoon 2: Extinct Animals 2008', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1774, N'MGS Halo 2 for Windows Vista 2009 E130', N'Halo 2 for Windows Vista 2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1775, N'MGS Shadow-run 2008 E131', N'Shadow run 2008', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1776, N'MGS Age of Empires III: The War Chiefs 2007 E132', N'Age of Empires III : The War Chiefs 2007', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1777, N'MGS Flight Simulator X 2008 E133', N'Flight Simulator X 2008', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1778, N'MGS Zoo Tycoon 2: Zookeeper Collection 2008 E134', N'Zoo Tycoon 2: Zookeeper Collection 2008', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1779, N'MGS Zoo Tycoon2: Marine Mania Expansion Pack 2008 E135', N'Zoo Tycoon2: Marine Mania Expansion Pack 2008', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1780, N'MGS Zoo Tycoon 2: African Adventure 2008 E136', N'Zoo Tycoon 2: African Adventure 2008', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1781, N'MGS Rise of Nations: Rise of Legends 2008 E137', N'Rise of Nations: Rise of Legends 2008', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1782, N'MGS Zoo Tycoon 2: End Range Species Expansion Pack 2008 E138', N'Zoo Tycoon 2: Endangered Species Expansion Pack 2008', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1783, N'MGS Age of Empires III 2008 E139', N'Age of Empires III 2008', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1784, N'MGS Fable: The Lost Chapters2008 E140', N'Fable: The Lost Chapters2008', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1785, N'MGS Dungeon 2007 E141', N'Dungeon Siege I 2007', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1786, N'MGS Zoo Tycoon 2008 E142', N'Zoo Tycoon 2008', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1787, N'MGS Rise of Nations: ld Edition 2009 E143', N'Rise of Nations: ld Edition 2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1788, N'MGS Age of Mythology: ld Edition 2009 E144', N'Age of Mythology: ld Edition 2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1789, N'MGS Rise of Nations: Thrones and Patriots2009 E145', N'Rise of Nations: Thrones and Patriots2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1790, N'MGS Dungeon Siege: Legends of Aranna 2009 E146', N'Dungeon Siege: Legends of Aranna™2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1791, N'MGS Kings & Myths: The Age Collection2009 E147', N'Kings & Myths: The Age Collection2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1792, N'MGS Age of Mythology: The Titans Expansion 2009 E148', N'Age of Mythology: The Titans Expansion 2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1793, N'MGS Halo: Combat Evolved2009 E149', N'Halo: Combat Evolved2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1794, N'MGS Zoo Tycoon Complete Collection2009 E150', N'Zoo Tycoon Complete Collection2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1795, N'MGS Flight Simulator 2009: A Century of Flight E151', N'Flight Simulator 2009: A Century of Flight', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1796, N'MGS Rise of Nations2009 E152', N'Rise of Nations2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1797, N'MGS Freelancer 2009 E153', N'Freelancer 2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1798, N'MGS Impossible Creatures2009 E154', N'Impossible Creatures2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1799, N'MGS RalliSport Challenge2009 E155', N'RalliSport Challenge2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1800, N'MGS MechCollection2009 E156', N'MechCollection2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1801, N'MGS MechWarrior4: Mercenaries2009 E157', N'Tailspin MechWarrior4: Mercenaries2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1802, N'MGS Age of Mythology 2009 E158', N'Age of Mythology 2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1803, N'MGS Combat Flight Simulator 2009 E159', N'Combat Flight Simulator 2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1804, N'MGS Zoo Tycoon Marine Mania 2009 E160', N'Zoo Tycoon Marine Mania 2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1805, N'MGS MechWarrior 4 Mach Paks2009 E161', N'MechWarrior 4 ''Mach Paks2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1806, N'MGS Zoo Tycoon Dinosaur Digs2009 E162', N'Zoo Tycoon Dinosaur Digs2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1807, N'MGS Dungeon Siege 2009 E163', N'Dungeon Siege 2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1808, N'MGS Classic Flight Collection2009 E164', N'Classic Flight Collection2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1809, N'MGS Bicycle Board Games2009 E165', N'Bicycle Board Games2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1810, N'MGS Bicycle Card Games2009 E166', N'Bicycle Card Games2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1811, N'MGS Bicycle Casino Games2009 E167', N'Bicycle Casino Games2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1812, N'MGS Flight Simulator 2009 E168', N'Flight Simulator 2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1813, N'MGS Racing Madness 2009 E169', N'Racing Madness 2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1814, N'MGS Zoo Tycoon2009 E170', N'Zoo Tycoon2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1815, N'MGS MechWarrior 4:Knight2009 E171', N'MechWarrior 4: Black Knight2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1816, N'MGS Age of Empires II ld Edition2009 E172', N'Age of Empires II ld Edition2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1817, N'MGS MechCommander 2009 E173', N'MechCommander 2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1818, N'MGS Train Simulator 2009 E174', N'Train Simulator 2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1819, N'MGS MechWarrior 4: Vengeance 2009 E175', N'MechWarrior 4: Vengeance 2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1820, N'MGS Return of Arcade Anniversary Edition 2009 E176', N'Return of Arcade Anniversary Edition 2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1821, N'MGS Combat Flight Simulator 2009 E177', N'Tailspin Combat Flight Simulator 2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1822, N'MGS Age of Empires II: The Conquerors Expansion 2009 E178', N'Age of Empires II: The Conquerors Expansion 2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1823, N'MGS Flight Simulator 2009 E179', N'Tailspin Flight Simulator 2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1824, N'MGS Age of Empires II: The Age of Kings 2009 E180', N'Age of Empires II: The Age of Kings 2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1825, N'MGS Age of Empires Expansion: The Rise of Rome 2009 E181', N'Tailspin Age of Empires Expansion: The Rise of Rome 2009', N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1826, N'MGS Age of Empires, 2009 E182', NULL, N'Games and Toys', N'Download Games', N'Tailspin Toys')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1827, N'Litware Washer & Dryer 27in L420 White', N'9 Wash & 5 Dry programs, full Size steam washer and dryer', N'Home Appliances', N'Washers & Dryers', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1828, N'Litware Washer & Dryer 25.5in M350 White', N'Five Wash/spin Speed combinations, 5 Wash/Dry programs', N'Home Appliances', N'Washers & Dryers', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1829, N'Litware Washer & Dryer 24in M260 White', N'Tumble action cleaning system, 4 Wash/Dry programs', N'Home Appliances', N'Washers & Dryers', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1830, N'Litware Washer & Dryer 21in E214 White', N'7 washing programs, 5 Wash/Rinse temperature levels', N'Home Appliances', N'Washers & Dryers', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1831, N'Litware Washer & Dryer 15.5in E150 White', N'15.5\” duet Washer and Dryer pedestal with drawer', N'Home Appliances', N'Washers & Dryers', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1832, N'Litware Washer & Dryer 27in L420 Silver', N'9 Wash & 5 dry programs, full size steam washer and dryer', N'Home Appliances', N'Washers & Dryers', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1833, N'Litware Washer & Dryer 25.5in M350 Silver', N'Five Wash/spin speed combinations, 5 Wash/Dry programs', N'Home Appliances', N'Washers & Dryers', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1834, N'Litware Washer & Dryer 24in M260 Silver', N'Tumble action cleaning system, 4 Wash/Dry programs', N'Home Appliances', N'Washers & Dryers', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1835, N'Litware Washer & Dryer 21in E214 Silver', N'7 washing programs, 5 Wash/Rinse temperature levels', N'Home Appliances', N'Washers & Dryers', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1836, N'Litware Washer & Dryer 15.5in E150 Silver', N'15.5\” duet washer and dryer pedestal with drawer', N'Home Appliances', N'Washers & Dryers', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1837, N'Litware Washer & Dryer 27in L420 Blue', N'9 wash & 5 dry programs, full size steam washer and dryer', N'Home Appliances', N'Washers & Dryers', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1838, N'Litware Washer & Dryer 25.5in M350 Blue', N'Five Wash/spin speed combinations, 5 wash/dry programs', N'Home Appliances', N'Washers & Dryers', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1839, N'Litware Washer & Dryer 24in M260 Blue', N'Tumble action cleaning system, 4 Wash/Dry programs', N'Home Appliances', N'Washers & Dryers', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1840, N'Litware Washer & Dryer 21in E214 Blue', N'7 washing programs, 5 Wash/Rinse temperature levels', N'Home Appliances', N'Washers & Dryers', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1841, N'Litware Washer & Dryer 15.5in E150 Blue', N'15.5\” duet washer and dryer pedestal with drawer', N'Home Appliances', N'Washers & Dryers', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1842, N'Litware Washer & Dryer 27in L420 Green', N'9 wash & 5 dry programs, full size steam washer and dryer', N'Home Appliances', N'Washers & Dryers', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1843, N'Litware Washer & Dryer 25.5in M350 Green', N'Five Wash/spin Speed Combinations. 5 Wash/Dry Programs', N'Home Appliances', N'Washers & Dryers', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1844, N'Litware Washer & Dryer 24in M260 Green', N'Tumble action cleaning system, 4 wash/dry programs', N'Home Appliances', N'Washers & Dryers', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1845, N'Litware Washer & Dryer 21in E214 Green', N'7 washing programs, 5 Wash/Rinse temperature levels', N'Home Appliances', N'Washers & Dryers', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1846, N'Litware Washer & Dryer 15.5in E150 Green', N'15.5\” duet washer and dryer pedestal with drawer', N'Home Appliances', N'Washers & Dryers', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1847, N'NT Washer & Dryer 27in L2700 White', N'9 wash & 5 dry programs, full size steam washer and dryer', N'Home Appliances', N'Washers & Dryers', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1848, N'NT Washer & Dryer 25.5in M2550 White', N'Five Wash/spin speed combinations, 5 Wash/Dry programs', N'Home Appliances', N'Washers & Dryers', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1849, N'NT Washer & Dryer 24in M2400 White', N'Tumble action cleaning system, 4 Wash/Dry programs', N'Home Appliances', N'Washers & Dryers', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1850, N'NT Washer & Dryer 21in E2100 White', N'7 washing programs, 5 Wash/Rinse temperature levels', N'Home Appliances', N'Washers & Dryers', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1851, N'NT Washer & Dryer 15.5in E1550 White', N'15.5\” duet washer and dryer pedestal with drawer', N'Home Appliances', N'Washers & Dryers', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1852, N'NT Washer & Dryer 27in L2700 Silver', N'9 wash & 5 dry programs, full size steam washer and dryer', N'Home Appliances', N'Washers & Dryers', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1853, N'NT Washer & Dryer 25.5in M2550 Silver', N'Five Wash/spin speed combinations, 5 Wash/Dry programs', N'Home Appliances', N'Washers & Dryers', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1854, N'NT Washer & Dryer 24in M2400 Silver', N'Tumble action cleaning system, 4 Wash/Dry programs', N'Home Appliances', N'Washers & Dryers', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1855, N'NT Washer & Dryer 21in E2100 Silver', N'7 washing programs, 5 Wash/Rinse temperature levels', N'Home Appliances', N'Washers & Dryers', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1856, N'NT Washer & Dryer 15.5in E1550 Silver', N'15.5\” duet washer and dryer pedestal with drawer', N'Home Appliances', N'Washers & Dryers', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1857, N'NT Washer & Dryer 27in L2700 Blue', N'9 wash & 5 dry programs, full size steam washer and dryer', N'Home Appliances', N'Washers & Dryers', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1858, N'NT Washer & Dryer 25.5in M2550 Blue', N'Five Wash/spin speed combinations, 5 Wash/Dry programs', N'Home Appliances', N'Washers & Dryers', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1859, N'NT Washer & Dryer 24in M2400 Blue', N'Tumble action cleaning system, 4 Wash/Dry programs', N'Home Appliances', N'Washers & Dryers', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1860, N'NT Washer & Dryer 21in E2100 Blue', N'7 washing programs, 5 Wash/Rinse temperature levels', N'Home Appliances', N'Washers & Dryers', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1861, N'NT Washer & Dryer 15.5in E1550 Blue', N'15.5\” duet washer and dryer pedestal with drawer', N'Home Appliances', N'Washers & Dryers', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1862, N'NT Washer & Dryer 27in L2700 Green', N'9 wash & 5 dry programs, full size steam washer and dryer', N'Home Appliances', N'Washers & Dryers', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1863, N'NT Washer & Dryer 25.5in M2550 Green', N'Five Wash/spin speed combinations, 5 Wash/Dry programs', N'Home Appliances', N'Washers & Dryers', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1864, N'NT Washer & Dryer 24in M2400 Green', N'Tumble action cleaning system, 4 Wash/Dry programs', N'Home Appliances', N'Washers & Dryers', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1865, N'NT Washer & Dryer 21in E2100 Green', N'7 washing programs, 5 Wash/Rinse temperature levels', N'Home Appliances', N'Washers & Dryers', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1866, N'NT Washer & Dryer 15.5in E1550 Green', N'15.5\” duet washer and dryer pedestal with drawer', N'Home Appliances', N'Washers & Dryers', N'Northwind Traders')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1867, N'Contoso Washer & Dryer 27in L270 White', N'9 wash & 5 dry programs, full size steam washer and dryer', N'Home Appliances', N'Washers & Dryers', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1868, N'Contoso Washer & Dryer 25.5in M255 White', N'Five Wash/spin speed combinations, 5 Wash/Dry programs', N'Home Appliances', N'Washers & Dryers', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1869, N'Contoso Washer & Dryer 24in M240 White', N'Tumble action cleaning system, 4 Wash/Dry programs', N'Home Appliances', N'Washers & Dryers', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1870, N'Contoso Washer & Dryer 21in E210 White', N'7 washing programs, 5 Wash/Rinse temperature levels', N'Home Appliances', N'Washers & Dryers', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1871, N'Contoso Washer & Dryer 15.5in E155 White', N'15.5\” duet washer and dryer pedestal with drawer', N'Home Appliances', N'Washers & Dryers', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1872, N'Contoso Washer & Dryer 27in L270 Silver', N'9 wash & 5 dry programs, full size steam washer and dryer', N'Home Appliances', N'Washers & Dryers', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1873, N'Contoso Washer & Dryer 25.5in M255 Silver', N'Five Wash/spin speed combinations, 5 Wash/Dry programs', N'Home Appliances', N'Washers & Dryers', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1874, N'Contoso Washer & Dryer 24in M240 Silver', N'Tumble action cleaning system, 4 Wash/Dry programs', N'Home Appliances', N'Washers & Dryers', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1875, N'Contoso Washer & Dryer 21in E210 Silver', N'7 washing programs, 5 Wash/Rinse temperature levels', N'Home Appliances', N'Washers & Dryers', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1876, N'Contoso Washer & Dryer 15.5in E155 Silver', N'15.5\” duet washer and dryer pedestal with drawer', N'Home Appliances', N'Washers & Dryers', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1877, N'Contoso Washer & Dryer 27in L270 Blue', N'9 wash & 5 dry programs, full size steam washer and dryer', N'Home Appliances', N'Washers & Dryers', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1878, N'Contoso Washer & Dryer 25.5in M255 Blue', N'Five Wash/spin speed combinations, 5 Wash/Dry programs', N'Home Appliances', N'Washers & Dryers', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1879, N'Contoso Washer & Dryer 24in M240 Blue', N'Tumble action cleaning system, 4 Wash/Dry programs', N'Home Appliances', N'Washers & Dryers', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1880, N'Contoso Washer & Dryer 21in E210 Blue', N'7 washing programs, 5 Wash/Rinse temperature levels', N'Home Appliances', N'Washers & Dryers', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1881, N'Contoso Washer & Dryer 15.5in E155 Blue', N'15.5\” duet washer and dryer pedestal with drawer', N'Home Appliances', N'Washers & Dryers', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1882, N'Contoso Washer & Dryer 27in L270 Green', N'9 Wash & 5 Dry programs, full size steam washer and dryer', N'Home Appliances', N'Washers & Dryers', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1883, N'Contoso Washer & Dryer 25.5in M255 Green', N'Five Wash/spin speed combinations, 5 Wash/Dry programs', N'Home Appliances', N'Washers & Dryers', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1884, N'Contoso Washer & Dryer 24in M240 Green', N'Tumble action cleaning system, 4 Wash/Dry programs', N'Home Appliances', N'Washers & Dryers', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1885, N'Contoso Washer & Dryer 21in E210 Green', N'7 washing programs, 5 Wash/Rinse temperature levels', N'Home Appliances', N'Washers & Dryers', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1886, N'Contoso Washer & Dryer 15.5in E155 Green', N'15.5\” duet washer and dryer pedestal with drawer', N'Home Appliances', N'Washers & Dryers', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1887, N'Contoso Washer & Dryer 27in L270 Red', N'9 wash & 5 dry programs, full size steam washer and dryer', N'Home Appliances', N'Washers & Dryers', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1888, N'Contoso Washer & Dryer 25.5in M255 Red', N'Five Wash/spin speed combinations, 5 Wash/Dry programs', N'Home Appliances', N'Washers & Dryers', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1889, N'Contoso Washer & Dryer 24in M240 Red', N'Tumble action cleaning system, 4 Wash/Dry programs', N'Home Appliances', N'Washers & Dryers', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1890, N'Contoso Washer & Dryer 21in E210 Red', N'7 washing programs, 5 Wash/Rinse temperature levels', N'Home Appliances', N'Washers & Dryers', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1891, N'Contoso Washer & Dryer 15.5in E155 Red', N'15.5\” duet washer and dryer pedestal with drawer', N'Home Appliances', N'Washers & Dryers', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1892, N'Contoso Washer & Dryer 27in L270 Pink', N'9 wash & 5 dry programs, full size steam washer and dryer', N'Home Appliances', N'Washers & Dryers', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1893, N'Contoso Washer & Dryer 25.5in M255 Pink', N'Five Wash/spin speed combinations, 5 Wash/Dry programs', N'Home Appliances', N'Washers & Dryers', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1894, N'Contoso Washer & Dryer 24in M240 Pink', N'Tumble action cleaning system, 4 Wash/Dry programs', N'Home Appliances', N'Washers & Dryers', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1895, N'Contoso Washer & Dryer 21in E210 Pink', N'7 washing programs, 5 Wash/Rinse temperature levels', N'Home Appliances', N'Washers & Dryers', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1896, N'Contoso Washer & Dryer 15.5in E155 Pink', N'15.5\” duet washer and dryer pedestal with drawer', N'Home Appliances', N'Washers & Dryers', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1897, N'Fabrikam Refrigerator 24.7CuFt X9800 White', N'Total capacity: 24.7cu.ft, Dispense-a-Can storage for easy access to drinks', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1898, N'Fabrikam Refrigerator 19CuFt M7600 White', N'19-cubic-foot refrigerator, Refrigerator Capacity: 12.6cu.ft., Freezer Capacity: 6.4cu.ft.', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1899, N'Fabrikam Refrigerator 9.7CuFt M5600 White', N'9.7-cubic-foot refrigerator, four full glass shelves handle lots of snacks', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1900, N'Fabrikam Refrigerator 4.6CuFt E2800 White', N'4.6-cubic-foot refrigerator, compressor cooled, space saving flat back design', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1901, N'Fabrikam Refrigerator 3.2CuFt E1600 White', N'3.2-cubic-foot refrigerator, flush back space saving design', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1902, N'Fabrikam Refrigerator 1.7CuFt E1200 White', N'1.7-cubic-foot refrigerator, soft line and reversible door, flush back design', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1903, N'Fabrikam Refrigerator 24.7CuFt X9800 Brown', N'Total Capacity: 24.7cu.ft, Dispense-a-Can storage for easy access to drinks', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1904, N'Fabrikam Refrigerator 19CuFt M7600 Brown', N'19-cubic-foot refrigerator, Refrigerator Capacity: 12.6cu.ft. , Freezer Capacity: 6.4cu.ft.', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1905, N'Fabrikam Refrigerator 9.7CuFt M5600 Brown', N'9.7-cubic-foot refrigerator, four full glass shelves handle lots of snacks', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1906, N'Fabrikam Refrigerator 4.6CuFt E2800 Brown', N'4.6-cubic-foot refrigerator, compressor cooled, space saving flat back design', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1907, N'Fabrikam Refrigerator 3.2CuFt E1600 Brown', N'3.2-cubic-foot refrigerator, flush back space saving design', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1908, N'Fabrikam Refrigerator 1.7CuFt E1200 Brown', N'1.7-cubic-foot refrigerator, soft line and reversible door, flush back design', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1909, N'Fabrikam Refrigerator 24.7CuFt X9800 Silver', N'Total Capacity: 24.7cu.ft, Dispense-a-Can storage for easy access to drinks', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1910, N'Fabrikam Refrigerator 19CuFt M7600 Silver', N'19-cubic-foot refrigerator, Refrigerator Capacity: 12.6cu.ft. ; Freezer Capacity: 6.4cu.ft.', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1911, N'Fabrikam Refrigerator 9.7CuFt M5600 Silver', N'9.7-cubic-foot refrigerator, four full glass shelves handle lots of snacks', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1912, N'Fabrikam Refrigerator 4.6CuFt E2800 Silver', N'4.6-cubic-foot refrigerator, compressor cooled, space saving flat back design', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1913, N'Fabrikam Refrigerator 3.2CuFt E1600 Silver', N'3.2-cubic-foot refrigerator, flush back space saving design', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1914, N'Fabrikam Refrigerator 1.7CuFt E1200 Silver', N'1.7-cubic-foot refrigerator, soft line and reversible door, flush back design', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1915, N'Fabrikam Refrigerator 24.7CuFt X9800 Green', N'Total Capacity: 24.7cu.ft, Dispense-a-Can storage for easy access to drinks', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1916, N'Fabrikam Refrigerator 19CuFt M7600 Green', N'19-cubic-foot refrigerator, Refrigerator Capacity: 12.6cu.ft. ; Freezer Capacity: 6.4cu.ft.', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1917, N'Fabrikam Refrigerator 9.7CuFt M5600 Green', N'9.7-cubic-foot refrigerator, four full glass shelves handle lots of snacks.', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1918, N'Fabrikam Refrigerator 4.6CuFt E2800 Green', N'4.6-cubic-foot refrigerator, compressor cooled, space saving flat back design', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1919, N'Fabrikam Refrigerator 3.2CuFt E1600 Green', N'3.2-cubic-foot refrigerator, flush back space saving design', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1920, N'Fabrikam Refrigerator 1.7CuFt E1200 Green', N'1.7-cubic-foot refrigerator, soft line and reversible door, flush back design', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1921, N'Fabrikam Refrigerator 24.7CuFt X9800 Blue', N'Total Capacity: 24.7cu.ft. Dispense-a-Can storage for easy access to drinks', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1922, N'Fabrikam Refrigerator 19CuFt M7600 Blue', N'19-cubic-foot refrigerator, Refrigerator Capacity: 12.6cu.ft. ; Freezer Capacity: 6.4cu.ft.', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1923, N'Fabrikam Refrigerator 9.7CuFt M5600 Blue', N'9.7-cubic-foot refrigerator, four full glass shelves handle lots of snacks', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1924, N'Fabrikam Refrigerator 4.6CuFt E2800 Blue', N'4.6-cubic-foot refrigerator, compressor cooled, space saving flat back design', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1925, N'Fabrikam Refrigerator 3.2CuFt E1600 Blue', N'3.2-cubic-foot refrigerator, flush back space saving design', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1926, N'Fabrikam Refrigerator 1.7CuFt E1200 Blue', N'1.7-cubic-foot refrigerator, soft line and reversible door, flush back design', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1927, N'Fabrikam Refrigerator 24.7CuFt X9800 Grey', N'Total Capacity: 24.7cu.ft. Dispense-a-Can storage for easy access to drinks', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1928, N'Fabrikam Refrigerator 19CuFt M7600 Grey', N'19-cubic-foot refrigerator, refrigerator Capacity: 12.6cu.ft. ; Freezer Capacity: 6.4cu.ft.', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1929, N'Fabrikam Refrigerator 9.7CuFt M5600 Grey', N'9.7-cubic-foot refrigerator, four full glass shelves handle lots of snacks.', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1930, N'Fabrikam Refrigerator 4.6CuFt E2800 Grey', N'4.6-cubic-foot refrigerator, compressor cooled, space saving flat back design', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1931, N'Fabrikam Refrigerator 3.2CuFt E1600 Grey', N'3.2-cubic-foot refrigerator, flush back space saving design', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1932, N'Fabrikam Refrigerator 1.7CuFt E1200 Grey', N'1.7-cubic-foot refrigerator, soft line and reversible door, flush back design', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1933, N'Fabrikam Refrigerator 24.7CuFt X9800 Orange', N'Total Capacity: 24.7cu.ft. Dispense-a-Can storage for easy access to drinks', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1934, N'Fabrikam Refrigerator 19CuFt M7600 Orange', N'19-cubic-foot refrigerator, Refrigerator Capacity: 12.6cu.ft. ; Freezer Capacity: 6.4cu.ft.', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1935, N'Fabrikam Refrigerator 9.7CuFt M5600 Orange', N'9.7-cubic-foot refrigerator, four full glass shelves handle lots of snacks', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1936, N'Fabrikam Refrigerator 4.6CuFt E2800 Orange', N'4.6-cubic-foot refrigerator, compressor cooled, space saving flat back design', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1937, N'Fabrikam Refrigerator 3.2CuFt E1600 Orange', N'3.2-cubic-foot refrigerator, flush back space saving design', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1938, N'Fabrikam Refrigerator 1.7CuFt E1200 Orange', N'1.7-cubic-foot refrigerator, soft line and reversible door, flush back design', N'Home Appliances', N'Refrigerators', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1939, N'Litware Refrigerator 24.7CuFt X980 White', N'Total Capacity: 24.7cu.ft, Dispense-a-Can storage for easy access to drinks', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1940, N'Litware Refrigerator 19CuFt M760 White', N'19-cubic-foot refrigerator, Refrigerator Capacity: 12.6cu.ft. ,Freezer Capacity: 6.4cu.ft.', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1941, N'Litware Refrigerator 9.7CuFt M560 White', N'9.7-cubic-foot refrigerator, four full glass shelves handle lots of snacks', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1942, N'Litware Refrigerator 4.6CuFt E280 White', N'4.6-cubic-foot refrigerator, compressor cooled, space saving flat back design', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1943, N'Litware Refrigerator 3.2CuFt E160 White', N'3.2-cubic-foot refrigerator, flush back space saving design', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1944, N'Litware Refrigerator 1.7CuFt E120 White', N'1.7-cubic-foot refrigerator, soft line and reversible door, flush back design', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1945, N'Litware Refrigerator 24.7CuFt X980 Brown', N'Total Capacity: 24.7cu.ft. Dispense-a-Can storage for easy access to drinks', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1946, N'Litware Refrigerator 19CuFt M760 Brown', N'19-cubic-foot refrigerator, Refrigerator Capacity: 12.6cu.ft. ; Freezer Capacity: 6.4cu.ft.', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1947, N'Litware Refrigerator 9.7CuFt M560 Brown', N'9.7-cubic-foot refrigerator, four full glass shelves handle lots of snacks', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1948, N'Litware Refrigerator 4.6CuFt E280 Brown', N'4.6-cubic-foot refrigerator, compressor cooled, space saving flat back design', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1949, N'Litware Refrigerator 3.2CuFt E160 Brown', N'3.2-cubic-foot refrigerator, flush back space saving design', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1950, N'Litware Refrigerator 1.7CuFt E120 Brown', N'1.7-cubic-foot refrigerator, soft line and reversible door, flush back design', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1951, N'Litware Refrigerator 24.7CuFt X980 Silver', N'Total Capacity: 24.7cu.ft. Dispense-a-Can storage for easy access to drinks', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1952, N'Litware Refrigerator 19CuFt M760 Silver', N'19-cubic-foot refrigerator, Refrigerator Capacity: 12.6cu.ft. ; Freezer Capacity: 6.4cu.ft.', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1953, N'Litware Refrigerator 9.7CuFt M560 Silver', N'9.7-cubic-foot refrigerator, four full glass shelves handle lots of snacks', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1954, N'Litware Refrigerator 4.6CuFt E280 Silver', N'4.6-cubic-foot refrigerator, compressor cooled, space saving flat back design', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1955, N'Litware Refrigerator 3.2CuFt E160 Silver', N'3.2-cubic-foot refrigerator, flush back space saving design', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1956, N'Litware Refrigerator 1.7CuFt E120 Silver', N'1.7-cubic-foot refrigerator, soft line and reversible door, flush back design', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1957, N'Litware Refrigerator 24.7CuFt X980 Green', N'Total Capacity: 24.7cu.ft. Dispense-a-Can storage for easy access to drinks', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1958, N'Litware Refrigerator 19CuFt M760 Green', N'19-cubic-foot refrigerator, Refrigerator Capacity: 12.6cu.ft. ; Freezer Capacity: 6.4cu.ft.', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1959, N'Litware Refrigerator 9.7CuFt M560 Green', N'9.7-cubic-foot refrigerator, four full glass shelves handle lots of snacks', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1960, N'Litware Refrigerator 4.6CuFt E280 Green', N'4.6-cubic-foot refrigerator, compressor cooled, space saving flat back design', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1961, N'Litware Refrigerator 3.2CuFt E160 Green', N'3.2-cubic-foot refrigerator, flush back space saving design', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1962, N'Litware Refrigerator 1.7CuFt E120 Green', N'1.7-cubic-foot refrigerator, soft line and reversible door,flush back design.', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1963, N'Litware Refrigerator 24.7CuFt X980 Blue', N'Total Capacity: 24.7cu.ft. Dispense-a-Can storage for easy access to drinks', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1964, N'Litware Refrigerator 19CuFt M760 Blue', N'19-cubic-foot refrigerator, Refrigerator Capacity: 12.6cu.ft. Freezer Capacity: 6.4cu.ft.', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1965, N'Litware Refrigerator 9.7CuFt M560 Blue', N'9.7-cubic-foot refrigerator, four full glass shelves handle lots of snacks', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1966, N'Litware Refrigerator 4.6CuFt E280 Blue', N'4.6-cubic-foot refrigerator, compressor cooled, space saving flat back design', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1967, N'Litware Refrigerator 3.2CuFt E160 Blue', N'3.2-cubic-foot refrigerator, flush back space saving design', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1968, N'Litware Refrigerator 1.7CuFt E120 Blue', N'1.7-cubic-foot refrigerator, soft line and reversible door, flush back design', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1969, N'Litware Refrigerator 24.7CuFt X980 Grey', N'Total Capacity: 24.7cu.ft. Dispense-a-Can storage for easy access to drinks', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1970, N'Litware Refrigerator 19CuFt M760 Grey', N'19-cubic-foot refrigerator, Refrigerator Capacity: 12.6cu.ft. ; Freezer Capacity: 6.4cu.ft.', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1971, N'Litware Refrigerator 9.7CuFt M560 Grey', N'9.7-cubic-foot refrigerator, four full glass shelves handle lots of snacks', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1972, N'Litware Refrigerator 4.6CuFt E280 Grey', N'4.6-cubic-foot refrigerator, compressor cooled, space saving flat back design', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1973, N'Litware Refrigerator 3.2CuFt E160 Grey', N'3.2-cubic-foot refrigerator, flush back space saving design', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1974, N'Litware Refrigerator 1.7CuFt E120 Grey', N'1.7-cubic-foot refrigerator, soft line and reversible door, flush back design', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1975, N'Litware Refrigerator L1200 Orange', N'Total Capacity: 24.7cu.ft. Dispense-a-Can storage for easy access to drinks', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1976, N'Litware Refrigerator 19CuFt M760 Orange', N'19-cubic-foot refrigerator, Refrigerator Capacity: 12.6cu.ft. Freezer Capacity: 6.4cu.ft.', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1977, N'Litware Refrigerator 9.7CuFt M560 Orange', N'9.7-cubic-foot refrigerator, four full glass shelves handle lots of snacks', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1978, N'Litware Refrigerator 4.6CuFt E280 Orange', N'4.6-cubic-foot refrigerator, compressor cooled, space saving flat back design', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1979, N'Litware Refrigerator 3.2CuFt E160 Orange', N'3.2-cubic-foot refrigerator, flush back space saving design', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1980, N'Litware Refrigerator 1.7CuFt E120 Orange', N'1.7-cubic-foot refrigerator, soft line and reversible door, flush back design', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1981, N'Litware Refrigerator 19CuFt M760 Red', N'19-cubic-foot refrigerator, Refrigerator Capacity: 12.6cu.ft. ; Freezer Capacity: 6.4cu.ft.', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1982, N'Litware Refrigerator 9.7CuFt M560 Red', N'9.7-cubic-foot refrigerator, four full glass shelves handle lots of snacks', N'Home Appliances', N'Refrigerators', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1983, N'Fabrikam Microwave 1.5CuFt X1100 White', N'1100-watt 1-1/2-cubic-foot convection microwave oven', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1984, N'Fabrikam Microwave 2.2CuFt M1250 White', N'1250 watts of power for faster cooking, defrosting interior', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1985, N'Fabrikam Microwave 1.6CuFt M1250 White', N'1250-watt full-sized microwave oven with 1-3/5-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1986, N'Fabrikam Microwave 1.0CuFt E1100 White', N'1100-watt mid-sized microwave oven with 1-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1987, N'Fabrikam Microwave 0.9CuFt E0900 White', N'Total output 900 watts,. 10 power levels, 6 one touch cooking menu', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1988, N'Fabrikam Microwave 0.8CuFt E0800 White', N'800-watt compact-size microwave oven with 4/5-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1989, N'Fabrikam Microwave 1.5CuFt X1100 Silver', N'1100-watt 1-1/2-cubic-foot convection microwave oven', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1990, N'Fabrikam Microwave 2.2CuFt M1250 Silver', N'1250 watts of power for faster cooking, defrosting interior', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1991, N'Fabrikam Microwave 1.6CuFt M1250 Silver', N'1250-watt full-sized microwave oven with 1-3/5-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1992, N'Fabrikam Microwave 1.0CuFt E1100 Silver', N'1100-watt mid-sized microwave oven with 1-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1993, N'Fabrikam Microwave 0.9CuFt E0900 Silver', N'Total output 900 watts, 10 power levels, 6 one touch cooking menu', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1994, N'Fabrikam Microwave 0.8CuFt E0800 Silver', N'800-watt compact-size microwave oven with 4/5-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1995, N'Fabrikam Microwave 1.5CuFt X1100 Grey', N'1100-watt 1-1/2-cubic-foot convection microwave oven', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1996, N'Fabrikam Microwave 2.2CuFt M1250 Grey', N'1250 watts of power for faster cooking, defrosting interior', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1997, N'Fabrikam Microwave 1.6CuFt M1250 Grey', N'1250-watt full-sized microwave oven with 1-3/5-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1998, N'Fabrikam Microwave 1.0CuFt E1100 Grey', N'1100-watt mid-sized microwave oven with 1-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (1999, N'Fabrikam Microwave 0.9CuFt E0900 Grey', N'Total output 900 watts. 10 power levels, 6 one touch cooking menu', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2000, N'Fabrikam Microwave 0.8CuFt E0800 Grey', N'800-watt compact-size microwave oven with 4/5-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2001, N'Fabrikam Microwave 1.5CuFt X1100 Red', N'1100-watt 1-1/2-cubic-foot convection microwave oven', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2002, N'Fabrikam Microwave 2.2CuFt M1250 Red', N'1250 watts of power for faster cooking, defrosting interior', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2003, N'Fabrikam Microwave 1.6CuFt M1250 Red', N'1250-watt full-sized microwave oven with 1-3/5-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2004, N'Fabrikam Microwave 1.0CuFt E1100 Red', N'1100-watt mid-sized microwave oven with 1-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2005, N'Fabrikam Microwave 0.9CuFt E0900 Red', N'Total output 900 watts, 10 power levels. 6 one touch cooking menu', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2006, N'Fabrikam Microwave 0.8CuFt E0800 Red', N'800-watt compact-size microwave oven with 4/5-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2007, N'Fabrikam Microwave 1.5CuFt X1100 Black', N'1100-watt 1-1/2-cubic-foot convection microwave oven', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2008, N'Fabrikam Microwave 2.2CuFt M1250 Black', N'1250 watts of power for faster cooking, defrosting interior', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2009, N'Fabrikam Microwave 1.6CuFt M1250 Black', N'1250-watt full-sized microwave oven with 1-3/5-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2010, N'Fabrikam Microwave 1.0CuFt E1100 Black', N'1100-watt mid-sized microwave oven with 1-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2011, N'Fabrikam Microwave 0.9CuFt E0900 Black', N'Total output 900 watts. 10 power levels, 6 one touch cooking menu', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2012, N'Fabrikam Microwave 0.8CuFt E0800 Black', N'800-watt compact-size microwave oven with 4/5-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2013, N'Fabrikam Microwave 1.5CuFt X1100 Blue', N'1100-watt 1-1/2-cubic-foot convection microwave oven', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2014, N'Fabrikam Microwave 2.2CuFt M1250 Blue', N'1250 watts of power for faster cooking, defrosting interior', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2015, N'Fabrikam Microwave 1.6CuFt M1250 Blue', N'1250-watt full-sized microwave oven with 1-3/5-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2016, N'Fabrikam Microwave 1.0CuFt E1100 Blue', N'1100-watt mid-sized microwave oven with 1-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2017, N'Fabrikam Microwave 0.9CuFt E0900 Blue', N'Total output 900 watts, 10 power levels, 6 one touch cooking menu', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2018, N'Fabrikam Microwave 0.8CuFt E0800 Blue', N'800-watt compact-size microwave oven with 4/5-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2019, N'Litware Microwave 1.5CuFt X110 White', N'1100-watt 1-1/2-cubic-foot convection microwave oven', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2020, N'Litware Microwave 2.2CuFt M125 White', N'1250 watts of power for faster cooking, defrosting interior', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2021, N'Litware Microwave 1.6CuFt M125 White', N'1250-watt full-sized microwave oven with 1-3/5-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2022, N'Litware Microwave 1.0CuFt E110 White', N'1100-watt mid-sized microwave oven with 1-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2023, N'Litware Microwave 0.9CuFt E090 White', N'Total output 900 watts. 10 power levels, 6 one touch cooking menu', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2024, N'Litware Microwave 0.8CuFt E080 White', N'800-watt compact-size microwave oven with 4/5-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2025, N'Litware Microwave 1.5CuFt X110 Silver', N'1100-watt 1-1/2-cubic-foot convection microwave oven', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2026, N'Litware Microwave 2.2CuFt M125 Silver', N'1250 watts of power for faster cooking, defrosting interior', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2027, N'Litware Microwave 1.6CuFt M125 Silver', N'1250-watt full-sized microwave oven with 1-3/5-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2028, N'Litware Microwave 1.0CuFt E110 Silver', N'1100-watt mid-sized microwave oven with 1-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2029, N'Litware Microwave 0.9CuFt E090 Silver', N'Total output 900 watts. 10 power levels, 6 one touch cooking menu', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2030, N'Litware Microwave 0.8CuFt E080 Silver', N'800-watt compact-size microwave oven with 4/5-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2031, N'Litware Microwave 1.5CuFt X110 Grey', N'1100-watt 1-1/2-cubic-foot convection microwave oven', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2032, N'Litware Microwave 2.2CuFt M125 Grey', N'1250 watts of power for faster cooking, defrosting interior', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2033, N'Litware Microwave 1.6CuFt M125 Grey', N'1250-watt full-sized microwave oven with 1-3/5-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2034, N'Litware Microwave 1.0CuFt E110 Grey', N'1100-watt mid-sized microwave oven with 1-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2035, N'Litware Microwave 0.9CuFt E090 Grey', N'Total output 900 watts, 10 power levels. 6 one touch cooking menu', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2036, N'Litware Microwave 0.8CuFt E080 Grey', N'800-watt compact-size microwave oven with 4/5-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2037, N'Litware Microwave 1.5CuFt X110 Red', N'1100-watt 1-1/2-cubic-foot convection microwave oven', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2038, N'Litware Microwave 2.2CuFt M125 Red', N'1250 watts of power for faster cooking, defrosting interior', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2039, N'Litware Microwave 1.6CuFt M125 Red', N'1250-watt full-sized microwave oven with 1-3/5-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2040, N'Litware Microwave 1.0CuFt E110 Red', N'1100-watt mid-sized microwave oven with 1-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2041, N'Litware Microwave 0.9CuFt E090 Red', N'Total output 900 watts. 10 power levels, 6 one touch cooking menu', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2042, N'Litware Microwave 0.8CuFt E080 Red', N'800-watt compact-size microwave oven with 4/5-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2043, N'Litware Microwave 1.5CuFt X110 Black', N'1100-watt 1-1/2-cubic-foot convection microwave oven', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2044, N'Litware Microwave 2.2CuFt M125 Black', N'1250 watts of power for faster cooking, defrosting interior', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2045, N'Litware Microwave 1.6CuFt M125 Black', N'1250-watt full-sized microwave oven with 1-3/5-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2046, N'Litware Microwave 1.0CuFt E110 Black', N'1100-watt mid-sized microwave oven with 1-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2047, N'Litware Microwave 0.9CuFt E090 Black', N'Total output 900 watts. 10 power levels, 6 one touch cooking menu', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2048, N'Litware Microwave 0.8CuFt E080 Black', N'800-watt compact-size microwave oven with 4/5-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2049, N'Litware Microwave 1.5CuFt X110 Blue', N'1100-watt 1-1/2-cubic-foot convection microwave oven', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2050, N'Litware Microwave 2.2CuFt M125 Blue', N'1250 watts of power for faster cooking, defrosting interior', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2051, N'Litware Microwave 1.6CuFt M125 Blue', N'1250-watt full-sized microwave oven with 1-3/5-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2052, N'Litware Microwave 1.0CuFt E110 Blue', N'1100-watt mid-sized microwave oven with 1-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2053, N'Litware Microwave 0.9CuFt E090 Blue', N'Total output 900 watts, 10 power levels, 6 one touch cooking menu', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2054, N'Litware Microwave 0.8CuFt E080 Blue', N'800-watt compact-size microwave oven with 4/5-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2055, N'Contoso Microwave 1.5CuFt X0110 White', N'1100-watt 1-1/2-cubic-foot convection microwave oven', N'Home Appliances', N'Microwaves', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2056, N'Contoso Microwave 2.2CuFt M0125 White', N'1250 watts of power for faster cooking, defrosting interior', N'Home Appliances', N'Microwaves', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2057, N'Contoso Microwave 1.6CuFt M0125 White', N'1250-watt full-sized microwave oven with 1-3/5-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2058, N'Contoso Microwave 1.0CuFt E0110 White', N'1100-watt mid-sized microwave oven with 1-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2059, N'Contoso Microwave 0.9CuFt E0090 White', N'Total output 900 watts. 10 power levels, 6 one touch cooking menu', N'Home Appliances', N'Microwaves', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2060, N'Contoso Microwave 0.8CuFt E0080 White', N'800-watt compact-size microwave oven with 4/5-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2061, N'Contoso Microwave 1.5CuFt X0110 Silver', N'1100-watt 1-1/2-cubic-foot convection microwave oven', N'Home Appliances', N'Microwaves', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2062, N'Contoso Microwave 2.2CuFt M0125 Silver', N'1250 watts of power for faster cooking, defrosting interior', N'Home Appliances', N'Microwaves', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2063, N'Contoso Microwave 1.6CuFt M0125 Silver', N'1250-watt full-sized microwave oven with 1-3/5-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2064, N'Contoso Microwave 1.0CuFt E0110 Silver', N'1100-watt mid-sized microwave oven with 1-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2065, N'Contoso Microwave 0.9CuFt E0090 Silver', N'Total output 900 watts. 10 power levels, 6 one touch cooking menu', N'Home Appliances', N'Microwaves', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2066, N'Contoso Microwave 0.8CuFt E0080 Silver', N'800-watt compact-size microwave oven with 4/5-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2067, N'Contoso Microwave 1.5CuFt X0110 Grey', N'1100-watt 1-1/2-cubic-foot convection microwave oven', N'Home Appliances', N'Microwaves', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2068, N'Contoso Microwave 2.2CuFt M0125 Grey', N'1250 watts of power for faster cooking, defrosting interior', N'Home Appliances', N'Microwaves', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2069, N'Contoso Microwave 2.2CuFt M0126 Grey', N'1250-watt full-sized microwave oven with 1-3/5-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2070, N'Contoso Microwave 1.0CuFt E0110 Grey', N'1100-watt mid-sized microwave oven with 1-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2071, N'Contoso Microwave 0.9CuFt E0090 Grey', N'Total output 900 watts, 10 power levels, 6 one touch cooking menu', N'Home Appliances', N'Microwaves', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2072, N'Contoso Microwave 0.8CuFt E0080 Grey', N'800-watt compact-size microwave oven with 4/5-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2073, N'Contoso Microwave 1.5CuFt X0110 Red', N'1100-watt 1-1/2-cubic-foot convection microwave oven', N'Home Appliances', N'Microwaves', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2074, N'Contoso Microwave 2.2CuFt M0125 Red', N'1250 watts of power for faster cooking, defrosting interior', N'Home Appliances', N'Microwaves', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2075, N'Contoso Microwave 1.6CuFt M0125 Red', N'1250-watt full-sized microwave oven with 1-3/5-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2076, N'Contoso Microwave 1.0CuFt E0110 Red', N'1100-watt mid-sized microwave oven with 1-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2077, N'Contoso Microwave 0.9CuFt E0090 Red', N'Total output 900 watts. 10 power levels, 6 one touch cooking menu', N'Home Appliances', N'Microwaves', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2078, N'Contoso Microwave 0.8CuFt E0080 Red', N'800-watt compact-size microwave oven with 4/5-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2079, N'Contoso Microwave 1.5CuFt X0110 Black', N'1100-watt 1-1/2-cubic-foot convection microwave oven', N'Home Appliances', N'Microwaves', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2080, N'Contoso Microwave 2.2CuFt M0125 Black', N'1250 watts of power for faster cooking, defrosting interior', N'Home Appliances', N'Microwaves', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2081, N'Contoso Microwave 1.6CuFt M0125 Black', N'1250-watt full-sized microwave oven with 1-3/5-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2082, N'Contoso Microwave 1.0CuFt E0110 Black', N'1100-watt mid-sized microwave oven with 1-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2083, N'Contoso Microwave 0.9CuFt E0090 Black', N'Total output 900 watts, 10 power levels, 6 one touch cooking menu', N'Home Appliances', N'Microwaves', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2084, N'Contoso Microwave 0.8CuFt E0080 Black', N'800-watt compact-size microwave oven with 4/5-cubic-foot capacity', N'Home Appliances', N'Microwaves', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2085, N'Contoso Water Heater 7.2GPM X1800 White', N'Delivers 7.2 gallons per minute, can save up to 50% off utility costs annually', N'Home Appliances', N'Water Heaters', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2086, N'Contoso Water Heater 4.3GPM M1250 White', N'Delivers up to 4.3 gallons per minute, endless hot water', N'Home Appliances', N'Water Heaters', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2087, N'Contoso Water Heater 4.0GPM M1250 White', N'Provides 4 gallons of hot water per minute, includes one water heater', N'Home Appliances', N'Water Heaters', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2088, N'Contoso Water Heater 2.6GPM E0900 White', N'Provides 2.6 gallons of hot water per minute, average energy-efficiency rating of 90 percent', N'Home Appliances', N'Water Heaters', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2089, N'Contoso Water Heater 1.5GPM E0800 White', N'Delivers 1.5 gallons per minute,99-percent efficient', N'Home Appliances', N'Water Heaters', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2090, N'Contoso Water Heater 7.2GPM X1800 Blue', N'Delivers 7.2 gallons per minute, can save up to 50% off utility costs annually', N'Home Appliances', N'Water Heaters', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2091, N'Contoso Water Heater 4.3GPM M1250 Blue', N'Delivers up to 4.3 gallons per minute, endless hot water', N'Home Appliances', N'Water Heaters', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2092, N'Contoso Water Heater 4.0GPM M1250 Blue', N'Provides 4 gallons of hot water per minute, includes one water heater', N'Home Appliances', N'Water Heaters', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2093, N'Contoso Water Heater 2.6GPM E0900 Blue', N'Provides 2.6 gallons of hot water per minute, average energy-efficiency rating of 90 percent', N'Home Appliances', N'Water Heaters', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2094, N'Contoso Water Heater 1.5GPM E0800 Blue', N'Delivers 1.5 gallons per minute,99-percent efficient', N'Home Appliances', N'Water Heaters', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2095, N'Contoso Water Heater 7.2GPM X1800 Green', N'Delivers 7.2 gallons per minute, Can save up to 50% off utility costs annually', N'Home Appliances', N'Water Heaters', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2096, N'Contoso Water Heater 4.3GPM M1250 Green', N'Delivers up to 4.3 gallons per minute, Endless hot water', N'Home Appliances', N'Water Heaters', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2097, N'Contoso Water Heater 4.0GPM M1250 Green', N'Provides 4 gallons of hot water per minute, Includes one water heater', N'Home Appliances', N'Water Heaters', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2098, N'Contoso Water Heater 2.6GPM E0900 Green', N'Provides 2.6 gallons of hot water per minute, average energy-efficiency rating of 90 percent', N'Home Appliances', N'Water Heaters', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2099, N'Contoso Water Heater 1.5GPM E0800 Green', N'Delivers 1.5 gallons per minute, 99-percent efficient', N'Home Appliances', N'Water Heaters', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2100, N'Contoso Water Heater 7.2GPM X1800 Silver', N'Delivers 7.2 gallons per minute, Can save up to 50% off utility costs annually', N'Home Appliances', N'Water Heaters', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2101, N'Contoso Water Heater 4.3GPM M1250 Silver', N'Delivers up to 4.3 gallons per minute. Endless hot water', N'Home Appliances', N'Water Heaters', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2102, N'Contoso Water Heater 4.0GPM M1250 Silver', N'Provides 4 gallons of hot water per minute, Includes one water heater', N'Home Appliances', N'Water Heaters', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2103, N'Contoso Water Heater 2.6GPM E0900 Silver', N'Provides 2.6 gallons of hot water per minute, average energy-efficiency rating of 90 percent', N'Home Appliances', N'Water Heaters', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2104, N'Contoso Water Heater 1.5GPM E0800 Silver', N'Delivers 1.5 gallons per minute, 99-percent efficient', N'Home Appliances', N'Water Heaters', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2105, N'Contoso Water Heater 7.2GPM X1800 Grey', N'Delivers 7.2 gallons per minute, can save up to 50% off utility costs annually', N'Home Appliances', N'Water Heaters', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2106, N'Contoso Water Heater 4.3GPM M1250 Grey', N'Delivers up to 4.3 gallons per minute, endless hot water', N'Home Appliances', N'Water Heaters', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2107, N'Contoso Water Heater 4.0GPM M1250 Grey', N'Provides 4 gallons of hot water per minute, includes one water heater', N'Home Appliances', N'Water Heaters', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2108, N'Contoso Water Heater 2.6GPM E0900 Grey', N'Provides 2.6 gallons of hot water per minute, average energy-efficiency rating of 90 percent', N'Home Appliances', N'Water Heaters', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2109, N'Contoso Water Heater 1.5GPM E0800 Grey', N'Delivers 1.5 gallons per minute, 99-percent efficient', N'Home Appliances', N'Water Heaters', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2110, N'Contoso Water Heater 7.2GPM X1800 Red', N'Delivers 7.2 gallons per minute, can save up to 50% off utility costs annually', N'Home Appliances', N'Water Heaters', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2111, N'Contoso Water Heater 4.3GPM M1250 Red', N'Delivers up to 4.3 gallons per minute, endless hot water', N'Home Appliances', N'Water Heaters', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2112, N'Contoso Water Heater 4.0GPM M1250 Red', N'Provides 4 gallons of hot water per minute, includes one water heater', N'Home Appliances', N'Water Heaters', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2113, N'Contoso Water Heater 2.6GPM E0900 Red', N'Provides 2.6 gallons of hot water per minute, average energy-efficiency rating of 90 percent', N'Home Appliances', N'Water Heaters', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2114, N'Contoso Water Heater 1.5GPM E0800 Red', N'Delivers 1.5 gallons per minute, 99-percent efficient', N'Home Appliances', N'Water Heaters', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2115, N'Contoso Water Heater 4.3GPM M1250 Yellow', N'Delivers up to 4.3 gallons per minute, endless hot water', N'Home Appliances', N'Water Heaters', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2116, N'Contoso Coffee Maker Super-Auto 12C X1250 Black', N'Combination 12 cup Super-Auto coffee maker, 1250-watt super-automatic espresso machine', N'Home Appliances', N'Coffee Machines', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2117, N'Contoso Coffee Maker Auto 10C M1000 Black', N'Combination 10 cup coffee maker & 15-bar pump espresso', N'Home Appliances', N'Coffee Machines', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2118, N'Contoso Coffee Maker 12C M1000 Black', N'Combination 12 cup coffee maker, 24-hour clock/timer for wake-up coffee', N'Home Appliances', N'Coffee Machines', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2119, N'Contoso Coffee Maker Auto 5C E0900 Black', N'Combination 5 cup auto coffee maker', N'Home Appliances', N'Coffee Machines', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2120, N'Contoso Coffee Maker 5C E0900 Black', N'5-Cup Capacity with glass carafe, digital soft touch pad and automatic shut off', N'Home Appliances', N'Coffee Machines', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2121, N'Contoso Coffee Maker 4C E0800 Black', N'4-cup-capacity steam-driven espresso/cappuccino machine', N'Home Appliances', N'Coffee Machines', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2122, N'Contoso Coffee Maker Super-Auto 12C X1250 Silver', N'Combination 12 cup super-auto coffee maker, 1250-watt super-automatic espresso machine', N'Home Appliances', N'Coffee Machines', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2123, N'Contoso Coffee Maker Auto 10C M1000 Silver', N'Combination 10 cup coffee maker & 15-bar pump espresso', N'Home Appliances', N'Coffee Machines', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2124, N'Contoso Coffee Maker 12C M1000 Silver', N'Combination 12 cup coffee maker, 24-hour clock/timer for wake-up coffee', N'Home Appliances', N'Coffee Machines', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2125, N'Contoso Coffee Maker Auto 5C E0900 Silver', N'Combination 5 cup auto coffee maker', N'Home Appliances', N'Coffee Machines', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2126, N'Contoso Coffee Maker 5C E0900 Silver', N'5-Cup Capacity with glass carafe, digital soft touch pad and automatic shut off', N'Home Appliances', N'Coffee Machines', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2127, N'Contoso Coffee Maker 4C E0800 Silver', N'4-cup-capacity steam-driven espresso/cappuccino machine', N'Home Appliances', N'Coffee Machines', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2128, N'Contoso Coffee Maker Super-Auto 12C X1250 White', N'Combination 12 cup Super-Auto coffee maker, 1250-watt super-automatic espresso machine', N'Home Appliances', N'Coffee Machines', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2129, N'Contoso Coffee Maker Auto 10C M1000 White', N'Combination 10 cup coffee maker & 15-bar pump espresso', N'Home Appliances', N'Coffee Machines', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2130, N'Contoso Coffee Maker 12C M1000 White', N'Combination 12 cup coffee maker, 24-hour clock/timer for wake-up coffee', N'Home Appliances', N'Coffee Machines', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2131, N'Contoso Coffee Maker Auto 5C E0900 White', N'Combination 5 cup auto coffee maker', N'Home Appliances', N'Coffee Machines', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2132, N'Contoso Coffee Maker 5C E0900 White', N'5-Cup Capacity with glass carafe, digital soft touch pad and automatic shut off', N'Home Appliances', N'Coffee Machines', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2133, N'Contoso Coffee Maker 4C E0800 White', N'4-cup-capacity steam-driven espresso/cappuccino machine', N'Home Appliances', N'Coffee Machines', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2134, N'Contoso Coffee Maker Super-Auto 12C X1250 Grey', N'Combination 12 cup Super-Auto coffee maker, 1250-watt super-automatic espresso machine', N'Home Appliances', N'Coffee Machines', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2135, N'Contoso Coffee Maker Auto 10C M1000 Grey', N'Combination 10 cup coffee maker & 15-bar pump espresso', N'Home Appliances', N'Coffee Machines', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2136, N'Contoso Coffee Maker 12C M1000 Grey', N'Combination 12 cup coffee maker, 24-hour clock/timer for wake-up coffee', N'Home Appliances', N'Coffee Machines', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2137, N'Contoso Coffee Maker Auto 5C E0900 Grey', N'Combination 5 cup auto coffee maker', N'Home Appliances', N'Coffee Machines', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2138, N'Contoso Coffee Maker 5C E0900 Grey', N'5-Cup capacity with glass carafe, digital soft touch pad and automatic shut off', N'Home Appliances', N'Coffee Machines', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2139, N'Contoso Coffee Maker 4C E0800 Grey', N'4-cup-capacity steam-driven espresso/cappuccino machine', N'Home Appliances', N'Coffee Machines', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2140, N'Adventure Works Coffee Maker Super-Auto 12C X125 Black', N'Combination 12 cup Super-Auto coffee maker, 1250-watt super-automatic espresso machine', N'Home Appliances', N'Coffee Machines', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2141, N'Adventure Works Coffee Maker Auto 10C M100 Black', N'Combination 10 cup coffee maker & 15-bar Pump Espresso', N'Home Appliances', N'Coffee Machines', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2142, N'Adventure Works Coffee Maker 12C M100 Black', N'Combination 12 cup coffee maker, 24-hour clock/timer for wake-up coffee', N'Home Appliances', N'Coffee Machines', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2143, N'Adventure Works Coffee Maker Auto 5C E090 Black', N'Combination 5 cup auto coffee maker', N'Home Appliances', N'Coffee Machines', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2144, N'Adventure Works Coffee Maker 5C E090 Black', N'5-Cup capacity with glass carafe, digital soft touch pad and automatic shut off', N'Home Appliances', N'Coffee Machines', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2145, N'Adventure Works Coffee Maker 4C E080 Black', N'4-cup-capacity steam-driven espresso/cappuccino machine', N'Home Appliances', N'Coffee Machines', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2146, N'Adventure Works Coffee Maker Super-Auto 12C X125 Silver', N'Combination 12 cup Super-Auto coffee maker, 1250-watt super-automatic espresso machine', N'Home Appliances', N'Coffee Machines', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2147, N'Adventure Works Coffee Maker Auto 10C M100 Silver', N'Combination 10 cup coffee maker & 15-bar pump espresso', N'Home Appliances', N'Coffee Machines', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2148, N'Adventure Works Coffee Maker 12C M100 Silver', N'Combination 12 cup coffee maker,24-hour clock/timer for wake-up coffee', N'Home Appliances', N'Coffee Machines', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2149, N'Adventure Works Coffee Maker Auto 5C E090 Silver', N'Combination 5 cup auto coffee maker', N'Home Appliances', N'Coffee Machines', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2150, N'Adventure Works Coffee Maker 5C E090 Silver', N'5-Cup Capacity with glass carafe, digital soft touch pad and automatic shut off', N'Home Appliances', N'Coffee Machines', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2151, N'Adventure Works Coffee Maker 4C E080 Silver', N'4-cup-capacity steam-driven espresso/cappuccino machine', N'Home Appliances', N'Coffee Machines', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2152, N'Adventure Works Coffee Maker Super-Auto 12C X125 White', N'Combination 12 cup Super-Auto coffee maker, 1250-watt super-automatic espresso machine', N'Home Appliances', N'Coffee Machines', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2153, N'Adventure Works Coffee Maker Auto 10C M100 White', N'Combination 10 cup coffee maker & 15-bar pump espresso', N'Home Appliances', N'Coffee Machines', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2154, N'Adventure Works Coffee Maker 12C M100 White', N'Combination 12 cup coffee maker, 24-hour clock/timer for wake-up coffee', N'Home Appliances', N'Coffee Machines', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2155, N'Adventure Works Coffee Maker Auto 5C E090 White', N'Combination 5 cup auto coffee maker', N'Home Appliances', N'Coffee Machines', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2156, N'Adventure Works Coffee Maker 5C E090 White', N'5-Cup capacity with glass carafe, digital soft touch pad and automatic shut off', N'Home Appliances', N'Coffee Machines', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2157, N'Adventure Works Coffee Maker 4C E080 White', N'4-cup-capacity steam-driven espresso/cappuccino machine', N'Home Appliances', N'Coffee Machines', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2158, N'Adventure Works Coffee Maker Super-Auto 12C X125 Grey', N'Combination 12 cup Super-Auto coffee maker, 1250-watt super-automatic espresso machine', N'Home Appliances', N'Coffee Machines', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2159, N'Adventure Works Coffee Maker Auto 10C M100 Grey', N'Combination 10 cup coffee maker & 15-bar pump espresso', N'Home Appliances', N'Coffee Machines', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2160, N'Adventure Works Coffee Maker 12C M100 Grey', N'Combination 12 cup coffee maker, 24-hour clock/timer for wake-up coffee', N'Home Appliances', N'Coffee Machines', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2161, N'Adventure Works Coffee Maker Auto 5C E090 Grey', N'Combination 5 cup auto coffee maker', N'Home Appliances', N'Coffee Machines', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2162, N'Adventure Works Coffee Maker 5C E090 Grey', N'5-Cup capacity with glass carafe, digital soft touch pad and automatic shut off', N'Home Appliances', N'Coffee Machines', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2163, N'Adventure Works Coffee Maker 4C E080 Grey', N'4-cup-capacity steam-driven espresso/cappuccino machine', N'Home Appliances', N'Coffee Machines', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2164, N'Fabrikam Coffee Maker Super-Auto 12C X125 Black', N'Combination 12 cup Super-Auto coffee maker, 1250-watt super-automatic espresso machine', N'Home Appliances', N'Coffee Machines', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2165, N'Fabrikam Coffee Maker Auto 10C M100 Black', N'Combination 10 cup coffee maker & 15-bar pump espresso', N'Home Appliances', N'Coffee Machines', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2166, N'Fabrikam Coffee Maker 12C M100 Black', N'Combination 12 cup coffee maker, 24-hour clock/timer for wake-up coffee', N'Home Appliances', N'Coffee Machines', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2167, N'Fabrikam Coffee Maker Auto 5C E090 Black', N'Combination 5 cup auto coffee maker', N'Home Appliances', N'Coffee Machines', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2168, N'Fabrikam Coffee Maker 5C E090 Black', N'5-Cup Capacity with glass carafe, digital soft touch pad and automatic shut off', N'Home Appliances', N'Coffee Machines', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2169, N'Fabrikam Coffee Maker 4C E080 Black', N'4-cup-capacity steam-driven espresso/cappuccino machine', N'Home Appliances', N'Coffee Machines', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2170, N'Fabrikam Coffee Maker Super-Auto 12C X125 Silver', N'Combination 12 cup Super-Auto coffee maker, 1250-watt super-automatic espresso machine', N'Home Appliances', N'Coffee Machines', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2171, N'Fabrikam Coffee Maker Auto 10C M100 Silver', N'Combination 10 cup coffee maker & 15-bar pump espresso', N'Home Appliances', N'Coffee Machines', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2172, N'Fabrikam Coffee Maker 12C M100 Silver', N'Combination 12 cup coffee maker,24-hour clock/timer for wake-up coffee', N'Home Appliances', N'Coffee Machines', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2173, N'Fabrikam Coffee Maker Auto 5C E090 Silver', N'Combination 5 cup auto coffee maker', N'Home Appliances', N'Coffee Machines', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2174, N'Fabrikam Coffee Maker 5C E090 Silver', N'5-Cup Capacity with glass carafe, digital soft touch pad and automatic shut off', N'Home Appliances', N'Coffee Machines', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2175, N'Fabrikam Coffee Maker 4C E080 Silver', N'4-cup-capacity steam-driven espresso/cappuccino machine', N'Home Appliances', N'Coffee Machines', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2176, N'Fabrikam Coffee Maker Super-Auto 12C X125 White', N'Combination 12 cup Super-Auto coffee maker, 1250-watt super-automatic espresso machine', N'Home Appliances', N'Coffee Machines', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2177, N'Fabrikam Coffee Maker Auto 10C M100 White', N'Combination 10 cup coffee maker & 15-bar pump espresso', N'Home Appliances', N'Coffee Machines', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2178, N'Fabrikam Coffee Maker 12C M100 White', N'Combination 12 cup coffee maker, 24-hour clock/timer for wake-up coffee', N'Home Appliances', N'Coffee Machines', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2179, N'Fabrikam Coffee Maker Auto 5C E090 White', N'Combination 5 cup auto coffee maker', N'Home Appliances', N'Coffee Machines', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2180, N'Fabrikam Coffee Maker 5C E090 White', N'5-Cup Capacity with glass carafe, digital soft touch pad and automatic shut off', N'Home Appliances', N'Coffee Machines', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2181, N'Fabrikam Coffee Maker 4C E080 White', N'4-cup-capacity steam-driven espresso/cappuccino machine', N'Home Appliances', N'Coffee Machines', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2182, N'Fabrikam Coffee Maker Super-Auto 12C X125 Grey', N'Combination 12 cup Super-Auto coffee maker, 1250-watt super-automatic espresso machine', N'Home Appliances', N'Coffee Machines', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2183, N'Fabrikam Coffee Maker Auto 10C M100 Grey', N'Combination 10 cup coffee maker & 15-bar pump espresso', N'Home Appliances', N'Coffee Machines', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2184, N'Fabrikam Coffee Maker 12C M100 Grey', N'Combination 12 cup coffee maker, 24-hour clock/timer for wake-up coffee', N'Home Appliances', N'Coffee Machines', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2185, N'Fabrikam Coffee Maker Auto 5C E090 Grey', N'Combination 5 cup auto coffee maker', N'Home Appliances', N'Coffee Machines', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2186, N'Fabrikam Coffee Maker 5C E090 Grey', N'5-Cup Capacity with glass carafe, digital soft touch pad and automatic shut off', N'Home Appliances', N'Coffee Machines', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2187, N'Fabrikam Coffee Maker 4C E080 Grey', N'4-cup-capacity steam-driven espresso/cappuccino machine', N'Home Appliances', N'Coffee Machines', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2188, N'Fabrikam Coffee Maker 12C M100 ld', N'Combination 12 cup coffee maker, 24-hour clock/timer for wake-up coffee', N'Home Appliances', N'Coffee Machines', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2189, N'Fabrikam Coffee Maker Auto 5C E090 ld', N'Combination 5 cup auto coffee maker', N'Home Appliances', N'Coffee Machines', N'Fabrikam, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2190, N'Adventure Works Floor Lamp X1150 Black', N'Collapsible rectangular natural silk shade, walnut box frame, 1 x 150 Watt', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2191, N'Adventure Works Floor Lamp M2150 Black', N'Home design barrel series floor lamp in sea blue, wrought iron frame', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2192, N'Adventure Works Chandelier M8150 Black', N'One-Light mini duo mount chandelier, British bronze with prismatic glass crystals', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2193, N'Adventure Works Chandelier M6150 Black', N'Globe marina Five-Light chandelier, antique bronze with opal globes', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2194, N'Adventure Works Wall Lamp E2150 Black', N'Brushed nickel two light wall sconce, mount up or down', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2195, N'Adventure Works Wall Lamp E3150 Black', N'Paradise east three-light wall bracket in burnished rattan', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2196, N'Adventure Works Desk Lamp E1300 Black', N'2-Way brightness control lets you adjust powerful light to suit your personal preferences', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2197, N'Adventure Works Desk Lamp E1200 Black', N'Measures 23-1/2 inches in height, Rocker on/off switch, sleek brushed steel finish,', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2198, N'Adventure Works Floor Lamp X1150 White', N'Collapsible rectangular natural silk shade, walnut box frame, 1 x 150 Watt', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2199, N'Adventure Works Floor Lamp M2150 White', N'Home design barrel series floor lamp in sea blue, wrought iron frame', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2200, N'Adventure Works Chandelier M8150 White', N'One-Light mini duo mount chandelier, British bronze with prismatic glass crystals', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2201, N'Adventure Works Chandelier M6150 White', N'Globe marina Five-Light chandelier, antique bronze with opal globes', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2202, N'Adventure Works Wall Lamp E2150 White', N'Brushed nickel two light wall sconce, mount up or down', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2203, N'Adventure Works Wall Lamp E3150 White', N'Paradise east three-light wall bracket in burnished rattan', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2204, N'Adventure Works Desk Lamp E1300 White', N'2-Way brightness control lets you adjust powerful light to suit your personal preferences', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2205, N'Adventure Works Desk Lamp E1200 White', N'Measures 23-1/2 inches in height, rocker on/off switch, sleek brushed steel finish', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2206, N'Adventure Works Floor Lamp X1150 Silver', N'Collapsible rectangular natural silk shade, walnut box frame, 1 x 150 Watt', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2207, N'Adventure Works Floor Lamp M2150 Silver', N'Home design barrel series floor Lamp in sea blue, wrought iron frame', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2208, N'Adventure Works Chandelier M8150 Silver', N'One-Light mini duo mount chandelier, British bronze with prismatic glass crystals', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2209, N'Adventure Works Chandelier M6150 Silver', N'Globe marina Five-Light chandelier, antique bronze with opal globes', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2210, N'Adventure Works Wall Lamp E2150 Silver', N'Brushed nickel two light wall sconce, mount up or down', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2211, N'Adventure Works Wall Lamp E3150 Silver', N'Paradise east Three-Light wall bracket in burnished rattan', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2212, N'Adventure Works Desk Lamp E1300 Silver', N'2-Way brightness control lets you adjust powerful light to suit your personal preferences', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2213, N'Adventure Works Desk Lamp E1200 Silver', N'Measures 23-1/2 inches in height, rocker on/off switch, sleek brushed steel finish', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2214, N'Adventure Works Floor Lamp X1150 Grey', N'Collapsible rectangular natural silk shade, walnut box frame, 1 x 150 Watt', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2215, N'Adventure Works Floor Lamp M2150 Grey', N'Home design barrel series floor lamp in sea blue, wrought iron frame', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2216, N'Adventure Works Chandelier M8150 Grey', N'One-Light mini Duo mount chandelier, British bronze with prismatic glass crystals', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2217, N'Adventure Works Chandelier M6150 Grey', N'Globe marina Five-Light chandelier, antique bronze with opal globes', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2218, N'Adventure Works Wall Lamp E2150 Grey', N'Brushed nickel two light wall sconce, mount up or down', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2219, N'Adventure Works Wall Lamp E3150 Grey', N'Paradise east Three-Light wall bracket in burnished rattan', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2220, N'Adventure Works Desk Lamp E1300 Grey', N'2-Way brightness control lets you adjust powerful light to suit your personal preferences', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2221, N'Adventure Works Desk Lamp E1200 Grey', N'Measures 23-1/2 inches in height, rocker on/off switch, sleek brushed steel finish', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2222, N'Adventure Works Floor Lamp X1150 Blue', N'Collapsible rectangular natural silk shade, walnut box frame, 1 x 150 Watt', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2223, N'Adventure Works Floor Lamp M2150 Blue', N'Home design barrel series floor lamp in sea blue, wrought iron frame', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2224, N'Adventure Works Chandelier M8150 Blue', N'One-Light mini Duo mount chandelier, British bronze with prismatic glass crystals', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2225, N'Adventure Works Chandelier M6150 Blue', N'Globe marina Five-Light chandelier, antique bronze with opal globes', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2226, N'Adventure Works Wall Lamp E2150 Blue', N'Brushed nickel two light wall sconce, mount up or down', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2227, N'Adventure Works Wall Lamp E3150 Blue', N'Paradise east Three-Light wall bracket in burnished rattan', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2228, N'Adventure Works Desk Lamp E1300 Blue', N'2-Way brightness control lets you adjust powerful light to suit your personal preferences', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2229, N'Adventure Works Desk Lamp E1200 Blue', N'Measures 23-1/2 inches in height, rocker on/off switch, sleek brushed steel finish', N'Home Appliances', N'Lamps', N'Adventure Works')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2230, N'WWI Floor Lamp X115 Black', N'Collapsible rectangular natural silk shade, walnut box frame, 1 x 150 Watt', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2231, N'WWI Floor Lamp M215 Black', N'Home design barrel series floor lamp in sea blue, wrought iron frame', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2232, N'WWI Chandelier M815 Black', N'One-Light mini Duo mount chandelier, British bronze with prismatic glass crystals', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2233, N'WWI Chandelier M615 Black', N'Globe marina Five-Light chandelier, antique bronze with opal globes', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2234, N'WWI Wall Lamp E215 Black', N'Brushed nickel two light wall sconce, mount up or down', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2235, N'WWI Wall Lamp E315 Black', N'Paradise east Three-Light wall bracket in burnished rattan', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2236, N'WWI Desk Lamp E130 Black', N'2-Way brightness control lets you adjust powerful light to suit your personal preferences', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2237, N'WWI Desk Lamp E120 Black', N'Measures 23-1/2 inches in height, rocker on/off switch, sleek brushed steel finish', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2238, N'WWI Floor Lamp X115 White', N'Collapsible rectangular natural silk shade, walnut box frame, 1 x 150 Watt', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2239, N'WWI Floor Lamp M215 White', N'Home design barrel series floor lamp in sea blue, wrought iron frame', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2240, N'WWI Chandelier M815 White', N'One-Light mini Duo mount chandelier, British bronze with prismatic glass crystals', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2241, N'WWI Chandelier M615 White', N'Globe marina Five-Light chandelier, antique bronze with opal globes', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2242, N'WWI Wall Lamp E215 White', N'Brushed nickel two light wall sconce, mount up or down', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2243, N'WWI Wall Lamp E315 White', N'Paradise east Three-Light wall bracket in burnished rattan', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2244, N'WWI Desk Lamp E130 White', N'2-Way brightness control lets you adjust powerful light to suit your personal preferences', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2245, N'WWI Desk Lamp E120 White', N'Measures 23-1/2 inches in height, rocker on/off switch, sleek brushed steel finish', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2246, N'WWI Floor Lamp X115 Silver', N'Collapsible rectangular natural silk shade, walnut box frame, 1 x 150 Watt', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2247, N'WWI Floor Lamp M215 Silver', N'Home design barrel series floor lamp in sea blue, wrought iron frame', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2248, N'WWI Chandelier M815 Silver', N'One-Light mini Duo mount chandelier, British bronze with prismatic glass crystals', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2249, N'WWI Chandelier M615 Silver', N'Globe marina Five-Light chandelier, antique bronze with opal globes', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2250, N'WWI Wall Lamp E215 Silver', N'Brushed nickel two light wall sconce, mount up or down', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2251, N'WWI Wall Lamp E315 Silver', N'Paradise east Three-Light wall bracket in burnished rattan', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2252, N'WWI Desk Lamp E130 Silver', N'2-Way brightness control lets you adjust powerful light to suit your personal preferences', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2253, N'WWI Desk Lamp E120 Silver', N'Measures 23-1/2 inches in height, rocker on/off switch, sleek brushed steel finish', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2254, N'WWI Floor Lamp X115 Grey', N'Collapsible rectangular natural silk shade, walnut box frame, 1 x 150 Watt', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2255, N'WWI Floor Lamp M215 Grey', N'Home design barrel series floor lamp in sea blue, wrought iron frame', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2256, N'WWI Chandelier M815 Grey', N'One-Light mini Duo mount chandelier, British bronze with prismatic glass crystals', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2257, N'WWI Chandelier M615 Grey', N'Globe marina Five-Light chandelier, antique bronze with opal globes', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2258, N'WWI Wall Lamp E215 Grey', N'Brushed nickel two light wall sconce, mount up or down', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2259, N'WWI Wall Lamp E315 Grey', N'Paradise east Three-Light wall bracket in burnished rattan', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2260, N'WWI Desk Lamp E130 Grey', N'2-Way brightness control lets you adjust powerful light to suit your personal preferences', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2261, N'WWI Desk Lamp E120 Grey', N'Measures 23-1/2 inches in height, rocker on/off switch, sleek brushed steel finish', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2262, N'WWI Floor Lamp X115 Blue', N'Collapsible rectangular natural silk shade, walnut box frame, 1 x 150 Watt', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2263, N'WWI Floor Lamp M215 Blue', N'Home design barrel series floor lamp in sea blue, wrought iron frame', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2264, N'WWI Chandelier M815 Blue', N'One-Light mini Duo mount chandelier, British bronze with prismatic glass crystals', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2265, N'WWI Chandelier M615 Blue', N'Globe marina Five-Light chandelier, antique bronze with opal globes', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2266, N'WWI Wall Lamp E215 Blue', N'Brushed nickel two light wall sconce, mount up or down', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2267, N'WWI Wall Lamp E315 Blue', N'Paradise east Three-Light wall bracket in burnished rattan', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2268, N'WWI Desk Lamp E130 Blue', N'2-Way brightness control lets you adjust powerful light to suit your personal preferences', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2269, N'WWI Desk Lamp E120 Blue', N'Measures 23-1/2 inches in height, rocker on/off switch, sleek brushed steel finish', N'Home Appliances', N'Lamps', N'Wide World Importers')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2270, N'Proseware Floor Lamp X0115 Black', N'Collapsible rectangular natural silk shade, walnut box frame, 1 x 150 Watt', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2271, N'Proseware Floor Lamp M0215 Black', N'Home design barrel series floor lamp in sea blue, wrought iron frame', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2272, N'Proseware Chandelier M0815 Black', N'One-Light mini Duo mount chandelier, British bronze with prismatic glass crystals', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2273, N'Proseware Chandelier M0615 Black', N'Globe marina Five-Light chandelier, antique bronze with opal globes', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2274, N'Proseware Wall Lamp E0215 Black', N'Brushed nickel two light wall sconce, mount up or down', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2275, N'Proseware Wall Lamp E0315 Black', N'Paradise east Three-Light wall bracket in burnished rattan', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2276, N'Proseware Desk Lamp E0130 Black', N'2-Way brightness control lets you adjust powerful light to suit your personal preferences', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2277, N'Proseware Desk Lamp E0120 Black', N'Measures 23-1/2 inches in height, rocker on/off switch, sleek brushed steel finish', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2278, N'Proseware Floor Lamp X0115 White', N'Collapsible rectangular natural silk shade, walnut box frame, 1 x 150 Watt', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2279, N'Proseware Floor Lamp M0215 White', N'Home design barrel series floor lamp in sea blue, wrought iron frame', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2280, N'Proseware Chandelier M0815 White', N'One-Light mini Duo mount chandelier, British bronze with prismatic glass crystals', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2281, N'Proseware Chandelier M0615 White', N'Globe marina Five-Light chandelier, antique bronze with opal globes', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2282, N'Proseware Wall Lamp E0215 White', N'Brushed nickel two light wall sconce, mount up or down', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2283, N'Proseware Wall Lamp E0315 White', N'Paradise east Three-Light wall bracket in burnished rattan', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2284, N'Proseware Desk Lamp E0130 White', N'2-Way brightness control lets you adjust powerful light to suit your personal preferences', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2285, N'Proseware Desk Lamp E0120 White', N'Measures 23-1/2 inches in height, rocker on/off switch, sleek brushed steel finish', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2286, N'Proseware Floor Lamp X0115 Silver', N'Collapsible rectangular natural silk shade, walnut box frame, 1 x 150 Watt', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2287, N'Proseware Floor Lamp M0215 Silver', N'Home design barrel series floor lamp in sea blue, wrought iron frame', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2288, N'Proseware Chandelier M0815 Silver', N'One-Light mini Duo mount chandelier, British bronze with prismatic glass crystals', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2289, N'Proseware Chandelier M0615 Silver', N'Globe marina Five-Light chandelier, antique bronze with opal globes', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2290, N'Proseware Wall Lamp E0215 Silver', N'Brushed nickel two light wall sconce, mount up or down', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2291, N'Proseware Wall Lamp E0315 Silver', N'Paradise east Three-Light wall bracket in burnished rattan', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2292, N'Proseware Desk Lamp E0130 Silver', N'2-Way brightness control lets you adjust powerful light to suit your personal preferences', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2293, N'Proseware Desk Lamp E0120 Silver', N'Measures 23-1/2 inches in height, rocker on/off switch, sleek brushed steel finish', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2294, N'Proseware Floor Lamp X0115 Grey', N'Collapsible rectangular natural silk shade, walnut box frame, 1 x 150 Watt', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2295, N'Proseware Floor Lamp M0215 Grey', N'Home design barrel series floor lamp in sea blue, wrought iron frame', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2296, N'Proseware Chandelier M0815 Grey', N'One-Light mini Duo mount chandelier, British bronze with prismatic glass crystals', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2297, N'Proseware Chandelier M0615 Grey', N'Globe marina Five-Light chandelier, antique bronze with opal globes', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2298, N'Proseware Wall Lamp E0215 Grey', N'Brushed nickel two light wall sconce, mount up or down', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2299, N'Proseware Wall Lamp E0315 Grey', N'Paradise east Three-Light wall bracket in burnished rattan', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2300, N'Proseware Desk Lamp E0130 Grey', N'2-Way brightness control lets you adjust powerful light to suit your personal preferences', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2301, N'Proseware Desk Lamp E0120 Grey', N'Measures 23-1/2 inches in height, rocker on/off switch, sleek brushed steel finish', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2302, N'Proseware Floor Lamp X0115 Blue', N'Collapsible rectangular natural silk shade, walnut box frame, 1 x 150 Watt', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2303, N'Proseware Floor Lamp M0215 Blue', N'Home design barrel series floor lamp in sea blue, wrought iron frame', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2304, N'Proseware Chandelier M0815 Blue', N'One-Light mini Duo mount chandelier, British bronze with prismatic glass crystals', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2305, N'Proseware Chandelier M0615 Blue', N'Globe marina Five-Light chandelier, antique bronze with opal globes', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2306, N'Proseware Wall Lamp E0215 Blue', N'Brushed nickel two light wall sconce, mount up or down', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2307, N'Proseware Wall Lamp E0315 Blue', N'Paradise east Three-Light wall bracket in burnished rattan', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2308, N'Proseware Desk Lamp E0130 Blue', N'2-Way brightness control lets you adjust powerful light to suit your personal preferences', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2309, N'Proseware Desk Lamp E0120 Blue', N'Measures 23-1/2 inches in height, rocker on/off switch, sleek brushed steel finish', N'Home Appliances', N'Lamps', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2310, N'Litware Floor Lamp X1015 Black', N'Collapsible rectangular natural silk shade, walnut box frame, 1 x 150 Watt', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2311, N'Litware Floor Lamp M2015 Black', N'Home design barrel series floor lamp in sea blue, wrought iron frame', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2312, N'Litware Chandelier M8015 Black', N'One-Light mini Duo mount chandelier, British bronze with prismatic glass crystals', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2313, N'Litware Chandelier M6015 Black', N'Globe marina Five-Light chandelier, antique bronze with opal globes', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2314, N'Litware Wall Lamp E2015 Black', N'Brushed nickel two light wall sconce, mount up or down', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2315, N'Litware Wall Lamp E3015 Black', N'Paradise east Three-Light wall bracket in burnished rattan', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2316, N'Litware Desk Lamp E1030 Black', N'2-Way brightness control lets you adjust powerful light to suit your personal preferences', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2317, N'Litware Desk Lamp E1020 Black', N'Measures 23-1/2 inches in height, rocker on/off switch, sleek brushed steel finish', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2318, N'Litware Floor Lamp X1015 White', N'Collapsible rectangular natural silk shade, walnut box frame, 1 x 150 Watt', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2319, N'Litware Floor Lamp M2015 White', N'Home design barrel series floor lamp in sea blue, wrought iron frame', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2320, N'Litware Chandelier M8015 White', N'One-Light mini Duo mount chandelier, British bronze with prismatic glass crystals', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2321, N'Litware Chandelier M6015 White', N'Globe marina Five-Light chandelier, antique bronze with opal globes', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2322, N'Litware Wall Lamp E2015 White', N'Brushed nickel two light wall sconce, mount up or down', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2323, N'Litware Wall Lamp E3015 White', N'Paradise east Three-Light wall bracket in burnished rattan', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2324, N'Litware Desk Lamp E1030 White', N'2-Way brightness control lets you adjust powerful light to suit your personal preferences', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2325, N'Litware Desk Lamp E1020 White', N'Measures 23-1/2 inches in height, rocker on/off switch, sleek brushed steel finish', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2326, N'Litware Floor Lamp X1015 Silver', N'Collapsible rectangular natural silk shade, walnut box frame, 1 x 150 Watt', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2327, N'Litware Floor Lamp M2015 Silver', N'Home design barrel series floor lamp in sea blue, wrought iron frame', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2328, N'Litware Chandelier M8015 Silver', N'One-Light mini Duo mount chandelier, British bronze with prismatic glass crystals', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2329, N'Litware Chandelier M6015 Silver', N'Globe marina Five-Light chandelier, antique bronze with opal globes', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2330, N'Litware Wall Lamp E2015 Silver', N'Brushed nickel two light wall sconce, mount up or down', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2331, N'Litware Wall Lamp E3015 Silver', N'Paradise east Three-Light wall bracket in burnished rattan', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2332, N'Litware Desk Lamp E1030 Silver', N'2-Way brightness control lets you adjust powerful light to suit your personal preferences', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2333, N'Litware Desk Lamp E1020 Silver', N'Measures 23-1/2 inches in height, rocker on/off switch, sleek brushed steel finish', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2334, N'Litware Floor Lamp X1015 Grey', N'Collapsible rectangular natural silk shade, walnut box frame, 1 x 150 Watt', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2335, N'Litware Floor Lamp M2015 Grey', N'Home design barrel series floor lamp in sea blue, wrought iron frame', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2336, N'Litware Chandelier M8015 Grey', N'One-Light mini Duo mount chandelier, British bronze with prismatic glass crystals', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2337, N'Litware Chandelier M6015 Grey', N'Globe marina Five-Light chandelier, antique bronze with opal globes', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2338, N'Litware Wall Lamp E2015 Grey', N'Brushed nickel two light wall sconce, mount up or down', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2339, N'Litware Wall Lamp E3015 Grey', N'Paradise east Three-Light wall bracket in burnished rattan', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2340, N'Litware Desk Lamp E1030 Grey', N'2-Way Brightness Control lets you adjust powerful light to suit your personal preferences', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2341, N'Litware Desk Lamp E1020 Grey', N'Measures 23-1/2 inches in height, rocker on/off switch, sleek brushed steel finish', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2342, N'Litware Floor Lamp X1015 Blue', N'Collapsible rectangular natural silk shade, walnut box frame, 1 x 150 Watt', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2343, N'Litware Floor Lamp M2015 Blue', N'Home design barrel series floor lamp in sea blue, wrought iron frame', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2344, N'Litware Chandelier M8015 Blue', N'One-Light Mini Duo Mount Chandelier, British Bronze with Prismatic Glass Crystals', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2345, N'Litware Chandelier M6015 Blue', N'Globe marina Five-Light chandelier, antique bronze with opal globes', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2346, N'Litware Wall Lamp E2015 Blue', N'Brushed nickel two light wall sconce, mount up or down', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2347, N'Litware Wall Lamp E3015 Blue', N'Paradise east Three-Light wall bracket in burnished rattan', N'Home Appliances', N'Lamps', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2348, N'Contoso Air conditioner 25000BTU L1672 White', N'25,000-BTU air conditioner for large rooms up to 1672 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2349, N'Contoso Air conditioner 12000BTU M0640 White', N'12,000-BTU air conditioner for rooms up to 640 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2350, N'Contoso Air conditioner 10000BTU M0490 White', N'10,000-BTU air conditioner for rooms up to 490 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2351, N'Contoso Air conditioner 8000BTU M0320 White', N'8,000-BTU air conditioner for rooms up to 320 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2352, N'Contoso Air conditioner 7000BTU E0260 White', N'7,000-BTU air conditioner for rooms up to 260 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2353, N'Contoso Air conditioner 6000BTU E0180 White', N'6,000-BTU air conditioner for rooms up to 180 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2354, N'Contoso Air conditioner 5200BTU E0100 White', N'5,200-BTU air conditioner for rooms up to 100 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2355, N'Contoso Air conditioner 25000BTU L1672 Red', N'25,000-BTU air conditioner for large rooms up to 1672 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2356, N'Contoso Air conditioner 12000BTU M0640 Red', N'12,000-BTU air conditioner for rooms up to 640 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2357, N'Contoso Air conditioner 10000BTU M0490 Red', N'10,000-BTU air conditioner for rooms up to 490 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2358, N'Contoso Air conditioner 8000BTU M0320 Red', N'8,000-BTU air conditioner for rooms up to 320 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2359, N'Contoso Air conditioner 7000BTU E0260 Red', N'7,000-BTU air conditioner for rooms up to 260 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2360, N'Contoso Air conditioner 6000BTU E0180 Red', N'6,000-BTU air conditioner for rooms up to 180 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2361, N'Contoso Air conditioner 5200BTU E0100 Red', N'5,200-BTU air conditioner for rooms up to 100 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2362, N'Contoso Air conditioner 25000BTU L1672 Silver', N'25,000-BTU air conditioner for large rooms up to 1672 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2363, N'Contoso Air conditioner 12000BTU M0640 Silver', N'12,000-BTU air conditioner for rooms up to 640 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2364, N'Contoso Air conditioner 10000BTU M0490 Silver', N'10,000-BTU air conditioner for rooms up to 490 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2365, N'Contoso Air conditioner 8000BTU M0320 Silver', N'8,000-BTU air conditioner for rooms up to 320 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2366, N'Contoso Air conditioner 7000BTU E0260 Silver', N'7,000-BTU air conditioner for rooms up to 260 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2367, N'Contoso Air conditioner 6000BTU E0180 Silver', N'6,000-BTU air conditioner for rooms up to 180 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2368, N'Contoso Air conditioner 5200BTU E0100 Silver', N'5,200-BTU air conditioner for rooms up to 100 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2369, N'Contoso Air conditioner 25000BTU L1672 Grey', N'25,000-BTU air conditioner for large rooms up to 1672 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2370, N'Contoso Air conditioner 12000BTU M0640 Grey', N'12,000-BTU air conditioner for rooms up to 640 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2371, N'Contoso Air conditioner 10000BTU M0490 Grey', N'10,000-BTU air conditioner for rooms up to 490 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2372, N'Contoso Air conditioner 8000BTU M0320 Grey', N'8,000-BTU air conditioner for rooms up to 320 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2373, N'Contoso Air conditioner 7000BTU E0260 Grey', N'7,000-BTU air conditioner for rooms up to 260 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2374, N'Contoso Air conditioner 6000BTU E0180 Grey', N'6,000-BTU air conditioner for rooms up to 180 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2375, N'Contoso Air conditioner 5200BTU E0100 Grey', N'5,200-BTU air conditioner for rooms up to 100 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2376, N'Contoso Air conditioner 25000BTU L1672 Blue', N'25,000-BTU air conditioner for large rooms up to 1672 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2377, N'Contoso Air conditioner 12000BTU M0640 Blue', N'12,000-BTU air conditioner for rooms up to 640 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2378, N'Contoso Air conditioner 10000BTU M0490 Blue', N'10,000-BTU air conditioner for rooms up to 490 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2379, N'Contoso Air conditioner 8000BTU M0320 Blue', N'8,000-BTU air conditioner for rooms up to 320 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2380, N'Contoso Air conditioner 7000BTU E0260 Blue', N'7,000-BTU air conditioner for rooms up to 260 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2381, N'Contoso Air conditioner 6000BTU E0180 Blue', N'6,000-BTU air conditioner for rooms up to 180 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2382, N'Contoso Air conditioner 5200BTU E0100 Blue', N'5,200-BTU air conditioner for rooms up to 100 square feet', N'Home Appliances', N'Air Conditioners', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2383, N'Proseware Air conditioner 25000BTU L167 White', N'25,000-BTU air conditioner for large rooms up to 1672 square feet', N'Home Appliances', N'Air Conditioners', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2384, N'Proseware Air conditioner 12000BTU M640 White', N'12,000-BTU air conditioner for rooms up to 640 square feet', N'Home Appliances', N'Air Conditioners', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2385, N'Proseware Air conditioner 10000BTU M490 White', N'10,000-BTU air conditioner for rooms up to 490 square feet', N'Home Appliances', N'Air Conditioners', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2386, N'Proseware Air conditioner 8000BTU M320 White', N'8,000-BTU air conditioner for rooms up to 320 square feet', N'Home Appliances', N'Air Conditioners', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2387, N'Proseware Air conditioner 7000BTU E260 White', N'7,000-BTU air conditioner for rooms up to 260 square feet', N'Home Appliances', N'Air Conditioners', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2388, N'Proseware Air conditioner 6000BTU E180 White', N'6,000-BTU air conditioner for rooms up to 180 square feet', N'Home Appliances', N'Air Conditioners', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2389, N'Proseware Air conditioner 5200BTU E100 White', N'5,200-BTU air conditioner for rooms up to 100 square feet', N'Home Appliances', N'Air Conditioners', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2390, N'Proseware Air conditioner 25000BTU L167 Red', N'25,000-BTU air conditioner for large rooms up to 1672 square feet', N'Home Appliances', N'Air Conditioners', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2391, N'Proseware Air conditioner 12000BTU M640 Red', N'12,000-BTU air conditioner for rooms up to 640 square feet', N'Home Appliances', N'Air Conditioners', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2392, N'Proseware Air conditioner 10000BTU M490 Red', N'10,000-BTU air conditioner for rooms up to 490 square feet', N'Home Appliances', N'Air Conditioners', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2393, N'Proseware Air conditioner 8000BTU M320 Red', N'8,000-BTU air conditioner for rooms up to 320 square feet', N'Home Appliances', N'Air Conditioners', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2394, N'Proseware Air conditioner 7000BTU E260 Red', N'7,000-BTU air conditioner for rooms up to 260 square feet', N'Home Appliances', N'Air Conditioners', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2395, N'Proseware Air conditioner 6000BTU E180 Red', N'6,000-BTU air conditioner for rooms up to 180 square feet', N'Home Appliances', N'Air Conditioners', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2396, N'Proseware Air conditioner 5200BTU E100 Red', N'5,200-BTU air conditioner for rooms up to 100 square feet', N'Home Appliances', N'Air Conditioners', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2397, N'Proseware Air conditioner 25000BTU L167 Silver', N'25,000-BTU air conditioner for large rooms up to 1672 square feet', N'Home Appliances', N'Air Conditioners', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2398, N'Proseware Air conditioner 12000BTU M640 Silver', N'12,000-BTU air conditioner for rooms up to 640 square feet', N'Home Appliances', N'Air Conditioners', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2399, N'Proseware Air conditioner 10000BTU M490 Silver', N'10,000-BTU air conditioner for rooms up to 490 square feet', N'Home Appliances', N'Air Conditioners', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2400, N'Proseware Air conditioner 8000BTU M320 Silver', N'8,000-BTU air conditioner for rooms up to 320 square feet', N'Home Appliances', N'Air Conditioners', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2401, N'Proseware Air conditioner 7000BTU E260 Silver', N'7,000-BTU air conditioner for rooms up to 260 square feet', N'Home Appliances', N'Air Conditioners', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2402, N'Proseware Air conditioner 6000BTU E180 Silver', N'6,000-BTU air conditioner for rooms up to 180 square feet', N'Home Appliances', N'Air Conditioners', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2403, N'Proseware Air conditioner 5200BTU E100 Silver', N'5,200-BTU air conditioner for rooms up to 100 square feet', N'Home Appliances', N'Air Conditioners', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2404, N'Proseware Air conditioner 25000BTU L167 Grey', N'25,000-BTU air conditioner for large rooms up to 1672 square feet', N'Home Appliances', N'Air Conditioners', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2405, N'Proseware Air conditioner 12000BTU M640 Grey', N'12,000-BTU air conditioner for rooms up to 640 square feet', N'Home Appliances', N'Air Conditioners', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2406, N'Proseware Air conditioner 10000BTU M490 Grey', N'10,000-BTU air conditioner for rooms up to 490 square feet', N'Home Appliances', N'Air Conditioners', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2407, N'Proseware Air conditioner 8000BTU M320 Grey', N'8,000-BTU air conditioner for rooms up to 320 square feet', N'Home Appliances', N'Air Conditioners', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2408, N'Proseware Air conditioner 7000BTU E260 Grey', N'7,000-BTU air conditioner for rooms up to 260 square feet', N'Home Appliances', N'Air Conditioners', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2409, N'Proseware Air conditioner 6000BTU E180 Grey', N'6,000-BTU air conditioner for rooms up to 180 square feet', N'Home Appliances', N'Air Conditioners', N'Proseware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2410, N'Litware 3-Speed Oscillating High-Performance Fan E201 Black', N'Powerful 3-speed fan provides whisper-quiet operation', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2411, N'Litware 3-Speed Oscillating High-Performance Fan E201 White', N'Powerful 3-speed fan provides whisper-quiet operation', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2412, N'Litware 3-Speed Oscillating High-Performance Fan E201 Silver', N'Powerful 3-speed fan provides whisper-quiet operation', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2413, N'Litware 18'''' Adjustable Oscillating Pedestal Fan E301 Black', N'18-inch pedestal fan provides 3 whisper-quiet speeds, 90-degree oscillation or stationary cooling', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2414, N'Litware 18'''' Adjustable Oscillating Pedestal Fan E301 White', N'18-inch pedestal fan provides 3 whisper-quiet speeds, 90-degree oscillation or stationary cooling', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2415, N'Litware 18'''' Adjustable Oscillating Pedestal Fan E301 Silver', N'18-inch pedestal fan provides 3 whisper-quiet speeds, 90-degree oscillation or stationary cooling', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2416, N'Litware 3-Speed Oscillating Blower Fan M115 White', N'High-velocity blower floor fan in a tall space-saving streamlined design,  ', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2417, N'Litware 3-Speed Oscillating Blower Fan M115 Black', N'High-velocity blower floor fan in a tall space-saving streamlined design,  ', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2418, N'Litware 3-Speed Oscillating Blower Fan M115 Silver', N'High-velocity blower floor fan in a tall space-saving streamlined design,  ', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2419, N'Litware 20'''' Box Fan E401 Blue', N'170-watt 20-inch box fan with 3 whisper-quiet speeds', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2420, N'Litware 20'''' Box Fan E401 Black', N'170-watt 20-inch box fan with 3 whisper-quiet speeds', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2421, N'Litware 20'''' Box Fan E401 White', N'170-watt 20-inch box fan with 3 whisper-quiet speeds', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2422, N'Litware 20'''' Box Fan E401 Yellow', N'170-watt 20-inch box fan with 3 whisper-quiet speeds', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2423, N'Litware Tower Fan E501 Black', N'Space saving tower design, top mounted control pane', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2424, N'Litware Tower Fan E501 White', N'Space saving tower design, top mounted control pane', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2425, N'Litware Tower Fan E501 Yellow', N'Space saving tower design, top mounted control pane', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2426, N'Litware Tower Fan E501 Silver', N'Space saving tower design, top mounted control pane', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2427, N'Litware Mobile Fan External USB Cooling Fan E601 Silver', N'80 x 80 x 25 mm, rated Voltage - 5V DC, started Voltage - 4V DC  ', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2428, N'Litware Mobile Fan External USB Cooling Fan E601 White', N'80 x 80 x 25 mm, rated Voltage - 5V DC, started Voltage - 4V DC  ', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2429, N'Litware Mobile Fan External USB Cooling Fan E601 Pink', N'80 x 80 x 25 mm, rated Voltage - 5V DC, started Voltage - 4V DC  ', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2430, N'Litware Mobile Fan External USB Cooling Fan E601 Black', N'80 x 80 x 25 mm, rated Voltage - 5V DC, started Voltage - 4V DC  ', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2431, N'Litware 16\” White Oscillating Stand Fan E701 White', N'16\” oscillating stand fan', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2432, N'Litware 16\” White Oscillating Stand Fan E701 Black', N'16\” oscillating stand fan', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2433, N'Litware 16\” White Oscillating Stand Fan E701 Silver', N'16\” oscillating stand fan', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2434, N'Litware 16\” White Oscillating Stand Fan E701 Grey', N'16\” oscillating stand fan', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2435, N'Litware 14\” High Velocity Floor Fan E801 Silver', N'High velocity volt, 3 Speeds', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2436, N'Litware 14\” High Velocity Floor Fan E801 White', N'High velocity volt, 3 Speeds', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2437, N'Litware 14\” High Velocity Floor Fan E801 Black', N'High velocity volt, 3 Speeds', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2438, N'Litware 14\” High Velocity Floor Fan E801 Pink', N'High velocity volt, 3 Speeds', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2439, N'Litware 120mm Blue LED Case Fan E901 Black', N'Up to 69.69 CFM, 19dB-A silent application for CPU cooling', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2440, N'Litware 120mm Blue LED Case Fan E901 White', N'Up to 69.69 CFM, 19dB-A silent application for CPU cooling', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2441, N'Litware 120mm Blue LED Case Fan E901 blue', N'Up to 69.69 CFM, 19dB-A silent application for CPU cooling', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2442, N'Litware 120mm Blue LED Case Fan E901 Grey', N'Up to 69.69 CFM, 19dB-A silent application for CPU cooling', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2443, N'Litware 80mm Dual Ball Bearing Case Fan E1001 Black', N'Higher air flow to enhance cooling performance, silent operation for case cooling', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2444, N'Litware 80mm Dual Ball Bearing Case Fan E1001 White', N'Higher air flow to enhance cooling performance, silent operation for case cooling', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2445, N'Litware 80mm Dual Ball Bearing Case Fan E1001 Green', N'Higher air flow to enhance cooling performance, silent operation for case cooling', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2446, N'Litware 80mm Dual Ball Bearing Case Fan E1001 Pink', N'Higher air flow to enhance cooling performance, silent operation for case cooling', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2447, N'Litware 92mm DBB Case Fan E1101 Silver', N'92mm DBB case fan, 86.2 x 66.5 x 15.8 inches, 5.6 ounces', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2448, N'Litware 92mm DBB Case Fan E1101 Black', N'92mm DBB case fan, 86.2 x 66.5 x 15.8 inches, 5.6 ounces', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2449, N'Litware 92mm DBB Case Fan E1101 White', N'92mm DBB case fan, 86.2 x 66.5 x 15.8 inches, 5.6 ounces', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2450, N'Litware 92mm DBB Case Fan E1101 Grey', N'92mm DBB case fan, 86.2 x 66.5 x 15.8 inches, 5.6 ounces', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2451, N'Litware Desktop Wind Tower Oscillating Fan E1201 Brown', N'Desktop fan with front-mounted electronic controls, 3 speeds', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2452, N'Litware Desktop Wind Tower Oscillating Fan E1201 Purple', N'Desktop fan with front-mounted electronic controls, 3 speeds', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2453, N'Litware Desktop Wind Tower Oscillating Fan E1201 Black', N'Desktop fan with front-mounted electronic controls, 3 speeds', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2454, N'Litware Desktop Wind Tower Oscillating Fan E1201 White', N'Desktop fan with front-mounted electronic controls, 3 speeds', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2455, N'Litware USB Foam Fan E1301 Pink', N'Cold alternative to an under desk fan, child-safe blades', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2456, N'Litware USB Foam Fan E1301 White', N'Cold alternative to an under desk fan, child-safe blades', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2457, N'Litware USB Foam Fan E1301 Black', N'Cold alternative to an under desk fan, child-safe blades', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2458, N'Litware USB Foam Fan E1301 Red', N'Cold alternative to an under desk fan, child-safe blades', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2459, N'Litware 180 CFM Vertical Discharge Fan X450 Red', N'Powerful and efficient vertical discharge fan', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2460, N'Litware 180 CFM Vertical Discharge Fan X450 Black', N'Powerful and efficient vertical discharge fan', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2461, N'Litware 180 CFM Vertical Discharge Fan X450 White', N'Powerful and efficient vertical discharge fan', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2462, N'Litware 180 CFM Vertical Discharge Fan X450 Blue', N'Powerful and efficient vertical discharge fan', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2463, N'Litware USB Durable Desk Soft Fan E1401 White', N'3 speed settings, separate oscillation control provides oscillation option to increase air circulation', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2464, N'Litware USB Durable Desk Soft Fan E1401 Black', N'3 speed settings, separate oscillation control provides oscillation option to increase air circulation', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2465, N'Litware USB Durable Desk Soft Fan E1401 Blue', N'3 speed settings, separate oscillation control provides oscillation option to increase air circulation', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2466, N'Litware USB Durable Desk Soft Fan E1401 Red', N'3 speed settings, separate oscillation control provides oscillation option to increase air circulation', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2467, N'Litware 80mm LED Dual PCI Slot Fan E1501 Yellow', N'7.2 X 4.8 x 1.7 inches, 8 ounces  ', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2468, N'Litware 80mm LED Dual PCI Slot Fan E1501 Red', N'7.2 X 4.8 x 1.7 inches, 8 ounces  ', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2469, N'Litware 80mm LED Dual PCI Slot Fan E1501 Blue', N'7.2 X 4.8 x 1.7 inches, 8 ounces  ', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2470, N'Litware 80mm LED Dual PCI Slot Fan E1501 Pink', N'7.2 X 4.8 x 1.7 inches, 8 ounces  ', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2471, N'Litware 80mm LED Dual PCI Slot Fan E1501 White', N'7.2 X 4.8 x 1.7 inches, 8 ounces  ', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2472, N'Litware 20'''' Weather-Shield Performance Box Fan E1601 Orange', N'20'''' box fan with 3 whisper-quiet, energy-efficient speeds  ', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2473, N'Litware 20'''' Weather-Shield Performance Box Fan E1601 Yellow', N'20'''' box fan with 3 whisper-quiet, energy-efficient speeds  ', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2474, N'Litware 20'''' Weather-Shield Performance Box Fan E1601 White', N'20'''' box fan with 3 whisper-quiet, energy-efficient speeds  ', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2475, N'Litware 20'''' Weather-Shield Performance Box Fan E1601 Black', N'20'''' box fan with 3 whisper-quiet, energy-efficient speeds  ', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2476, N'Litware 17'''' Oscillating Pedestal Fan M125 Pink', N'17-inch oscillating pedestal fan with all-metal construction', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2477, N'Litware 17'''' Oscillating Pedestal Fan M125 Yellow', N'17-inch oscillating pedestal fan with all-metal construction', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2478, N'Litware 17'''' Oscillating Pedestal Fan M125 Blue', N'17-inch oscillating pedestal fan with all-metal construction', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2479, N'Litware 17'''' Oscillating Pedestal Fan M125 White', N'17-inch oscillating pedestal fan with all-metal construction', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2480, N'Litware 18'''' Oscillating Pedestal Fan M135 Pink', N'18-inch oscillating pedestal fan with all-metal construction', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2481, N'Litware 18'''' Oscillating Pedestal Fan M135 Yellow', N'18-inch oscillating pedestal fan with all-metal construction', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2482, N'Litware 18'''' Oscillating Pedestal Fan M135 Blue', N'18-inch oscillating pedestal fan with all-metal construction', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2483, N'Litware 18'''' Oscillating Pedestal Fan M135 White', N'18-inch oscillating pedestal fan with all-metal construction', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2484, N'Litware 18'''' Oscillating Pedestal Fan M145 Pink', N'19-inch oscillating pedestal fan with all-metal construction', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2485, N'Litware 18'''' Oscillating Pedestal Fan M145 Yellow', N'19-inch oscillating pedestal fan with all-metal construction', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2486, N'Litware 18'''' Oscillating Pedestal Fan M145 Blue', N'19-inch oscillating pedestal fan with all-metal construction', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2487, N'Litware 18'''' Oscillating Pedestal Fan M145 White', N'19-inch oscillating pedestal fan with all-metal construction', N'Home Appliances', N'Fans', N'Litware, Inc.')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2488, N'Contoso Rubberized Skin BlackBerry E100 Black', N'Rubberized exterior provides a sure grip on the device and helps protect it if dropped or bumped', N'Cell phones', N'Cell phones Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2489, N'Contoso Rubberized Skin BlackBerry E100 Silver', N'Rubberized exterior provides a sure grip on the device and helps protect it if dropped or bumped', N'Cell phones', N'Cell phones Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2490, N'Contoso Rubberized Skin BlackBerry E100 White', N'Rubberized exterior provides a sure grip on the device and helps protect it if dropped or bumped', N'Cell phones', N'Cell phones Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2491, N'Cigarette Lighter Adapter for Contoso Phones E110 Black', N'Packs the power you need to charge your mobile phone while driving  Fits most in-vehicle power port sockets', N'Cell phones', N'Cell phones Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2492, N'Cigarette Lighter Adapter for Contoso Phones E110 White', N'Packs the power you need to charge your mobile phone while driving  Fits most in-vehicle power port sockets', N'Cell phones', N'Cell phones Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2493, N'Cigarette Lighter Adapter for Contoso Phones E110 Red', N'Packs the power you need to charge your mobile phone while driving  Fits most in-vehicle power port sockets', N'Cell phones', N'Cell phones Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2494, N'Reusable Phone Screen Protector E120', N'Expect better quality than any other screen protector. Shields and protects agaisnt unwanted scratches', N'Cell phones', N'Cell phones Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2495, N'Headphone Adapter for Contoso Phone E130 Black', N'Allows the adapter to be used with stereo headphones that also have integrated microphone functionality', N'Cell phones', N'Cell phones Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2496, N'Headphone Adapter for Contoso Phone E130 Silver', N'Allows the adapter to be used with stereo headphones that also have integrated microphone functionality', N'Cell phones', N'Cell phones Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2497, N'Headphone Adapter for Contoso Phone E130 White', N'Allows the adapter to be used with stereo headphones that also have integrated microphone functionality', N'Cell phones', N'Cell phones Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2498, N'Contoso Phone Tough Skin Case E140 Black', N'Bottom flaps up for docking, rugged rubber case', N'Cell phones', N'Cell phones Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2499, N'Contoso Phone Tough Skin Case E140 White', N'Bottom flaps up for docking, rugged rubber case', N'Cell phones', N'Cell phones Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2500, N'Contoso Phone Tough Skin Case E140 Silver', N'Bottom flaps up for docking, rugged rubber case', N'Cell phones', N'Cell phones Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2501, N'Contoso Phone Tough Skin Case E140 Pink', N'Bottom flaps up for docking, rugged rubber case', N'Cell phones', N'Cell phones Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2502, N'Contoso Touch Stylus Pen E150 Black', N'The sensitive slanted stylus tip gives you smooth navigation; rubber touch tip does not harm touch-screen', N'Cell phones', N'Cell phones Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2503, N'Contoso Touch Stylus Pen E150 Silver', N'The sensitive slanted stylus tip gives you smooth navigation; rubber touch tip does not harm touch-screen', N'Cell phones', N'Cell phones Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2504, N'Contoso Touch Stylus Pen E150 White', N'The sensitive slanted stylus tip gives you smooth navigation; rubber touch tip does not harm touch-screen', N'Cell phones', N'Cell phones Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2505, N'Contoso Touch Stylus Pen E150 Red', N'The sensitive slanted stylus tip gives you smooth navigation; rubber touch tip does not harm touch-screen', N'Cell phones', N'Cell phones Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2506, N'Contoso Rubberized Snap-On Cover Hard Case Cell Phone Protector E160 Pink', N'LCD screen protector', N'Cell phones', N'Cell phones Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2507, N'Contoso Rubberized Snap-On Cover Hard Case Cell Phone Protector E160 White', N'LCD screen protector', N'Cell phones', N'Cell phones Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2508, N'Contoso Rubberized Snap-On Cover Hard Case Cell Phone Protector E160 Silver', N'LCD screen protector', N'Cell phones', N'Cell phones Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2509, N'Contoso Original K1m Li-Ion Standard Battery E170 Black', N'Stay in touch longer by getting battery power with a Lithium Ion Battery, uses the latest Lithium Ion battery technology giving you the best performance possible compared to other battery technologies', N'Cell phones', N'Cell phones Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2510, N'Contoso Original K1m Li-Ion Standard Battery E170 White', N'Stay in touch longer by getting battery power with a Lithium Ion Battery, uses the latest Lithium Ion battery technology giving you the best performance possible compared to other battery technologies', N'Cell phones', N'Cell phones Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2511, N'Contoso Original K1m Li-Ion Standard Battery E170 Silver', N'Stay in touch longer by getting battery power with a Lithium Ion Battery, uses the latest Lithium Ion battery technology giving you the best performance possible compared to other battery technologies', N'Cell phones', N'Cell phones Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2512, N'Contoso Bluetooth Active Headphones L15 Black', N'Play time up to 6 hours, talk time up to 7 hours, and Standby time up to 150 hours', N'Cell phones', N'Cell phones Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2513, N'Contoso Bluetooth Active Headphones L15 Red', N'Play time up to 6 hours, talk time up to 7 hours, and Standby time up to 150 hours', N'Cell phones', N'Cell phones Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2514, N'Contoso Bluetooth Active Headphones L15 White', N'Play time up to 6 hours, talk time up to 7 hours, and Standby time up to 150 hours', N'Cell phones', N'Cell phones Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2515, N'Contoso In-Line Coupler E180 White', N'Designed for new modular, different location without', N'Cell phones', N'Cell phones Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2516, N'Contoso In-Line Coupler E180 Black', N'Designed for new modular, different location without', N'Cell phones', N'Cell phones Accessories', N'Contoso, Ltd')

; INSERT DimProducts (ProductID, ProductName, ProductDescription, ProductCateryName, ProductSubcateryName, Manufacturer) VALUES (2517, N'Contoso In-Line Coupler E180 Silver', N'Designed for new modular, different location without', N'Cell phones', N'Cell phones Accessories', N'Contoso, Ltd')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (4, N'Contoso Bellevue Store', N'Bellevue', N'Washington', N'United States', N'Luca Argentiero', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (156, N'Contoso Cambridge Store', N'Cambridge', N'England', N'United Kingdom', N'Cecilia Cornejo', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (88, N'Contoso Cedar Park Store', N'Cedar Park', N'Texas', N'United States', N'Yael Peled', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (214, N'Contoso Leeds Store', N'Leeds', N'England', N'United Kingdom', N'Justin Thorp', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (201, N'Contoso London Store', N'London', N'England', N'United Kingdom', N'Bart Duncan', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (215, N'Contoso Paris Store', N'Paris', N'Seine (Paris)', N'France', N'Anil Elson', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (309, N'Contoso Europe Reseller', N'Paris', N'Seine (Paris)', N'France', N'Anil Elson', N'Reseller')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (17, N'Contoso Spokane Store', N'Spokane', N'Washington', N'United States', N'Chase Carpenter', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (253, N'Contoso Sydney No.1 Store', N'Sydney', N'New South Wales', N'Australia', N'Daniel ldschmidt', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (300, N'Contoso Sydney  No.2 Store', N'Sydney', N'New South Wales', N'Australia', N'Daniel ldschmidt', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (289, N'Contoso Vancouver  No.1 Store', N'Vancouver', N'British Columbia', N'Canada', N'Andrea Dunker', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (290, N'Contoso Vancouver  No.2 Store', N'Vancouver', N'British Columbia', N'Canada', N'Andrea Dunker', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (22, N'Contoso Westminster Store', N'Westminster', N'British Columbia', N'Canada', N'Eiji Yasuda', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (6, N'Contoso Yakima Store', N'Yakima', N'Washington', N'United States', N'Zainal Arifin', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (204, N'Contoso York Store', N'York', N'England', N'United Kingdom', N'Mark Steele', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (79, N'Contoso Baytown Store', N'Baytown', N'Texas', N'United States', N'Peter Bankov', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (228, N'Contoso Berlin Store', N'Berlin', N'Berlin', N'Germany', N'Kelly Weadock', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (306, N'Contoso Europe Online Store', N'Berlin', N'Berlin', N'Germany', N'Kelly Weadock', N'Online')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (291, N'Contoso Calgary  Store', N'Calgary', N'Alberta', N'Canada', N'Martin Spona', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (16, N'Contoso Everett Store', N'Everett', N'Washington', N'United States', N'Anahita Bahrami', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (212, N'Contoso Liverpool Store', N'Liverpool', N'England', N'United Kingdom', N'Iben Thorell', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (5, N'Contoso Redmond Store', N'Redmond', N'Washington', N'United States', N'Suriya Sajjateerakool', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (15, N'Contoso Renton Store', N'Renton', N'Washington', N'United States', N'Robin Wakefield', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (1, N'Contoso Seattle No.1 Store', N'Seattle', N'Washington', N'United States', N'Roy Antebi', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (2, N'Contoso Seattle No.2 Store', N'Seattle', N'Washington', N'United States', N'Roy Antebi', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (308, N'Contoso North America Reseller', N'Seattle', N'Washington', N'United States', N'Roy Antebi', N'Reseller')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (264, N'Contoso Ashgabat No.1 Store', N'Ashgabat', N'Ahal Province', N'Turkmenistan', N'Allan Guinot', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (298, N'Contoso Ashgabat  No.2 Store', N'Ashgabat', N'Ahal Province', N'Turkmenistan', N'Allan Guinot', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (262, N'Contoso Bangkok No.1 Store', N'Bangkok', N'Krung Thep', N'Thailand', N'Mary Andersen', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (296, N'Contoso Bangkok No.2 Store', N'Bangkok', N'Krung Thep', N'Thailand', N'Mary Andersen', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (279, N'Contoso Beijing Store', N'Beijing', N'Beijing', N'China', N'Nuria nzalez', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (307, N'Contoso Asia Online Store', N'Beijing', N'Beijing', N'China', N'Nuria nzalez', N'Online')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (310, N'Contoso Asia Reseller', N'Beijing', N'Beijing', N'China', N'Nuria nzalez', N'Reseller')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (276, N'Contoso Bishkek Store', N'Bishkek', N'Chuy Province', N'Kyrgyzstan', N'Enrique Gil', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (275, N'Contoso Busan Store', N'Busan ', N'Yeongnam', N'South Korea', N'Nikolay Grachev', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (252, N'Contoso Canberra Store', N'Canberra', N'Molonglo', N'Australia', N'Jossef ldberg', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (261, N'Contoso Damascus No.1 Store', N'Damascus', N'Damascus', N'Syria', N'Cesar Garcia', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (295, N'Contoso Damascus No.2 Store', N'Damascus', N'Damascus', N'Syria', N'Cesar Garcia', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (280, N'Contoso Guangzhou Store', N'Guangzhou', N'GuangDong', N'China', N'Stuart Glasson', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (259, N'Contoso Hong Kong No.1 Store', N'Hong Kong', N'Hong Kong', N'China', N'Janet Galore', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (293, N'Contoso Hong Kong No.2 Store', N'Hong Kong', N'Hong Kong', N'China', N'Janet Galore', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (265, N'Contoso Islamabad No.1 Store', N'Islamabad', N'Islamabad Capital Territory', N'Pakistan', N'Davide Garghentini', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (299, N'Contoso Islamabad  No.2 Store', N'Islamabad', N'Islamabad Capital Territory', N'Pakistan', N'Davide Garghentini', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (257, N'Contoso Kolkata Store', N'Kolkata ', N'West Bengal', N'India', N'Mike Gahrns', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (273, N'Contoso Kyoto Store', N'Kyoto ', N'Kansai', N'Japan', N'Kirk Gregersen', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (256, N'Contoso Mumbai Store', N'Mumbai ', N'Maharashtra', N'India', N'David Hamilton', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (271, N'Contoso Naya Store', N'Naya ', N'Chubu', N'Japan', N'Carlos Grilo', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (255, N'Contoso New Delhi Store', N'New Delhi', N'National Capital Territory of Delhi', N'India', N'Kari Furse', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (270, N'Contoso Osaka No.1 Store', N'Osaka ', N'Kansai', N'Japan', N'Christa Geller', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (301, N'Contoso Osaka No.2 Store', N'Osaka ', N'Kansai', N'Japan', N'Christa Geller', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (272, N'Contoso Sapporo Store', N'Sapporo ', N'Hokkaido', N'Japan', N'Tom Getzinger', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (274, N'Contoso Seoul Store', N'Seoul', N'Seoul-jikhalsi', N'South Korea', N'Leo Giakoumakis', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (277, N'Contoso Shanghai No.1 Store', N'Shanghai', N'Shanghai', N'China', N'Mojca stincar', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (281, N'Contoso Shanghai No.2 Store', N'Shanghai', N'Shanghai', N'China', N'Mojca stincar', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (251, N'Contoso Singapore Store', N'Singapore', N'Singapore', N'Singapore', N'Jim Hance', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (302, N'Contoso Taipei  Store', N'Taipei', N'Taiwan', N'Taiwan', N'Ming-Yang Xie', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (260, N'Contoso Tehran No.1 Store', N'Tehran', N'Tehran', N'Iran', N'Adina Hagege', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (294, N'Contoso Tehran No.2 Store', N'Tehran', N'Tehran', N'Iran', N'Adina Hagege', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (258, N'Contoso Thimphu No.1 Store', N'Thimphu', N'Thimphu District', N'Bhutan', N'Dean Halstead', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (292, N'Contoso Thimphu No.2 Store', N'Thimphu', N'Thimphu District', N'Bhutan', N'Dean Halstead', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (267, N'Contoso Tokyo No.1 Store', N'Tokyo', N'Kanto', N'Japan', N'Inbar Gazit', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (268, N'Contoso Tokyo No.2 Store', N'Tokyo', N'Kanto', N'Japan', N'Inbar Gazit', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (278, N'Contoso Urumqi Store', N'Urumqi', N'Xinjiang', N'China', N'Eric Gilmore', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (254, N'Contoso Yerevan Store', N'Yerevan', N'Armenia', N'Armenia', N'Gerhard eschl', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (269, N'Contoso Yokohama Store', N'Yokohama ', N'Kanto', N'Japan', N'Seth Grossman', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (240, N'Contoso Amsterdam Store', N'Amsterdam', N'Noord-Holland', N'the Netherlands', N'Jeff Ford', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (250, N'Contoso Athens Store', N'Athens', N'Central Greece and Evvoia', N'Greece ', N'Gabe Frost', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (209, N'Contoso Baildon Store', N'Baildon', N'England ', N'United Kingdom', N'Josh Edwards', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (236, N'Contoso Baumholder Store', N'Baumholder', N'Rhineland-Palatinate', N'Germany ', N'William Flash', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (246, N'Contoso Berne Store', N'Berne', N'Bern', N'Switzerland ', N'Joel Frauenheim', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (245, N'Contoso Bucharest Store', N'Bucharest', N'Bucuresti', N'Romania ', N'Mark Harrington', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (205, N'Contoso Carlisle Store', N'Carlisle', N'England ', N'United Kingdom', N'Witold Dyszkiewicz', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (210, N'Contoso Cheshire Store', N'Cheshire', N'England ', N'United Kingdom', N'Sandhya Thodla', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (241, N'Contoso Copenhagen Store', N'Copenhagen', N'Staden Kobenhavn', N'Denmark       ', N'Aziz Hassouneh', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (249, N'Contoso Dublin Store', N'Dublin', N'Leinster', N'Ireland ', N'Claus Hansen', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (234, N'Contoso Dusseldorf Store', N'Dusseldorf', N'North Rhine-Westphalia', N'Germany ', N'Franziska Fiegler', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (202, N'Contoso Edinburgh Store', N'Edinburgh', N'Scotland', N'United Kingdom', N'Jeff Stammler', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (224, N'Contoso Firenze Store', N'Firenze', N'Province of Florence', N'Italy    ', N'Peter Villadsen', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (237, N'Contoso Giebelstadt Store', N'Giebelstadt', N'Bavaria', N'Germany ', N'Robin Wood', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (203, N'Contoso Glasw Store', N'Glasw', N'Scotland', N'United Kingdom', N'Shelley Dyck', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (231, N'Contoso Hofheim Store', N'Hofheim am Taunus', N'Hesse', N'Germany ', N'Martin Weber', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (213, N'Contoso Knotty Ash Store', N'Knotty Ash', N'England ', N'United Kingdom', N'Patrick Elliott', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (230, N'Contoso koln No.2 Store', N'Koln', N'North Rhine-Westphalia', N'Germany ', N'Yaniv Feinberg', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (232, N'Contoso koln No.1 Store', N'Koln', N'North Rhine-Westphalia', N'Germany ', N'Dan Fennell', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (207, N'Contoso Lancashire Store', N'Lancashire', N'England ', N'United Kingdom', N'Terry Earls', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (233, N'Contoso Landstuhl Store', N'Landstuhl', N'Rhineland-Palatinate', N'Germany ', N'Cindy White', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (303, N'Contoso Lisbon Store', N'Lisbon', N'Lisboa Region', N'Portugal', N'Antonio Alwan', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (244, N'Contoso Ljubljana Store', N'Ljubljana', N'Ljubljana', N'Slovenia', N'Soren Francker', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (217, N'Contoso Lyon Store', N'Lyon', N'Rhone-Alpes ', N'France', N'Michael Entin', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (243, N'Contoso Madrid Store', N'Madrid', N'Madrid', N'Spain', N'Arno Harteveld', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (206, N'Contoso Manchester Store', N'Manchester', N'England ', N'United Kingdom', N'Brad Sutton', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (216, N'Contoso Marseille Store', N'Marseille', N'Provence-Alpes-Cote d''Azur', N'France', N'Danielle Tiedt', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (226, N'Contoso Milan Store', N'Milan', N'Lombardia', N'Italy    ', N'Florian Voss', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (263, N'Contoso Moscow  No.1 Store', N'Moscow', N'Moskovskaya oblast', N'Russia', N'Hu Garcia', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (297, N'Contoso Moscow  No.2 Store', N'Moscow', N'Moskovskaya oblast', N'Russia', N'Hu Garcia', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (239, N'Contoso Munich Store', N'Munich', N'Bavaria', N'Germany ', N'Karin Zimprich', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (220, N'Contoso Nantes Store', N'Nantes', N'Pays de la Loire', N'France', N'Tjeerd Veninga', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (219, N'Contoso Nice Store', N'Nice', N'Alpes-Maritimes', N'France', N'Ebru Ersan', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (305, N'Contoso Nizhny Novrod Store', N'Nizhny Novrod ', N'Nizhny Novrod Oblast', N'Russia', N'Kim Akers', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (238, N'Contoso obamberg Store', N'Bamberg', N'Bavaria', N'Germany ', N'Raymond Fong', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (235, N'Contoso Ramstein Store', N'Ramstein', N'Rhineland-Palatinate', N'Germany ', N'Greg Winston', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (222, N'Contoso Roma Store', N'Roma', N'Roma', N'Italy    ', N'Grery Verny', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (304, N'Contoso Saint Petersburg Store', N'Saint Petersburg', N'Northwestern', N'Russia', N'Miguel Saenz', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (242, N'Contoso Stockholm Store', N'Stockholm', N'Stockholms', N'Sweden ', N'Diane Forsyth', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (211, N'Contoso Stockport Store', N'Stockport', N'England ', N'United Kingdom', N'Vladimir Erov', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (221, N'Contoso Strasbourg Store', N'Strasbourg', N'Bas-Rhin', N'France', N'Modesto Estrada', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (225, N'Contoso Torino Store', N'Torino', N'Province of Turin', N'Italy    ', N'Antoine Faisandier', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (218, N'Contoso Toulouse Store', N'Toulouse', N'Midi-Pyrenees', N'France', N'Olinda Turner', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (248, N'Contoso Valletta Store', N'Valletta', N'Valletta', N'Malta', N'Victor Freitas', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (223, N'Contoso Venezia Store', N'Venezia', N'Venice', N'Italy    ', N'Ken Ewert', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (247, N'Contoso Warsaw Store', N'Warsaw', N'Warszawa', N'Poland ', N'Eran Harel', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (208, N'Contoso West Yorkshire Store', N'West Yorkshire', N'England ', N'United Kingdom', N'Bernard Tham', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (114, N'Contoso Albany Store', N'Albany', N'New York', N'United States', N'Cristina Potra', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (184, N'Contoso Alexandria Store', N'Alexandria', N'Virginia', N'United States', N'Jill Shrader', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (183, N'Contoso Anchorage Store', N'Anchorage', N'Alaska', N'United States', N'Chris Bryant', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (191, N'Contoso Annapolis Store', N'Annapolis', N'Maryland', N'United States', N'Cari Dick', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (43, N'Contoso Appleton Store', N'Appleton', N'Wisconsin', N'United States', N'Anne Wallace', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (93, N'Contoso Arlington Store', N'Arlington', N'Texas', N'United States', N'Chris Bryant', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (141, N'Contoso Atlantic City Store', N'Atlantic City ', N'New Jersey', N'United States', N'Michal Chmiela', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (150, N'Contoso Attleboro Store', N'Attleboro', N'Massachusetts', N'United States', N'Aaron Con', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (40, N'Contoso Aurora Store', N'Aurora', N'Colorado', N'United States', N'Allie Bellew', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (86, N'Contoso Austin Store', N'Austin', N'Texas', N'United States', N'Leonids Paturskis', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (197, N'Contoso Back River Store', N'Back River', N'Maryland', N'United States', N'Chris Downs', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (81, N'Contoso Bacliff Store', N'Bacliff', N'Texas', N'United States', N'Bryan Bredehoeft', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (192, N'Contoso Baltimore Store', N'Baltimore', N'Maryland', N'United States', N'Ashima Singhal', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (166, N'Contoso Banr Store', N'Banr', N'Maine', N'United States', N'Apurva Dalia', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (167, N'Contoso Bar Harbor Store', N'Bar Harbor', N'Maine', N'United States', N'Tihomir Sasic', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (137, N'Contoso Bayonne Store', N'Bayonne ', N'New Jersey', N'United States', N'Aik Chen', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (76, N'Contoso Beaumont No.1 Store', N'Beaumont', N'Texas', N'United States', N'Marc Boyer', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (78, N'Contoso Beaumont No.2 Store', N'Beaumont', N'Texas', N'United States', N'Marc Boyer', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (33, N'Contoso Berthoud Store', N'Berthoud', N'Colorado', N'United States', N'Karolina Salas-Szlejter', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (199, N'Contoso North America Online Store', N'Bethesda', N'Maryland', N'United States', N'Ben Smith', N'Online')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (173, N'Contoso Bridgeport Store', N'Bridgeport', N'Connecticut', N'United States', N'George Schaller', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (146, N'Contoso Boston Store', N'Boston', N'Massachusetts', N'United States', N'Kelly Rollin', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (37, N'Contoso Boulder Store', N'Boulder', N'Colorado', N'United States', N'Oliver Szimmetat', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (121, N'Contoso Brooklyn Store', N'Brooklyn', N'New York', N'United States', N'Mike Ray', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (119, N'Contoso Buffalo Store', N'Buffalo', N'New York', N'United States', N'Vishwa Ranjan', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (52, N'Contoso Burlington Store', N'Burlington', N'Wisconsin', N'United States', N'Carlos Carvallo', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (113, N'Contoso Cape Canaveral Store', N'Cape Canaveral', N'Florida', N'United States', N'Cyril Carbonati', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (145, N'Contoso Cape May Store', N'Cape May', N'New Jersey', N'United States', N'Alice Ciccu', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (28, N'Contoso Castle Rock Store', N'Castle Rock', N'Colorado', N'United States', N'Rok Palcic', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (190, N'Contoso Charleston Store', N'Charleston ', N'South Carolina', N'United States', N'David Simpson', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (186, N'Contoso Charlottesville Store', N'Charlottesville ', N'Virginia', N'United States', N'Alexandre Silva', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (19, N'Contoso Cheney Store', N'Cheney', N'Washington', N'United States', N'Dev Balasubramanian', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (11, N'Contoso Cle Elum Store', N'Cle Elum', N'Washington', N'United States', N'Hans-Walter Untch', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (134, N'Contoso Clifton Store', N'Clifton', N'New Jersey', N'United States', N'Don Richardson', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (90, N'Contoso Dallas Store', N'Dallas', N'Texas', N'United States', N'Lori Penor', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (176, N'Contoso Darien Store', N'Darien', N'Connecticut', N'United States', N'Eric Davison', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (98, N'Contoso Denton Store', N'Denton', N'Texas', N'United States', N'Terrence Philip', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (34, N'Contoso Denver No.1 Store', N'Denver', N'Colorado', N'United States', N'Anna Bedecs', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (35, N'Contoso Denver No.2 Store', N'Denver', N'Colorado', N'United States', N'Anna Bedecs', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (36, N'Contoso Denver No.3 Store', N'Denver', N'Colorado', N'United States', N'Anna Bedecs', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (95, N'Contoso Desoto Store', N'Desoto', N'Texas', N'United States', N'Brian Burke', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (135, N'Contoso East Orange Store', N'East Orange ', N'New Jersey', N'United States', N'Ankur Chavda', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (53, N'Contoso East Troy Store', N'East Troy', N'Wisconsin', N'United States', N'Morten Rasmussen', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (63, N'Contoso Edgerton Store', N'Edgerton', N'Wisconsin', N'United States', N'Tomasz Bochenek', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (126, N'Contoso Elmira Store', N'Elmira', N'New York', N'United States', N'Barak Regev', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (20, N'Contoso Englewood Store', N'Englewood', N'Colorado', N'United States', N'Steven Wright', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (14, N'Contoso Fall City Store', N'Fall City', N'Washington', N'United States', N'Vivian Atlas', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (163, N'Contoso Falmouth Store', N'Falmouth', N'Massachusetts', N'United States', N'Patrick Sands', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (46, N'Contoso Fond du Lac Store', N'Fond du Lac', N'Wisconsin', N'United States', N'Arvind Rao', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (64, N'Contoso Fort Atkinson Store', N'Fort Atkinson', N'Wisconsin', N'United States', N'Toby Nixon', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (30, N'Contoso Fort Collins Store', N'Fort Collins', N'Colorado', N'United States', N'Yossi Ran', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (109, N'Contoso Fort Lauderdale Store', N'Fort Lauderdale', N'Florida', N'United States', N'Jamie Campbell', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (99, N'Contoso Fort Worth Store', N'Fort Worth', N'Texas', N'United States', N'Rick Byham', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (155, N'Contoso Framingham Store', N'Framingham', N'Massachusetts', N'United States', N'Michael Ruggiero', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (187, N'Contoso Fredericksburg Store', N'Fredericksburg', N'Virginia', N'United States', N'Prashanth Desai', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (91, N'Contoso Georgetown Store', N'Georgetown', N'Texas', N'United States', N'Daniel Brunner', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (55, N'Contoso Germantown Store', N'Germantown', N'Maryland', N'United States', N'Michael Berroth', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (198, N'Contoso North Harford Store', N'Germantown', N'Maryland', N'United States', N'Michael Berroth', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (23, N'Contoso Grand Junction Store', N'Grand Junction', N'Colorado', N'United States', N'Ed Banti', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (94, N'Contoso Grand Prairie Store', N'Grand Prairie', N'Texas', N'United States', N'Wirote Petchdenlarp', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (7, N'Contoso Granger Store', N'Granger', N'Washington', N'United States', N'Amy Strande', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (25, N'Contoso Greeley  No.1 Store', N'Greeley', N'Colorado', N'United States', N'Dave Barnett', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (31, N'Contoso Greeley No.2 Store', N'Greeley', N'Colorado', N'United States', N'Dave Barnett', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (42, N'Contoso Green Bay Store', N'Green Bay', N'Wisconsin', N'United States', N'Nuno Bento', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (189, N'Contoso Greenville Store', N'Greenville', N'South Carolina', N'United States', N'Michael DeVoe', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (140, N'Contoso Hackensack Store', N'Hackensack ', N'New Jersey', N'United States', N'Titti Ringstrom', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (172, N'Contoso Hartford Store', N'Hartford', N'Connecticut', N'United States', N'Shannon Dascher', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (158, N'Contoso Haverhill Store', N'Haverhill', N'Massachusetts', N'United States', N'Robin Counts', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (92, N'Contoso Hillsboro Store', N'Hillsboro', N'Texas', N'United States', N'Michel Pereira', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (153, N'Contoso Hingham Store', N'Hingham', N'Massachusetts', N'United States', N'Erik Rucker', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (143, N'Contoso Hoboken Store', N'Hoboken ', N'New Jersey', N'United States', N'Ray Chow', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (161, N'Contoso Holyoke Store', N'Holyoke', N'Massachusetts', N'United States', N'Mandar Samant', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (66, N'Contoso Houston No.1 Store', N'Houston', N'Texas', N'United States', N'Fabricio Noriega', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (67, N'Contoso Houston No.2 Store', N'Houston', N'Texas', N'United States', N'Fabricio Noriega', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (68, N'Contoso Houston No.3 Store', N'Houston', N'Texas', N'United States', N'Fabricio Noriega', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (69, N'Contoso Houston No.4 Store', N'Houston', N'Texas', N'United States', N'Fabricio Noriega', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (193, N'Contoso Howard Store', N'Howard', N'Maryland', N'United States', N'Cliff Didcock', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (84, N'Contoso Humble Store', N'Humble', N'Texas', N'United States', N'Dorena Paschke', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (123, N'Contoso Ithaca Store', N'Ithaca', N'New York', N'United States', N'April Reagan', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (103, N'Contoso Jacksonville Store', N'Jacksonville', N'Florida', N'United States', N'Pilar Pinilla', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (132, N'Contoso Jersey City Store', N'Jersey City', N'New Jersey', N'United States', N'Bjorn Rettig', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (168, N'Contoso Kennebunkport Store', N'Kennebunkport', N'Maine', N'United States', N'Jim Daly', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (3, N'Contoso Kennewick Store', N'Kennewick', N'Washington', N'United States', N'Prithvi Raj', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (112, N'Contoso Key West Store', N'Key West', N'Florida', N'United States', N'Josh Pollock', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (80, N'Contoso La Porte Store', N'La Porte', N'Texas', N'United States', N'Dan Park', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (27, N'Contoso Lafayette Store', N'Lafayette', N'Colorado', N'United States', N'Adam Barr', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (108, N'Contoso Lakeland Store', N'Lakeland', N'Florida', N'United States', N'Ekaterina Podkolzina', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (152, N'Contoso Leominster Store', N'Leominster', N'Massachusetts', N'United States', N'Kevin Cook', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (169, N'Contoso Lewiston Store', N'Lewiston', N'Maine', N'United States', N'Michiyo Sato', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (97, N'Contoso Lewisville Store', N'Lewisville', N'Texas', N'United States', N'Tzipi Butnaru', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (178, N'Contoso Litchfield County Store', N'Litchfield County', N'Connecticut', N'United States', N'Denis Dehenne', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (39, N'Contoso Littleton Store', N'Littleton', N'Colorado', N'United States', N'Jeff Teper', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (75, N'Contoso Longview Store', N'Longview', N'Texas', N'United States', N'Scott Oveson', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (26, N'Contoso Loveland Store', N'Loveland', N'Colorado', N'United States', N'Manuel Oliveira', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (151, N'Contoso Lowell Store', N'Lowell', N'Massachusetts', N'United States', N'Pablo Rovira Diez', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (159, N'Contoso Lynn Store', N'Lynn', N'Massachusetts', N'United States', N'Ken Sánchez', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (60, N'Contoso Madison Store', N'Madison', N'Wisconsin', N'United States', N'Paulo Neves', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (59, N'Contoso Manitowoc Store', N'Manitowoc', N'Wisconsin', N'United States', N'Ari Bixhorn', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (74, N'Contoso Marshall Store', N'Marshall', N'Texas', N'United States', N'Thomas Bouchard', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (188, N'Contoso Martinsville Store', N'Martinsville ', N'Virginia', N'United States', N'Alex Simmons', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (44, N'Contoso Menasha Store', N'Menasha', N'Wisconsin', N'United States', N'Matt Berg', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (101, N'Contoso Miami No.1 Store', N'Miami', N'Florida', N'United States', N'Reina Cabatana', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (102, N'Contoso Miami No.2 Store', N'Miami', N'Florida', N'United States', N'Reina Cabatana', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (70, N'Contoso Midland Store', N'Midland', N'Texas', N'United States', N'Raffaella Bonaldi', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (32, N'Contoso Milliken Store', N'Milliken', N'Colorado', N'United States', N'Shaun Beasley', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (47, N'Contoso Milwaukee No.1 Store', N'Milwaukee', N'Wisconsin', N'United States', N'Antonio Bermejo', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (48, N'Contoso Milwaukee No.2 Store', N'Milwaukee', N'Wisconsin', N'United States', N'Antonio Bermejo', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (49, N'Contoso Milwaukee No.3 Store', N'Milwaukee', N'Wisconsin', N'United States', N'Antonio Bermejo', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (72, N'Contoso Minden Store', N'Minden', N'Texas', N'United States', N'Laurent Bonnet', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (142, N'Contoso Montclair Store', N'Montclair ', N'New Jersey', N'United States', N'John Rodman', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (287, N'Contoso Montreal No.1 Store', N'Montreal', N'Quebec', N'Canada', N'Lorrin Smith-Bates', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (288, N'Contoso Montreal No.2 Store', N'Montreal', N'Quebec', N'Canada', N'Lorrin Smith-Bates', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (144, N'Contoso Morristown Store', N'Morristown ', N'New Jersey', N'United States', N'Don Roessler', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (165, N'Contoso Nantucket Store', N'Nantucket', N'Massachusetts', N'United States', N'Mark Sargent', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (149, N'Contoso New Bedford Store', N'New Bedford', N'Massachusetts', N'United States', N'Daniel Roth', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (139, N'Contoso New Brunswick Store', N'New Brunswick ', N'New Jersey', N'United States', N'Jeff Chia', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (24, N'Contoso New Castle Store', N'New Castle', N'Colorado', N'United States', N'Mrina Natarajan', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (177, N'Contoso New Haven Store', N'New Haven ', N'Connecticut', N'United States', N'Boris Scholl', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (179, N'Contoso New London Store', N'New London', N'Connecticut', N'United States', N'Andreas Schou', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (115, N'Contoso New York No.1 Store', N'New York', N'New York', N'United States', N'Jason Carlson', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (117, N'Contoso New York No.2 Store', N'New York', N'New York', N'United States', N'Jason Carlson', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (130, N'Contoso Newark No.1 Store', N'Newark', N'New Jersey', N'United States', N'Greg Chapman', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (131, N'Contoso Newark No.2 Store', N'Newark', N'New Jersey', N'United States', N'Greg Chapman', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (180, N'Contoso Norfolk Store', N'Norfolk', N'Virginia', N'United States', N'Axel Delgado', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (12, N'Contoso North Bend Store', N'North Bend', N'Washington', N'United States', N'Chris Ashton', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (200, N'Contoso Catalog Store', N'North Harford', N'Maryland', N'United States', N'Jan Dryml', N'Catalog')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (160, N'Contoso Northampton Store', N'Northampton', N'Massachusetts', N'United States', N'Ioan Crisiarcu', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (175, N'Contoso Old Saybrook Store', N'Old Saybrook', N'Connecticut', N'United States', N'Rainer Schiller', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (77, N'Contoso Orange Store', N'Orange', N'Texas', N'United States', N'Tude Palma', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (61, N'Contoso Oren Store', N'Oren', N'Wisconsin', N'United States', N'Rex Bloesser', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (110, N'Contoso Orlando Store', N'Orlando', N'Florida', N'United States', N'Griry Pogulsky', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (170, N'Contoso Orono Store', N'Orono', N'Maine', N'United States', N'Mike Danseglio', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (45, N'Contoso Oshkosh Store', N'Oshkosh', N'Wisconsin', N'United States', N'John Yokim', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (122, N'Contoso Oswe Store', N'Oswe', N'New York', N'United States', N'Giorgio Cavaglieri', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (282, N'Contoso Ottawa No.1 Store', N'Ottawa', N'Ontario', N'Canada', N'Brian Smith', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (283, N'Contoso Ottawa No.2 Store', N'Ottawa', N'Ontario', N'Canada', N'Brian Smith', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (41, N'Contoso Parker Store', N'Parker', N'Colorado', N'United States', N'Siri Velauthapillai', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (196, N'Contoso Parkville Store', N'Parkville', N'Maryland', N'United States', N'Egil Skjold', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (83, N'Contoso Pasadena Store', N'Pasadena', N'Texas', N'United States', N'Alan Brewer', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (136, N'Contoso Passaic Store', N'Passaic ', N'New Jersey', N'United States', N'Wendy Richardson', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (133, N'Contoso Paterson Store', N'Paterson', N'New Jersey', N'United States', N'Neil Charney', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (162, N'Contoso Pittsfield Store', N'Pittsfield', N'Massachusetts', N'United States', N'Scott Culp', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (100, N'Contoso Plano Store', N'Plano', N'Texas', N'United States', N'Michal Piaseczny', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (120, N'Contoso Plattsburgh Store', N'Plattsburgh', N'New York', N'United States', N'Gitte Casparij', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (127, N'Contoso Poestenkill Store', N'Poestenkill', N'New York', N'United States', N'Sean Chai', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (57, N'Contoso Port Washington Store', N'Port Washington', N'Wisconsin', N'United States', N'Jimmy Bischoff', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (164, N'Contoso Provincetown Store', N'Provincetown', N'Massachusetts', N'United States', N'Pawel Czernek', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (195, N'Contoso Queen Anne''s County Store', N'Queen Anne''s County', N'Maryland', N'United States', N'Blaine Dockter', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (125, N'Contoso Queens Store', N'Queens', N'New York', N'United States', N'Luisa Cazzaniga', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (154, N'Contoso Quincy Store', N'Quincy', N'Massachusetts', N'United States', N'Jim Corbin', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (51, N'Contoso Racine No.1 Store', N'Racine', N'Wisconsin', N'United States', N'Corinna Bolender', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (65, N'Contoso Racine No.2 Store', N'Racine', N'Wisconsin', N'United States', N'Corinna Bolender', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (96, N'Contoso Richardson Store', N'Richardson', N'Texas', N'United States', N'Palle Petersen', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (194, N'Contoso Ridgely Store', N'Ridgely', N'Maryland', N'United States', N'Bonnie Skelly', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (185, N'Contoso Roanoke Store', N'Roanoke', N'Virginia', N'United States', N'Molly Dempsey', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (116, N'Contoso Rochester No.1 Store', N'Rochester', N'New York', N'United States', N'Chris Preston', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (124, N'Contoso Rochester No.2 Store', N'Rochester', N'New York', N'United States', N'Chris Preston', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (89, N'Contoso Round Rock Store', N'Round Rock', N'Texas', N'United States', N'Robert Brown', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (71, N'Contoso Russellville Store', N'Russellville', N'Texas', N'United States', N'Jerry Orman', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (87, N'Contoso San Antonio Store', N'San Antonio', N'Texas', N'United States', N'Allison Brown', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (107, N'Contoso Sebring Store', N'Sebring', N'Florida', N'United States', N'Maria Cameron', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (29, N'Contoso Sedalia Store', N'Sedalia', N'Colorado', N'United States', N'Shai Bassli', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (58, N'Contoso Sheboygan Store', N'Sheboygan', N'Wisconsin', N'United States', N'Michael Neipper', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (73, N'Contoso Shreveport Store', N'Shreveport', N'Texas', N'United States', N'Danni Ortman', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (13, N'Contoso Snoqualmie Store', N'Snoqualmie', N'Washington', N'United States', N'Michael Vanderhyde', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (157, N'Contoso Somerville Store', N'Somerville', N'Massachusetts', N'United States', N'Sharon Salavaria', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (171, N'Contoso South Portland Store', N'South Portland', N'Maine', N'United States', N'Rimvydas Saulis', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (85, N'Contoso Spring Store', N'Spring', N'Texas', N'United States', N'Nick Brigandi', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (62, N'Contoso Stoughton Store', N'Stoughton', N'Wisconsin', N'United States', N'Aaron Nicholls', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (8, N'Contoso Sunnyside Store', N'Sunnyside', N'Washington', N'United States', N'Ties Arts', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (118, N'Contoso Syracuse Store', N'Syracuse', N'New York', N'United States', N'Fernando Caro', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (104, N'Contoso Tallahassee No.1 Store', N'Tallahassee', N'Florida', N'United States', N'Iulian Calinov', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (105, N'Contoso Tallahassee No.2 Store', N'Tallahassee', N'Florida', N'United States', N'Iulian Calinov', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (111, N'Contoso Tampa Store', N'Tampa', N'Florida', N'United States', N'Paul Cannon', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (82, N'Contoso Texas City Store', N'Texas City', N'Texas', N'United States', N'Rajesh Patel', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (38, N'Contoso Thornton Store', N'Thornton', N'Colorado', N'United States', N'Ann Beebe', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (9, N'Contoso Toppenish Store', N'Toppenish', N'Washington', N'United States', N'Daniel Taylor', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (284, N'Contoso Toronto No.1 Store', N'Toronto', N'Ontario', N'Canada', N'Bernard Duerr', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (285, N'Contoso Toronto No.2 Store', N'Toronto', N'Ontario', N'Canada', N'Bernard Duerr', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (286, N'Contoso Toronto No.3 Store', N'Toronto', N'Ontario', N'Canada', N'Bernard Duerr', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (128, N'Contoso Trenton No.1 Store', N'Trenton', N'New Jersey', N'United States', N'Enoch Remick', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (129, N'Contoso Trenton No.2 Store', N'Trenton', N'New Jersey', N'United States', N'Enoch Remick', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (18, N'Contoso Veradale Store', N'Veradale', N'Washington', N'United States', N'Pieter Wycoff', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (138, N'Contoso Vineland Store', N'Vineland', N'New Jersey', N'United States', N'Anders Riis', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (181, N'Contoso Virginia Beach Store', N'Virginia Beach', N'Virginia', N'United States', N'Miguel Severino', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (10, N'Contoso Wapato Store', N'Wapato', N'Washington', N'United States', N'Ronen Ashkenazi', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (174, N'Contoso Waterbury Store', N'Waterbury', N'Connecticut', N'United States', N'Andrew Davis', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (50, N'Contoso Waukesha No.1 Store', N'Waukesha', N'Wisconsin', N'United States', N'Robert Zare', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (54, N'Contoso Waukesha No.2 Store', N'Waukesha', N'Wisconsin', N'United States', N'Robert Zare', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (21, N'Contoso Wheat Ridge Store', N'Wheat Ridge', N'Colorado', N'United States', N'Oliver Szimmetat', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (182, N'Contoso Winchester Store', N'Winchester', N'Virginia', N'United States', N'Luca Dellamore', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (147, N'Contoso Worcester No.1 Store', N'Worcester', N'Massachusetts', N'United States', N'Izak Cohen', N'Store')

; INSERT DimStores (StoreID, StoreName, CityName, StateProvinceName, RegionCountryName, StoreManager, StoreType) VALUES (148, N'Contoso Worcester No.2 Store', N'Worcester', N'Massachusetts', N'United States', N'Izak Cohen', N'Store');

#Combining all tables together for PowerBI
/*SELECT * FROM DIMDATES;
SELECT * FROM DIMPRODUCTS;
SELECT * FROM DIMSTORES;
SELECT * FROM FACTSTORE; */
SELECT F.*, 
DD.WEEKDAYNAME, 
DD.EUROPESEASON, 
DD.NORTHAMERICASEASON, 
DD.ASIASEASON, 
PRODUCTNAME, 
PRODUCTDESCRIPTION, 
PRODUCTCATERYNAME, 
PRODUCTSUBCATERYNAME, 
MANUFACTURER,
STORENAME,
CITYNAME,
STATEPROVINCENAME,
REGIONCOUNTRYNAME,
STOREMANAGER,
STORETYPE
FROM FACTSTORE AS F
LEFT JOIN DIMDATES AS DD ON DD.FULLDATELABEL = F.DATEID
LEFT JOIN DIMPRODUCTS AS DP ON DP.PRODUCTID = F.PRODUCTID
LEFT JOIN DIMSTORES AS DS ON DS.STOREID = F.STOREID;
