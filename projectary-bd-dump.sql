/*
Script generated on mar-24-2017 10:58:14 PM
Database: projectary
Schema: <All Schemas>
Objects: TABLE, PROCEDURE
*/
ALTER TABLE "users"
	DROP FOREIGN KEY "users_entity_fk"
GO

ALTER TABLE "teacher"
	DROP FOREIGN KEY "teacher_fk"
GO

ALTER TABLE "student"
	DROP FOREIGN KEY "student_id_fk"
GO

ALTER TABLE "projectweb"
	DROP FOREIGN KEY "projectweb_project_fk"
GO

ALTER TABLE "projectweb"
	DROP FOREIGN KEY "projectweb_entity_fk"
GO

ALTER TABLE "projectrevlogdoc"
	DROP FOREIGN KEY "projectrevlogdoc_prjrevlog_fk"
GO

ALTER TABLE "projectrevlogdoc"
	DROP FOREIGN KEY "projectrevlogdoc_entity_fk"
GO

ALTER TABLE "projectrevlog"
	DROP FOREIGN KEY "projectlogs_projrev_fk"
GO

ALTER TABLE "projectrevlog"
	DROP FOREIGN KEY "projectlogs_entity_fk"
GO

ALTER TABLE "projectrevgroup"
	DROP FOREIGN KEY "projectreventity_projrev_fk"
GO

ALTER TABLE "projectrevgroup"
	DROP FOREIGN KEY "projectreventity_groupentity_fk"
GO

ALTER TABLE "projectrevgroup"
	DROP FOREIGN KEY "projectreventity_createdby_fk"
GO

ALTER TABLE "projectrevgroup"
	DROP FOREIGN KEY "projectreventity_approvedby_fk"
GO

ALTER TABLE "projectrev"
	DROP FOREIGN KEY "projectrev_proj_fk"
GO

ALTER TABLE "projectrev"
	DROP FOREIGN KEY "projectrev_entity_fk"
GO

ALTER TABLE "project"
	DROP FOREIGN KEY "project_entity_fk"
GO

ALTER TABLE "project"
	DROP FOREIGN KEY "project_application_fk"
GO

ALTER TABLE "groupentity"
	DROP FOREIGN KEY "groupentity_function_fk"
GO

ALTER TABLE "groupentity"
	DROP FOREIGN KEY "groupentity_entity_fk"
GO

ALTER TABLE "groupentity"
	DROP FOREIGN KEY "groupentity_createdby_fk"
GO

ALTER TABLE "groupentity"
	DROP FOREIGN KEY "groupentity_approval_fk"
GO

ALTER TABLE "function"
	DROP FOREIGN KEY "function_entity_fk"
GO

ALTER TABLE "entitycontact"
	DROP FOREIGN KEY "entitycontact_entity_fk"
GO

ALTER TABLE "departamententity"
	DROP FOREIGN KEY "departamententity_entity_fk"
GO

ALTER TABLE "departamententity"
	DROP FOREIGN KEY "departamententity_dep_fk"
GO

ALTER TABLE "departament"
	DROP FOREIGN KEY "departament_school_fk"
GO

ALTER TABLE "courseentity"
	DROP FOREIGN KEY "courseentity_entity_fk"
GO

ALTER TABLE "courseentity"
	DROP FOREIGN KEY "courseentity_course_fk"
GO

ALTER TABLE "course"
	DROP FOREIGN KEY "course_school_fk"
GO

ALTER TABLE "applicationgroup"
	DROP FOREIGN KEY "applicationgroup_group_fk"
GO

ALTER TABLE "applicationgroup"
	DROP FOREIGN KEY "applicationgroup_application_fk"
GO

ALTER TABLE "applicationattribute"
	DROP FOREIGN KEY "applicationattribute_entity_fk"
GO

ALTER TABLE "applicationattribute"
	DROP FOREIGN KEY "applicationattribute_attribute_fk"
GO

ALTER TABLE "applicationattribute"
	DROP FOREIGN KEY "applicationattribute_application_fk"
GO

ALTER TABLE "application"
	DROP FOREIGN KEY "application_entity_fk"
GO

ALTER TABLE "admin"
	DROP FOREIGN KEY "admin_entity_fk"
GO

ALTER TABLE "admin"
	DROP FOREIGN KEY "admin_createdby_fk"
GO

ALTER TABLE "users"
	DROP INDEX "users_username_uindex"
