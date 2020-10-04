INSERT INTO Staff VALUES
('ST001', 'Naxwell Fladico', 'Jalan Chatime No. 1', 'Male', 1755000),
('ST002', 'Karen Huerta',	'Jalan Topi No. 2', 'Female', 1855000),
('ST003', 'Irving Casey', 'Jalan Mousepad No. 3', 'Male', 2000000),
('ST004', 'Herminia Singh', 'Jalan Keyboard No. 4', 'Female', 3000000),
('ST005', 'Elisia Nielsen', 'Jalan Listrik No. 5', 'Female', 3000000),
('ST006', 'Sal Oconnor', 'Jalan Apajaa No. 6', 'Male', 2540000),
('ST007', 'Mikel Gamble', 'Jalan Botol No. 7', 'Male', 2453200),
('ST008', 'Eliseo Moyer', 'Jalan Air No. 8', 'Male', 1600980),
('ST009', 'Desiree Mitchell', 'Jalan Api No. 9', 'Female', 2320934),
('ST010', 'Sherri Kline', 'Jalan Udara No. 10', 'Female', 2500000)

INSERT INTO Customer VALUES
('CU001', 'Sky Blue','Jalan Kelapa No. 1','Male','1998-03-12'),
('CU002', 'Jenifer Lopaz','Jalan Durian No. 2','Female','2003-07-27'),
('CU003', 'Edho Suiy','Jalan Jeruk No. 3','Male','1973-07-12'),
('CU004', 'Sloman Papa','Jalan Apel No. 4','Male','1990-10-04'),
('CU005', 'Cristiano Ronaldi','Jalan Semangka No. 5','Male','2001-03-19'),
('CU006', 'Katy Peray','Jalan Naga No. 6','Female','2001-02-19'),
('CU007', 'Insigne','Jalan Pisang No. 7','Male','2003-05-09'),
('CU008', 'Buffon Gianluigi','Jalan Blueberry No. 8','Male','1990-01-01'),
('CU009', 'Christine Tine','Jalan Strawberry No. 9','Female','2005-03-29'),
('CU010', 'Gaby Byirile','Jalan Raspberry No. 10','Female','1992-10-11')

INSERT INTO Vendor VALUES
('VE001', 'Dewey Perry', 'Jalan Merah No. 1', '085710203223'),
('VE002', 'Dexter Carson', 'Jalan Kuning No. 2', '083728495028'),
('VE003', 'Esperanza Watts', 'Jalan Hijau No. 3', '087364758293'),
('VE004', 'Alfonso Landry', 'Jalan Biru No. 4', '089029385644'),
('VE005', 'Sallie Oneill', 'Jalan Ungu No. 5', '089393938475'),	
('VE006', 'Gaston Ferrell', 'Jalan Kelabu No. 6', '0880938475777'),
('VE007', 'Wes Pratt', 'Jalan Cokelat No. 7', '088938475664'),
('VE008', 'Areiana Granday', 'Jalan Hitam No. 8', '089385776576'),
('VE009', 'Adam Livne', 'Jalan Pelangi No. 9', '0892103945874'),
('VE010', 'Mac Bialey', 'Jalan Indah No. 10', '0893845647584')

INSERT INTO Material VALUES
('MA001','Batiste','Equipment',100000),
('MA002','Brocade','Supplies',150000),
('MA003','Corduroy','Equipment',200000),
('MA004','Velvet','Supplies',175000),
('MA005','Chiffon','Equipment',232000),
('MA006','Crepe','Supplies',75000),
('MA007','Denim','Equipment',80000),
('MA008','Interlock','Equipment',142000),
('MA009','Jersey','Supplies',330000),
('MA010','Voile','Equipment',103000)

INSERT INTO Clothes VALUES
('CL001','Zahra','Linen'),
('CL002','Gucci','Wool'),
('CL003','HUF','Linen'),
('CL004','Katak','Polyester'),
('CL005','Bear','Linen'),
('CL006','LV','Wool'),
('CL007','Crocs','Wool'),
('CL008','Polo','Viscose'),
('CL009','Oscar','Linen'),
('CL010','Nevada','Wool')

