USE [ContosoRetailDW]
GO

--	https://www.inflowinventory.com/support/article/61716544/whats-the-difference-between-quantity-on-handquantity-available-etc/
------------------------------------------

--	Quantity on Order
------------------------------------------
--	This number is how many you’ve ordered from your supplier/vendor but haven’t received. 
--	This also includes quantities of items being made in a work order.

--	Quantity On Hand
------------------------------------------
--	total number of stock-keeping units (SKUs) that are physically located in the warehouse location at the current time. 
--	This includes items that are already allocated to fulfilling production needs or sales orders. 
--	So, this number may differ from the quantity available total.

--	[SafetyStockQuantity]
------------------------------------------
--	Safety stock is an additional quantity of an item held in the inventory in order to reduce the risk that the item will be out of stock, 
--	safety stock act as a buffer stock in case the sales are greater than planned and/or the supplier is unable to deliver the additional 
--	units at the expected time.

CREATE VIEW [vFactInventory]
AS
	SELECT	
		[InventoryKey]
	,	[DateKey]
	,	[StoreKey]
	,	[ProductKey]
	,	[CurrencyKey]
	,	[OnHandQuantity]
	,	[OnOrderQuantity]
	,	[SafetyStockQuantity]
	,	[UnitCost]
	,	[DaysInStock]
	,	[MinDayInStock]
	,	[MaxDayInStock]
	FROM [dbo].[FactInventory]