GO

ALTER TABLE "teacher"
	DROP INDEX "teacher_teacherid_uindex"
GO

ALTER TABLE "student"
	DROP INDEX "student_studentid_uindex"
GO

ALTER TABLE "project"
	DROP INDEX "project_application_uindex"
GO

DROP INDEX "users_entity_fk" ON users
GO

DROP INDEX "projectweb_entity_fk" ON projectweb
GO

DROP INDEX "projectrevlogdoc_entity_fk" ON projectrevlogdoc
GO

DROP INDEX "projectrevlogdoc_prjrevlog_fk" ON projectrevlogdoc
GO

DROP INDEX "projectlogs_entity_fk" ON projectrevlog
GO

DROP INDEX "projectlogs_projrev_fk" ON projectrevlog
GO

DROP INDEX "projectreventity_approvedby_fk" ON projectrevgroup
GO

DROP INDEX "projectreventity_createdby_fk" ON projectrevgroup
GO

DROP INDEX "projectreventity_groupentity_fk" ON projectrevgroup
GO

DROP INDEX "projectrev_entity_fk" ON projectrev
GO

DROP INDEX "projectrev_proj_fk" ON projectrev
GO

DROP INDEX "project_entity_fk" ON project
GO

DROP INDEX "groupentity_approval_fk" ON groupentity
GO

DROP INDEX "groupentity_createdby_fk" ON groupentity
GO

DROP INDEX "groupentity_entity_fk" ON groupentity
GO

DROP INDEX "groupentity_function_fk" ON groupentity
GO

DROP INDEX "function_entity_fk" ON function
GO

DROP INDEX "departamententity_dep_fk" ON departamententity
GO

DROP INDEX "departament_school_fk" ON departament
GO

DROP INDEX "courseentity_entity_fk" ON courseentity
GO

DROP INDEX "course_school_fk" ON course
GO

DROP INDEX "applicationgroup_application_fk" ON applicationgroup
GO

DROP INDEX "applicationgroup_group_fk" ON applicationgroup
GO

DROP INDEX "applicationattribute_attribute_fk" ON applicationattribute
GO

DROP INDEX "applicationattribute_entity_fk" ON applicationattribute
GO

DROP INDEX "application_entity_fk" ON application
GO

DROP INDEX "admin_createdby_fk" ON admin
GO

DROP PROCEDURE "LoginChallenge"
GO

DROP PROCEDURE "ListEntities"
GO

DROP PROCEDURE "ListProjects"
GO

DROP PROCEDURE "IsAdmin"
GO

DROP PROCEDURE "InsertProjectWeb"
GO

DROP PROCEDURE "InsertNewUser"
GO

DROP PROCEDURE "InsertNewSchoolEntity"
GO

DROP PROCEDURE "InsertNewSchool"
GO

DROP PROCEDURE "InsertNewProjectRevisionLogDoc"
GO

DROP PROCEDURE "InsertNewProjectRevisionLog"
GO

DROP PROCEDURE "InsertNewProjectRevisionEntity"
GO

DROP PROCEDURE "InsertNewProjectRevision"
GO

DROP PROCEDURE "InsertNewProject"
GO

DROP PROCEDURE "InsertNewFunction"
GO

DROP PROCEDURE "InsertNewEntity"
GO

DROP PROCEDURE "InsertNewAtribute"
GO

DROP PROCEDURE "InsertNewApplicationAttribute"
GO

DROP PROCEDURE "InsertNewApplication"
GO

DROP PROCEDURE "InsertNewAdmin"
GO

DROP TABLE IF EXISTS "users"
GO

DROP TABLE IF EXISTS "teacher"
GO

DROP TABLE IF EXISTS "student"
GO

DROP TABLE IF EXISTS "school"
GO

DROP TABLE IF EXISTS "projectweb"
GO

DROP TABLE IF EXISTS "projectrevlogdoc"
GO

DROP TABLE IF EXISTS "projectrevlog"
GO

DROP TABLE IF EXISTS "projectrevgroup"
GO

DROP TABLE IF EXISTS "projectrev"
GO

DROP TABLE IF EXISTS "project"
GO

DROP TABLE IF EXISTS "groupentity"
GO

DROP TABLE IF EXISTS "function"
GO

DROP TABLE IF EXISTS "entitycontact"
GO

DROP TABLE IF EXISTS "entity"
GO

DROP TABLE IF EXISTS "departamententity"
GO

