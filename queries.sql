CREATE TABLE "Employees" ("FullName" TEXT, "Salary "
INT, "JobPosition" TEXT, "PhoneExtension" INT, "IsPartTime" BOOLEAN )

INSERT INTO "Employees" ("FullName","Salary ","JobPo
sition","PhoneExtension","IsPartTime") VALUES ('Isaac Rendon', 1000, 'CEO', 1234,
'False')

INSERT INTO "Employees" ("FullName","Salary ","JobPosition","PhoneExtension","IsPartTime")
VALUES ('Michael Rushing', 2, 'Cook', 4444, 'True')

INSERT INTO "Employees" ("FullName","Salary ","JobPosition","PhoneExtension","IsPartTime") 
VALUES ('Lazy Larry', 300, 'Manager',5678, 'False');

SELECT "FullName", "PhoneExtension" FROM "Employees"
WHERE "IsPartTime" = 'False';

INSERT INTO "Employees" ("FullName","Salary ","JobPosition","PhoneExtension","IsPartTime")
VALUES ('John Smith', 450,'software developer', 0987, 'True');

UPDATE "Employees" SET "Salary " = 500 WHERE
"JobPosition" = 'Cook';

DELETE FROM "Employees" WHERE
"FullName" = 'Lazy Larry';

ALTER TABLE "Employees" ADD COLUMN "ParkingSpot"
VARCHAR(10);

CREATE TABLE "Departments" ( "Id" SERIAL PRIMARY KEY,"DepartmentName" TEXT,"Building" TEXT);

ALTER TABLE "Employees" ADD COLUMN "DepartmentId" INTEGER NULL REFERENCES "Departments" ("Id");
 
CREATE TABLE "Products" ("Id" SERIAL PRIMARY KEY,"Price" FLOAT,"Name" TEXT,
"Description" TEXT,"QuantityInStock" INT);

CREATE TABLE "Orders" ("Id" SERIAL PRIMARY KEY,"OrderNumber" TEXT, "DatePlaced" TIMESTAMP, "Email" TEXT);

CREATE TABLE "ProductOrders" ( "OrderId" INTEGER NULL REFERENCES "Orders" ("Id"), "ProductId" INTEGER NULL REFERENCES "Products" ("Id"),
"OrderQuantity" INT);
 
INSERT INTO "Departments" ("DepartmentName","Building")
VALUES ('evelopment','Main');
 
INSERT INTO "Departments" ("DepartmentName",“"Building")
VALUES ('Marketing','North');

INSERT INTO "Employees" ("FullName","Salary","JobPosition","PhoneExtension","IsPartTime","DepartmentId")
VALUES ('Tim Smith',40000,'Programmer',123,'false',1);

INSERT INTO "Employees" ("FullName","Salary","JobPosition","PhoneExtension","IsPartTime","DepartmentId")
VALUES ('Barbara Ramsey',80000,'Manager',234,'false',1);

INSERT INTO "Employees" ("FullName","Salary","JobPosition","PhoneExtension","IsPartTime","DepartmentId")
VALUES ('Tom Jones',32000,'Admin',456,'true',2);

INSERT INTO "Products" ("Price","Name","Description","QuantityInStock")
VALUES (12.45,'Widget','The Original Widget',100);

INSERT INTO "Products" ("Price","Name","Description","QuantityInStock")
VALUES (99.99,'Flowbee','Perfect for haircuts',3);

INSERT INTO "Orders" ("OrderNumber","DatePlaced","Email")
VALUES ('X529','2020-01-01 16:55:00','person@exmaple.com');

INSERT INTO "ProductOrders" ("OrderId","ProductId","OrderQuantity")
VALUES (1,1,3);

INSERT INTO "ProductOrders" ("OrderId","ProductId","OrderQuantity")
VALUES (1,2,2);

SELECT "FullName" FROM "Employees" WHERE "DepartmentId" = 1;

SELECT "PhoneExtension" FROM "Employees" WHERE "DepartmentId" = 1;

SELECT "OrderId" FROM "ProductOrders" WHERE "ProductId" = 2;

DELETE FROM "ProductOrders" WHERE "ProductId" = 2;