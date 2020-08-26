CREATE TABLE "Employees" ("FullName" TEXT, "Salary "
 INT, "JobPosition" TEXT, "PhoneExtension" INT, "IsPartTime" BOOLEAN )


INSERT INTO "Employees" ("FullName","Salary ","JobPo
 sition","PhoneExtension","IsPartTime") VALUES ('Isaac Rendon', 1000, 'CEO', 1234,
  'False')
INSERT INTO "Employees" ("FullName","Salary ","JobPo
 sition","PhoneExtension","IsPartTime") VALUES ('Michael Rushing', 2, 'Cook',
 4444, 'True')
INSERT INTO "Employees" ("FullName","Salary ","JobPo
 sition","PhoneExtension","IsPartTime") VALUES ('Lazy Larry', 300, 'Manager',
 5678, 'False');

SELECT "FullName", "PhoneExtension" FROM "Employees"
 WHERE "IsPartTime" = 'False';

 INSERT INTO "Employees" ("FullName","Salary ","JobPo
 sition","PhoneExtension","IsPartTime") VALUES ('John Smith', 450,
 'software developer', 0987, 'True');

 UPDATE "Employees" SET "Salary " = 500 WHERE
 "JobPosition" = 'Cook';

 DELETE FROM "Employees" WHERE
 "FullName" = 'Lazy Larry';

  ALTER TABLE "Employees" ADD COLUMN "ParkingSpot"
 VARCHAR(10);