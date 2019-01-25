USE [ContosoRetailDW]
GO

CREATE VIEW [dbo].[vDimProduct]
AS
SELECT	[ProductKey] = [ProductKey] +0 
      ,	p.[ProductLabel]
      ,	p.[ProductName]
      ,	p.[ProductDescription]
      ,	p.[Manufacturer]
      ,	p.[BrandName]
      ,	p.[ClassID]
      ,	p.[ClassName]
      ,	p.[StyleID]
      ,	p.[StyleName]
      ,	p.[ColorID]
      ,	p.[ColorName]
	  ,p.[StockTypeID]
	  ,p.[StockTypeName]
	  ,p.[UnitOfMeasureID]
	  ,p.[UnitOfMeasureName]
	  , s.[ProductSubcategoryKey]
      ,	s.[ProductSubcategoryLabel]
      ,	s.[ProductSubcategoryName]
      ,	s.[ProductSubcategoryDescription]

	  , c. [ProductCategoryKey]
      ,	c.[ProductCategoryLabel]
      ,	c.[ProductCategoryName]
      ,	c.[ProductCategoryDescription]
FROM	
			[dbo].[DimProduct]				AS p
INNER JOIN	[dbo].[DimProductSubcategory]	AS s	
	ON p.ProductSubcategoryKey = s.ProductSubcategoryKey
INNER JOIN	[dbo].[DimProductCategory]		AS c	
	ON s.ProductCategoryKey = c.ProductCategoryKey
GO

CREATE VIEW [dbo].[vDimCurrency]
AS
SELECT        CurrencyKey, CurrencyName, CurrencyDescription
FROM            dbo.DimCurrency
GO