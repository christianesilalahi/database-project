--1
SELECT c.CustomerID, CustomerName, SUM(ServicePrice) AS TotalServicePrice
FROM Customer c JOIN ServiceTransaction st on c.CustomerID = st.CustomerID
WHERE c.CustomerGender = 'Male' AND MONTH(st.ServiceDate) = 7
GROUP BY c.CustomerID, c.CustomerName

--2
SELECT StaffName, PurchaseDate, COUNT(pt.PurchaseTransactionID) AS [Total Transaction]
FROM Staff s JOIN PurchaseTransaction pt ON s.StaffID = pt.StaffID 
WHERE s.StaffName = '%o%' AND  COUNT(pt.PurchaseTransactionID) > 1

--3
SELECT VendorName, PurchaseDate, COUNT(PurchaseTransactionID) AS [Total Transaction], SUM(Quantity* MaterialPrice) AS [Total Purchase Price]
FROM Vendor V JOIN PurchaseTransaction PT  ON V.VendorID = PT.VendorID JOIN Material M ON PT.MaterialID = M.MaterialID
WHERE v.VendorName = 'PT%' AND DATEPART(DAY,PurchaseDate)%2=1

--4
SELECT StaffName, MaterialName, COUNT(PurchaseTransactionID) AS [Total Transaction], SUM(Quantity) AS [Total Quantity]
FROM Staff, Material, PurchaseTransaction, ServiceTransaction
WHERE MONTH(ServiceDate) = 7 AND SUM(Quantity) < 9

--5
SELECT [MaterialId] = REPLACE(M.MaterialID, 'MA', 'Material '), [MaterialName] = UPPER(MaterialName)
	, PurchaseDate, Quantity
FROM PurchaseTransaction T JOIN Material M  ON T.MaterialID = M.MaterialID
WHERE M.MaterialID IN(SELECT MaterialName
			FROM Material M
			WHERE T.MaterialID = M.MaterialID
			AND MaterialType = 'Supplies' AND MaterialName IN (SELECT PurchaseDate, Quantity
			FROM PurchaseTransaction PT
			WHERE M.MaterialID = PT.MaterialID
			AND Quantity > AVG(Quantity))
			ORDER BY MaterialID ASC
)
																			
--6
SELECT s.StaffName, c.CustomerName, [ServiceDate] = CONVERT(VARCHAR, st.ServiceDate, 106)
FROM Staff s JOIN ServiceTransaction st ON s.StaffID = st.StaffID
JOIN Customer c ON st.CustomerID = c.CustomerID,
(
	SELECT AVG(StaffSalary) AS[rata]
	FROM Staff
)rataSalary
WHERE s.StaffSalary > rataSalary.[rata] AND CHARINDEX(' ', s.StaffName) = 0

--7
SELECT c.ClothesName, [Total Transaction] = CAST(COUNT(st.ServiceTransactionID) as varchar) + ' transaction',
[ServiceType] = LEFT(st.ServiceType, CHARINDEX(' ', st.ServiceType)), st.ServicePrice
FROM Clothes c JOIN DetailService ds ON c.ClothesID = ds.ClothesID
JOIN ServiceTransaction st ON st.ServiceTransactionID = ds.ServiceTransactionID,
(
	SELECT AVG(ServicePrice) AS [Rata]
	FROM ServiceTransaction
)rataService
WHERE c.ClothesType = 'Cotton' AND st.ServicePrice < rataService.Rata
GROUP BY c.ClothesName, st.ServiceType, st.ServicePrice


--8
SELECT StaffName, VendorName, VendorPhoneNumber, COUNT(pt.PurchaseTransactionID) AS TotalTransaction
FROM Staff s JOIN PurchaseTransaction pt ON s.StaffID=pt.StaffID JOIN Vendor v ON pt.VendorID=v.VendorID
WHERE Quantity > AVG(Quantity) AND CHARINDEX(' ',s.StaffName) > 0

--9
CREATE VIEW ViewMaterialPurchase
AS
SELECT MaterialName, MaterialPrice, COUNT(PurchaseTransactionID) AS TotalTransaction , SUM(Quantity*MaterialPrice) AS TotalPrice
FROM Material m JOIN PurchaseTransaction pt ON m.MaterialID=pt.MaterialID 
WHERE MaterialType ='Supplies' AND COUNT(PurchaseTransactionID) > 2

--10
CREATE VIEW ViewMaleCustomerTransaction AS
SELECT CustomerName, ClothesName, COUNT(st.ServiceTransactionID) AS TotalTransaction, SUM(st.ServicePrice) AS TotalPrice
FROM Customer c JOIN ServiceTransaction st ON c.CustomerID = st.CustomerID JOIN Clothes cl ON cl.ClothesID=st.ClothesID JOIN ServiceTransaction t ON t.ServiceTransactionID = st.ServiceTransactionID 
WHERE c.CustomerGender = 'Male' AND (cl.ClothesType = 'WOOL' OR cl.ClothesType = 'Linen')
