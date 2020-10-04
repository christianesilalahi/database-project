USE RALaundry

INSERT INTO PurchaseTransaction VALUES
	('PU016', 'VE003','MA004','ST001','2019-05-27', 3),
	('PU017', 'VE004','MA006','ST009','2019-05-28', 2),
	('PU018', 'VE005','MA007','ST010','2019-05-29', 6)

INSERT INTO DetailPurchase VALUES
	('PU016', 'MA004'),
	('PU017', 'MA006'),
	('PU018', 'MA007')

INSERT INTO ServiceTransaction VALUES
	('SR016', 'CU004', 'ST007',	'CL002', '2019-09-24', 'Laundry Service',50000),
	('SR017', 'CU008', 'ST006',	'CL001', '2019-09-25', 'Dry Cleaning Service',67000),
	('SR018', 'CU006', 'ST002',	'CL006', '2019-09-26', 'Ironing Service',80000)

INSERT INTO DetailService VALUES
	('SR016', 'CL002'),
	('SR017', 'CL001'),
	('SR018', 'CL006')