INSERT INTO PurchaseTransaction VALUES
('PU001', 'VE001','MA003','ST001','2019-01-13', 2),
('PU002', 'VE003','MA004','ST002','2019-02-02', 2),
('PU003', 'VE005','MA006','ST003','2019-02-22', 2),
('PU004', 'VE007','MA007','ST005','2019-03-01', 3),
('PU005', 'VE009','MA009','ST006','2019-03-12', 3),
('PU006', 'VE009','MA008','ST007','2019-03-23', 4),
('PU007', 'VE008','MA002','ST009','2019-04-19', 1),
('PU008', 'VE006','MA001','ST010','2019-04-20', 5),
('PU009', 'VE004','MA003','ST002','2019-04-11', 6),
('PU010', 'VE002','MA005','ST003','2019-04-13', 2),
('PU011', 'VE002','MA010','ST004','2019-05-23', 1),
('PU012', 'VE003','MA010','ST006','2019-05-24', 7),
('PU013', 'VE005','MA002','ST007','2019-05-25', 1),
('PU014', 'VE007','MA001','ST010','2019-05-26', 2),
('PU015', 'VE009','MA009','ST001','2019-05-27', 4)

INSERT INTO DetailPurchase VALUES
('PU003', 'MA006'), ('PU003', 'MA006'), ('PU010', 'MA003'), 
('PU007', 'MA002'), ('PU009', 'MA010'), ('PU011', 'MA009'), 
('PU015', 'MA009'), ('PU002', 'MA003'), ('PU004', 'MA001'),
('PU006', 'MA008'), ('PU008', 'MA003'), ('PU010', 'MA004'),
('PU012', 'MA010'), ('PU014', 'MA006'), ('PU013', 'MA007'),
('PU014', 'MA001'), ('PU011', 'MA010'), ('PU010', 'MA009'),
('PU009', 'MA003'), ('PU008', 'MA006'), ('PU007', 'MA005'),
('PU006', 'MA008'), ('PU005', 'MA003'), ('PU011', 'MA010'), 
('PU001', 'MA002')

INSERT INTO ServiceTransaction VALUES
('SR001', 'CU001', 'ST002',	'CL001', '2019-01-01', 'Laundry service', 120000),
('SR002', 'CU003', 'ST004',	'CL002', '2019-02-10', 'Dry Cleaning Service', 254000),
('SR003', 'CU005', 'ST006',	'CL003', '2019-02-20', 'Ironing Service', 220000),
('SR004', 'CU007', 'ST008',	'CL004', '2019-03-10', 'Dry Cleaning Service', 233000),
('SR005', 'CU009', 'ST010',	'CL005', '2019-03-12', 'Ironing Service', 66000),
('SR006', 'CU002', 'ST001',	'CL006', '2019-03-14', 'Laundry service', 134000),
('SR007', 'CU004', 'ST003',	'CL007', '2019-03-21', 'Dry Cleaning Service', 255000),
('SR008', 'CU006', 'ST005',	'CL008', '2019-03-29', 'Laundry service', 43000),
('SR009', 'CU002', 'ST007',	'CL009', '2019-04-22', 'Dry Cleaning Service', 230000),
('SR010', 'CU004', 'ST009',	'CL010', '2019-04-23', 'Ironing Service', 120000),
('SR011', 'CU006', 'ST002',	'CL010', '2019-04-24', 'Ironing Service', 125000),
('SR012', 'CU008', 'ST004',	'CL009', '2019-05-02', 'Dry Cleaning Service', 100000),
('SR013', 'CU010', 'ST006',	'CL008', '2019-06-01', 'Ironing Service', 200000),
('SR014', 'CU010', 'ST008',	'CL006', '2019-07-19', 'Dry Cleaning Service', 142000),
('SR015', 'CU003', 'ST010',	'CL003', '2019-09-22', 'Dry Cleaning Service',50000)

INSERT INTO DetailService VALUES
('SR001', 'CL002'), ('SR003', 'CL004'), ('SR005', 'CL006'),
('SR007', 'CL008'), ('SR009', 'CL010'), ('SR011', 'CL009'),
('SR013', 'CL007'), ('SR015', 'CL005'), ('SR002', 'CL003'),
('SR004', 'CL001'), ('SR006', 'CL002'), ('SR008', 'CL003'),
('SR010', 'CL004'), ('SR012', 'CL005'), ('SR014', 'CL006'),
('SR013', 'CL008'), ('SR012', 'CL008'), ('SR011', 'CL010'),
('SR010', 'CL009'), ('SR009', 'CL008'), ('SR008', 'CL006'),
('SR007', 'CL005'), ('SR006', 'CL004'), ('SR005', 'CL003'),
('SR004', 'CL002')