DROP TABLE IF EXISTS "departament"
GO

DROP TABLE IF EXISTS "courseentity"
GO

DROP TABLE IF EXISTS "course"
GO

DROP TABLE IF EXISTS "attribute"
GO

DROP TABLE IF EXISTS "applicationgroup"
GO

DROP TABLE IF EXISTS "applicationattribute"
GO

DROP TABLE IF EXISTS "application"
GO

DROP TABLE IF EXISTS "admin"
GO


CREATE TABLE "admin"  ( 
	"id"       	varchar(255) NOT NULL,
	"createdin"	timestamp NOT NULL,
	"updatedin"	timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
	"deletedin"	timestamp NULL,
	"createdby"	varchar(255) NULL,
	PRIMARY KEY("id")
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
GO

CREATE TABLE "application"  ( 
	"id"        	varchar(255) NOT NULL,
	"submitedby"	varchar(255) NOT NULL,
	"submitedin"	timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	"group"     	varchar(255) NULL,
	PRIMARY KEY("id")
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
GO

CREATE TABLE "applicationattribute"  ( 
	"application"	varchar(255) NOT NULL,
	"attribute"  	varchar(255) NOT NULL,
	"value"      	varchar(255) NOT NULL,
	"createdin"  	timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	"createdby"  	varchar(255) NOT NULL,
	PRIMARY KEY("application","attribute")
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
GO

CREATE TABLE "applicationgroup"  ( 
	"application"	varchar(255) NULL,
	"group"      	varchar(255) NULL 
	)
ENGINE = InnoDB
AUTO_INCREMENT = 0
GO

CREATE TABLE "attribute"  ( 
	"id"      	varchar(255) NOT NULL,
	"desc"    	varchar(255) NOT NULL,
	"datatype"	varchar(30) NOT NULL,
	PRIMARY KEY("id")
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
GO

CREATE TABLE "course"  ( 
	"id"    	varchar(255) NOT NULL,
	"desc"  	int(11) NOT NULL,
	"school"	varchar(255) NOT NULL,
	PRIMARY KEY("id")
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
GO

CREATE TABLE "courseentity"  ( 
	"course"   	varchar(255) NOT NULL,
	"entity"   	varchar(255) NOT NULL,
	"enryear"  	year(4) NOT NULL,
	"createdin"	timestamp NOT NULL,
	PRIMARY KEY("course","entity","enryear")
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
GO

CREATE TABLE "departament"  ( 
	"id"    	varchar(255) NOT NULL,
	"desc"  	varchar(255) NOT NULL,
	"school"	varchar(255) NOT NULL,
	PRIMARY KEY("id")
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
GO

CREATE TABLE "departamententity"  ( 
	"departament"	varchar(255) NOT NULL,
	"entity"     	varchar(255) NOT NULL,
	PRIMARY KEY("entity")
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
GO

CREATE TABLE "entity"  ( 
	"id"       	varchar(255) NOT NULL,
	"name"     	varchar(255) NULL,
	"createdin"	timestamp NOT NULL,
	PRIMARY KEY("id")
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
GO

CREATE TABLE "entitycontact"  ( 
	"entity" 	varchar(255) NOT NULL,
	"contact"	varchar(255) NOT NULL,
	PRIMARY KEY("entity","contact")
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
GO

CREATE TABLE "function"  ( 
	"id"       	varchar(255) NOT NULL,
	"desc"     	varchar(255) NULL,
	"createdin"	timestamp NOT NULL,
	"createdby"	varchar(255) NOT NULL,
	PRIMARY KEY("id")
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
GO

CREATE TABLE "groupentity"  ( 
	"id"        	varchar(255) NOT NULL,
	"entity"    	varchar(255) NOT NULL,
	"function"  	varchar(255) NOT NULL,
	"createdin" 	timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	"createdby" 	varchar(255) NOT NULL,
	"approvedby"	varchar(255) NULL,
	"approvedin"	timestamp NULL,
	PRIMARY KEY("id","entity","function")
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
GO

CREATE TABLE "project"  ( 
	"id"         	varchar(255) NOT NULL,
	"application"	varchar(255) NOT NULL,
	"approvedby" 	varchar(255) NOT NULL,
	"approvedin" 	timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY("id")
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
GO

CREATE TABLE "projectrev"  ( 
	"id"       	varchar(255) NOT NULL,
	"project"  	varchar(255) NOT NULL,
	"start"    	date NOT NULL,
	"end"      	date NOT NULL,
	"createdin"	timestamp NOT NULL,
	"createdby"	varchar(255) NOT NULL,
	PRIMARY KEY("id")
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
GO

CREATE TABLE "projectrevgroup"  ( 
	"projectrev" 	varchar(255) NOT NULL,
	"createdin"  	timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	"createdby"  	varchar(255) NOT NULL,
	"approvedby" 	varchar(255) NOT NULL,
	"approvedin" 	timestamp NULL,
	"groupentity"	varchar(255) NULL,
	PRIMARY KEY("projectrev")
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
GO

CREATE TABLE "projectrevlog"  ( 
	"id"       	varchar(255) NOT NULL,
	"project"  	varchar(255) NOT NULL,
	"createdin"	timestamp NOT NULL,
	"createdby"	varchar(255) NOT NULL,
	"desc"     	longtext NOT NULL,
	PRIMARY KEY("id")
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
GO

CREATE TABLE "projectrevlogdoc"  ( 
	"id"           	varchar(255) NOT NULL,
	"projectrevlog"	varchar(255) NOT NULL,
	"doc"          	longblob NULL,
	"url"          	longtext NULL,
	"createdin"    	timestamp NOT NULL,
	"createdby"    	varchar(255) NOT NULL,
	PRIMARY KEY("id")
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
GO

CREATE TABLE "projectweb"  ( 
	"id"       	varchar(255) NOT NULL,
	"createdin"	timestamp NOT NULL,
	"createdby"	varchar(255) NOT NULL,
	PRIMARY KEY("id")
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
GO

CREATE TABLE "school"  ( 
	"id"  	varchar(255) NOT NULL,
	"desc"	varchar(255) NULL,
	PRIMARY KEY("id")
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
GO

CREATE TABLE "student"  ( 
	"id"       	varchar(255) NOT NULL,
	"studentid"	varchar(255) NOT NULL,
	PRIMARY KEY("id")
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
GO

CREATE TABLE "teacher"  ( 
	"id"       	varchar(255) NOT NULL,
	"teacherid"	varchar(255) NOT NULL,
	PRIMARY KEY("id")
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
GO

CREATE TABLE "users"  ( 
	"id"       	varchar(255) NOT NULL,
	"username" 	varchar(255) NOT NULL,
	"password" 	varchar(255) NOT NULL,
	"email"    	varchar(255) NOT NULL,
	"createdin"	timestamp NOT NULL,
	"locked"   	tinyint(1) NULL DEFAULT '0',
	"active"   	tinyint(1) NULL DEFAULT '0',
	"entity"   	varchar(255) NULL,
	PRIMARY KEY("id")
)
ENGINE = InnoDB
AUTO_INCREMENT = 0
GO

CREATE PROCEDURE "InsertNewAdmin"  (IN `newadminentity` varchar(255), IN `entity` varchar(255))
	SQL SECURITY DEFINER
	NOT DETERMINISTIC
	CONTAINS SQL
BEGIN
 Insert INTO admin (ID,createdin,updatedin,createdby)VALUES (newadminentity,NOW(),NOW(),entity);
END
GO

CREATE PROCEDURE "InsertNewApplication"  (IN `entity` varchar(255))
	SQL SECURITY DEFINER
	NOT DETERMINISTIC
	CONTAINS SQL
BEGIN
 DECLARE UUID VARCHAR(255);
 SELECT UUID() INTO UUID;
  INSERT INTO application VALUES (UUID,entity,NOW());
END
GO

CREATE PROCEDURE "InsertNewApplicationAttribute"  (IN `application` varchar(255), IN `attribute` varchar(255), IN `value` varchar(255), IN `entity` varchar(255))
	SQL SECURITY DEFINER
	NOT DETERMINISTIC
	CONTAINS SQL
BEGIN
   INSERT INTO applicationattribute VALUES (application,attribute,value,NOW(),entity);
END
GO

CREATE PROCEDURE "InsertNewAtribute"  (IN `description` varchar(255), IN `datatype` varchar(255))
	SQL SECURITY DEFINER
	NOT DETERMINISTIC
	CONTAINS SQL
BEGIN
   DECLARE UUID VARCHAR(255);
   SELECT UUID() INTO UUID;
   INSERT INTO attribute VALUES (UUID,description,datatype);
END
GO

CREATE PROCEDURE "InsertNewEntity"  (IN `name` varchar(255), IN `type` int(11), IN `extid` varchar(255))
	SQL SECURITY DEFINER
	NOT DETERMINISTIC
	CONTAINS SQL
BEGIN
 DECLARE UUID VARCHAR(255);
 SELECT UUID() INTO UUID;
 Insert INTO entity VALUES (UUID,name,NOW());
CASE
WHEN type=1 THEN INSERT INTO student VALUES(UUID,extid);
WHEN type=2 THEN INSERT INTO teacher VALUES(UUID,extid);
END CASE;
END
GO

CREATE PROCEDURE "InsertNewFunction"  (IN `description` varchar(255), IN `entity` varchar(255))
	SQL SECURITY DEFINER
	NOT DETERMINISTIC
	CONTAINS SQL
BEGIN
    DECLARE UUID VARCHAR(255);
    SELECT UUID() INTO UUID;
   INSERT INTO function VALUES (UUID,description,NOW(),entity);
END
GO

CREATE PROCEDURE "InsertNewProject"  (IN `application` varchar(255), IN `entity` varchar(255))
	SQL SECURITY DEFINER
	NOT DETERMINISTIC
	CONTAINS SQL
BEGIN
    DECLARE UUID VARCHAR(255);
    SELECT UUID() INTO UUID;
    INSERT INTO project VALUES (UUID,application,entity,NOW());
END
GO

CREATE PROCEDURE "InsertNewProjectRevision"  (IN `project` varchar(255), IN `start` date, IN `end` date, IN `entity` varchar(255))
	SQL SECURITY DEFINER
	NOT DETERMINISTIC
	CONTAINS SQL
BEGIN
    DECLARE UUID VARCHAR(255);
    SELECT UUID() INTO UUID;
    INSERT INTO projectrev VALUES (UUID,project,start,end,NOW(),entity);
END
GO

CREATE PROCEDURE "InsertNewProjectRevisionEntity"  (IN `projectrev` varchar(255), IN `projentity` varchar(255), IN `function` varchar(255), IN `entity` varchar(255))
	SQL SECURITY DEFINER
	NOT DETERMINISTIC
	CONTAINS SQL
BEGIN
    DECLARE UUID VARCHAR(255);
    SELECT UUID() INTO UUID;
    INSERT INTO projectreventity VALUES (projectrev,projentity,function,NOW(),entity);
END
GO

CREATE PROCEDURE "InsertNewProjectRevisionLog"  (IN `projectrev` varchar(255), IN `textlog` longtext, IN `entity` varchar(255))
	SQL SECURITY DEFINER
	NOT DETERMINISTIC
	CONTAINS SQL
BEGIN
    DECLARE UUID VARCHAR(255);
    SELECT UUID() INTO UUID;
    INSERT INTO projectrevlog VALUES (UUID,projectrev,textlog,NOW(),entity);
END
GO

CREATE PROCEDURE "InsertNewProjectRevisionLogDoc"  (IN `projectrevlog` varchar(255), IN `doc` longblob, IN `url` longtext, IN `entity` varchar(255))
	SQL SECURITY DEFINER
	NOT DETERMINISTIC
	CONTAINS SQL
BEGIN
    DECLARE UUID VARCHAR(255);
    SELECT UUID() INTO UUID;
    INSERT INTO projectrevlogdoc VALUES (UUID,projectrevlog,doc,url,NOW(),entity);
END
GO

CREATE PROCEDURE "InsertNewSchool"  (IN `description` varchar(255))
	SQL SECURITY DEFINER
	NOT DETERMINISTIC
	CONTAINS SQL
BEGIN
    DECLARE UUID VARCHAR(255);
    SELECT UUID() INTO UUID;
    INSERT INTO school VALUES (UUID,description);
END
GO

CREATE PROCEDURE "InsertNewSchoolEntity"  (IN `school` varchar(255), IN `entity` varchar(255))
	SQL SECURITY DEFINER
	NOT DETERMINISTIC
	CONTAINS SQL
BEGIN
    INSERT INTO schoolentity VALUES (school,entity);
END
GO

CREATE PROCEDURE "InsertNewUser"  (IN `username` varchar(255), IN `password` varchar(255), IN `email` varchar(255), IN `type` int(11), IN `extid` varchar(255))
	SQL SECURITY DEFINER
	NOT DETERMINISTIC
	CONTAINS SQL
BEGIN
 DECLARE UUID VARCHAR(255);
CASE
WHEN type=1 THEN SELECT UUID() INTO UUID;CALL InsertNewEntity(UUID,type,extid);INSERT INTO student VALUES(UUID,extid);
WHEN type=2 THEN SELECT UUID() INTO UUID;CALL InsertNewEntity(UUID,type,extid);INSERT INTO teacher VALUES(UUID,extid);
END CASE;
    INSERT INTO users VALUES(UUID,username,password,NOW(),0,1,UUID,email);
END
GO

CREATE PROCEDURE "InsertProjectWeb"  (IN `id` varchar(255), IN `entity` varchar(255))
	SQL SECURITY DEFINER
	NOT DETERMINISTIC
	CONTAINS SQL
BEGIN
  INSERT INTO application VALUES (ID,NOW(),entity);
END
GO

CREATE PROCEDURE "IsAdmin"  (IN `entity` varchar(255))
	SQL SECURITY DEFINER
	NOT DETERMINISTIC
	CONTAINS SQL
BEGIN
 DECLARE ADMIN INT(1);
    SELECT count(a.id) from admin as a where a.id=entity INTO ADMIN;
    CASE
      WHEN ADMIN <1 THEN SELECT 'false';
      WHEN ADMIN =1 THEN SELECT 'true';
      WHEN ADMIN >1 THEN SELECT 'false';
    END CASE;
END
GO

CREATE PROCEDURE "ListProjects"  (IN `approved` int(11))
	SQL SECURITY DEFINER
	NOT DETERMINISTIC
	CONTAINS SQL
BEGIN
CASE
WHEN approved=0 THEN SELECT a.id,a.submitedby,a.submitedin from application as a,project as p,applicationattribute as appattr,attribute as attr where a.id<>p.application and a.id=appattr.application and appattr.application=attr.id;
WHEN approved=1 THEN SELECT p.id,p.approvedby,p.approvedin,a.submitedby from application as a,project as p,applicationattribute as appattr,attribute as attr where a.id=p.application and a.id=appattr.application and appattr.application=attr.id;
END CASE;
END
GO

CREATE PROCEDURE "ListEntities"  (IN `type` int(11), IN `extid` varchar(255), IN `name` varchar(255), IN `id` varchar(255))
	SQL SECURITY DEFINER
	NOT DETERMINISTIC
	CONTAINS SQL
BEGIN
CASE
WHEN type=1 THEN SELECT e.id,e.name,s.studentid from entity as e,student as s where ((e.id=s.id and s.studentid like CONCAT(CONCAT('%',extid),'%') and e.name like CONCAT(CONCAT('%',name),'%')) OR (e.id=s.id and e.id LIKE CONCAT(CONCAT('%',id),'%') and e.name like CONCAT(CONCAT('%',name),'%')));
WHEN type=2 THEN SELECT e.id,e.name,t.teacherid from entity as e,teacher as t where ((e.id=t.id and t.teacherid like CONCAT(CONCAT('%',extid),'%') and e.name like CONCAT(CONCAT('%',name),'%')) OR (e.id=t.id and e.id LIKE CONCAT(CONCAT('%',id),'%') and e.name like CONCAT(CONCAT('%',name),'%')));
END CASE;
END
GO

CREATE PROCEDURE "LoginChallenge"  (IN `username` varchar(255))
	SQL SECURITY DEFINER
	NOT DETERMINISTIC
	CONTAINS SQL
BEGIN
    DECLARE RESULT INT(1);
    SELECT COUNT(u.entity) FROM users AS u WHERE u.username=username INTO RESULT;
CASE
  WHEN RESULT<1 THEN SELECT '0','0';
  WHEN RESULT=1 THEN SELECT u.entity,u.password FROM users AS u WHERE u.username=username;
END CASE;
END
GO


CREATE INDEX "admin_createdby_fk" USING BTREE 
	ON "admin"("createdby")
GO

CREATE INDEX "application_entity_fk" USING BTREE 
	ON "application"("submitedby")
GO

CREATE INDEX "applicationattribute_attribute_fk" USING BTREE 
	ON "applicationattribute"("attribute")
GO

CREATE INDEX "applicationattribute_entity_fk" USING BTREE 
	ON "applicationattribute"("createdby")
GO

CREATE INDEX "applicationgroup_application_fk" USING BTREE 
	ON "applicationgroup"("application")
GO

CREATE INDEX "applicationgroup_group_fk" USING BTREE 
	ON "applicationgroup"("group")
GO

CREATE INDEX "course_school_fk" USING BTREE 
	ON "course"("school")
GO

CREATE INDEX "courseentity_entity_fk" USING BTREE 
	ON "courseentity"("entity")
GO

CREATE INDEX "departament_school_fk" USING BTREE 
	ON "departament"("school")
GO

CREATE INDEX "departamententity_dep_fk" USING BTREE 
	ON "departamententity"("departament")
GO

CREATE INDEX "function_entity_fk" USING BTREE 
	ON "function"("createdby")
GO

CREATE INDEX "groupentity_approval_fk" USING BTREE 
	ON "groupentity"("approvedby")
GO

CREATE INDEX "groupentity_createdby_fk" USING BTREE 
	ON "groupentity"("createdby")
GO

CREATE INDEX "groupentity_entity_fk" USING BTREE 
	ON "groupentity"("entity")
GO

CREATE INDEX "groupentity_function_fk" USING BTREE 
	ON "groupentity"("function")
GO

CREATE INDEX "project_entity_fk" USING BTREE 
	ON "project"("approvedby")
GO

CREATE INDEX "projectrev_entity_fk" USING BTREE 
	ON "projectrev"("createdby")
GO

CREATE INDEX "projectrev_proj_fk" USING BTREE 
	ON "projectrev"("project")
GO

CREATE INDEX "projectreventity_approvedby_fk" USING BTREE 
	ON "projectrevgroup"("approvedby")
GO

CREATE INDEX "projectreventity_createdby_fk" USING BTREE 
	ON "projectrevgroup"("createdby")
GO

CREATE INDEX "projectreventity_groupentity_fk" USING BTREE 
	ON "projectrevgroup"("groupentity")
GO

CREATE INDEX "projectlogs_entity_fk" USING BTREE 
	ON "projectrevlog"("createdby")
GO

CREATE INDEX "projectlogs_projrev_fk" USING BTREE 
	ON "projectrevlog"("project")
GO

CREATE INDEX "projectrevlogdoc_entity_fk" USING BTREE 
	ON "projectrevlogdoc"("createdby")
GO

CREATE INDEX "projectrevlogdoc_prjrevlog_fk" USING BTREE 
	ON "projectrevlogdoc"("projectrevlog")
GO

CREATE INDEX "projectweb_entity_fk" USING BTREE 
	ON "projectweb"("createdby")
GO

CREATE INDEX "users_entity_fk" USING BTREE 
	ON "users"("entity")
GO

ALTER TABLE "project"
	ADD CONSTRAINT "project_application_uindex"
	UNIQUE ("application")
GO

ALTER TABLE "student"
	ADD CONSTRAINT "student_studentid_uindex"
	UNIQUE ("studentid")
GO

ALTER TABLE "teacher"
	ADD CONSTRAINT "teacher_teacherid_uindex"
	UNIQUE ("teacherid")
GO

ALTER TABLE "users"
	ADD CONSTRAINT "users_username_uindex"
	UNIQUE ("username")
GO

ALTER TABLE "admin"
	ADD CONSTRAINT "admin_entity_fk"
	FOREIGN KEY("id")
	REFERENCES "entity"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "admin"
	ADD CONSTRAINT "admin_createdby_fk"
	FOREIGN KEY("createdby")
	REFERENCES "entity"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "application"
	ADD CONSTRAINT "application_entity_fk"
	FOREIGN KEY("submitedby")
	REFERENCES "entity"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "applicationattribute"
	ADD CONSTRAINT "applicationattribute_entity_fk"
	FOREIGN KEY("createdby")
	REFERENCES "entity"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "applicationattribute"
	ADD CONSTRAINT "applicationattribute_attribute_fk"
	FOREIGN KEY("attribute")
	REFERENCES "attribute"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "applicationattribute"
	ADD CONSTRAINT "applicationattribute_application_fk"
	FOREIGN KEY("application")
	REFERENCES "application"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "applicationgroup"
	ADD CONSTRAINT "applicationgroup_group_fk"
	FOREIGN KEY("group")
	REFERENCES "groupentity"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "applicationgroup"
	ADD CONSTRAINT "applicationgroup_application_fk"
	FOREIGN KEY("application")
	REFERENCES "application"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "course"
	ADD CONSTRAINT "course_school_fk"
	FOREIGN KEY("school")
	REFERENCES "school"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "courseentity"
	ADD CONSTRAINT "courseentity_entity_fk"
	FOREIGN KEY("entity")
	REFERENCES "entity"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "courseentity"
	ADD CONSTRAINT "courseentity_course_fk"
	FOREIGN KEY("course")
	REFERENCES "course"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "departament"
	ADD CONSTRAINT "departament_school_fk"
	FOREIGN KEY("school")
	REFERENCES "school"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "departamententity"
	ADD CONSTRAINT "departamententity_entity_fk"
	FOREIGN KEY("entity")
	REFERENCES "entity"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "departamententity"
	ADD CONSTRAINT "departamententity_dep_fk"
	FOREIGN KEY("departament")
	REFERENCES "departament"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "entitycontact"
	ADD CONSTRAINT "entitycontact_entity_fk"
	FOREIGN KEY("entity")
	REFERENCES "entity"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "function"
	ADD CONSTRAINT "function_entity_fk"
	FOREIGN KEY("createdby")
	REFERENCES "entity"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "groupentity"
	ADD CONSTRAINT "groupentity_function_fk"
	FOREIGN KEY("function")
	REFERENCES "function"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "groupentity"
	ADD CONSTRAINT "groupentity_entity_fk"
	FOREIGN KEY("entity")
	REFERENCES "entity"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "groupentity"
	ADD CONSTRAINT "groupentity_createdby_fk"
	FOREIGN KEY("createdby")
	REFERENCES "entity"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "groupentity"
	ADD CONSTRAINT "groupentity_approval_fk"
	FOREIGN KEY("approvedby")
	REFERENCES "entity"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "project"
	ADD CONSTRAINT "project_entity_fk"
	FOREIGN KEY("approvedby")
	REFERENCES "entity"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "project"
	ADD CONSTRAINT "project_application_fk"
	FOREIGN KEY("application")
	REFERENCES "application"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "projectrev"
	ADD CONSTRAINT "projectrev_proj_fk"
	FOREIGN KEY("project")
	REFERENCES "project"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "projectrev"
	ADD CONSTRAINT "projectrev_entity_fk"
	FOREIGN KEY("createdby")
	REFERENCES "entity"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "projectrevgroup"
	ADD CONSTRAINT "projectreventity_projrev_fk"
	FOREIGN KEY("projectrev")
	REFERENCES "projectrev"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "projectrevgroup"
	ADD CONSTRAINT "projectreventity_groupentity_fk"
	FOREIGN KEY("groupentity")
	REFERENCES "groupentity"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "projectrevgroup"
	ADD CONSTRAINT "projectreventity_createdby_fk"
	FOREIGN KEY("createdby")
	REFERENCES "entity"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "projectrevgroup"
	ADD CONSTRAINT "projectreventity_approvedby_fk"
	FOREIGN KEY("approvedby")
	REFERENCES "entity"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "projectrevlog"
	ADD CONSTRAINT "projectlogs_projrev_fk"
	FOREIGN KEY("project")
	REFERENCES "projectrev"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "projectrevlog"
	ADD CONSTRAINT "projectlogs_entity_fk"
	FOREIGN KEY("createdby")
	REFERENCES "entity"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "projectrevlogdoc"
	ADD CONSTRAINT "projectrevlogdoc_prjrevlog_fk"
	FOREIGN KEY("projectrevlog")
	REFERENCES "projectrevlog"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "projectrevlogdoc"
	ADD CONSTRAINT "projectrevlogdoc_entity_fk"
	FOREIGN KEY("createdby")
	REFERENCES "entity"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "projectweb"
	ADD CONSTRAINT "projectweb_project_fk"
	FOREIGN KEY("id")
	REFERENCES "project"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "projectweb"
	ADD CONSTRAINT "projectweb_entity_fk"
	FOREIGN KEY("createdby")
	REFERENCES "entity"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "student"
	ADD CONSTRAINT "student_id_fk"
	FOREIGN KEY("id")
	REFERENCES "entity"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "teacher"
	ADD CONSTRAINT "teacher_fk"
	FOREIGN KEY("id")
	REFERENCES "entity"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

ALTER TABLE "users"
	ADD CONSTRAINT "users_entity_fk"
	FOREIGN KEY("entity")
	REFERENCES "entity"("id")
	ON DELETE RESTRICT 
	ON UPDATE RESTRICT 
GO

