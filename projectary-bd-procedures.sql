--Criação De Utilizadores Internos
DELIMITER ;;

DROP PROCEDURE IF EXISTS `InsertNewEntity`;;
CREATE PROCEDURE `InsertNewEntity`(IN `name`      VARCHAR(255), IN `type` INT(11), IN `extid` VARCHAR(255))
BEGIN
 DECLARE UUID VARCHAR(255);
 SELECT UUID() INTO UUID;
 Insert INTO entity VALUES (UUID,name,NOW());
CASE
WHEN type=1 THEN INSERT INTO student VALUES(UUID,extid);
WHEN type=2 THEN INSERT INTO teacher VALUES(UUID,extid);
END CASE;
END;;

DROP PROCEDURE IF EXISTS `ListEntities`;;
CREATE PROCEDURE `ListEntities`(IN `type` INT(11), IN `extid` VARCHAR(255),IN `fname` VARCHAR(255),IN `lname` VARCHAR(255),IN id VARCHAR(255))
BEGIN
CASE
WHEN type=1 THEN SELECT e.id,e.name,s.studentid from entity as e,student as s where ((e.id=s.id and s.studentid like CONCAT(CONCAT('%',extid),'%') and e.fname like CONCAT(CONCAT('%',fname),'%') and e.lname like CONCAT(CONCAT('%',lname),'%')) OR (e.id=s.id and e.id LIKE CONCAT(CONCAT('%',id),'%') and e.fname like CONCAT(CONCAT('%',fname),'%') and e.lname like CONCAT(CONCAT('%',lname),'%')));
WHEN type=2 THEN SELECT e.id,e.name,t.teacherid from entity as e,teacher as t where ((e.id=t.id and t.teacherid like CONCAT(CONCAT('%',extid),'%') and e.fname like CONCAT(CONCAT('%',fname),'%') and e.lname like CONCAT(CONCAT('%',lname),'%')) OR (e.id=t.id and e.id LIKE CONCAT(CONCAT('%',id),'%') and e.fname like CONCAT(CONCAT('%',fname),'%') and e.lname like CONCAT(CONCAT('%',lname),'%')));
END CASE;
END;;

CREATE PROCEDURE `InsertNewUser`(IN `username` VARCHAR(255), IN `password` VARCHAR(255), IN `type` INT(11), IN `extid` VARCHAR(255))
  BEGIN
 DECLARE UUID VARCHAR(255);
CASE
WHEN type=1 THEN SELECT UUID() INTO UUID;CALL InsertNewEntity(UUID,type,extid);INSERT INTO student VALUES(UUID,extid);
WHEN type=2 THEN SELECT UUID() INTO UUID;CALL InsertNewEntity(UUID,type,extid);INSERT INTO teacher VALUES(UUID,extid);
END CASE;
    INSERT INTO users VALUES(UUID,username,password,NOW(),0,1,UUID);
END;;

DELIMITER ;