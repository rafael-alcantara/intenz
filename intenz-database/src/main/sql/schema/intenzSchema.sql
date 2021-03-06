--------------------------------------------------------
--  File created - Tuesday-February-18-2014   
--------------------------------------------------------
DROP TABLE "CATALYTIC_ACTIVITY_RHEA_ID";
DROP TABLE "CITATIONS";
DROP TABLE "CITATIONS_AUDIT";
DROP TABLE "CLASSES";
DROP TABLE "CLASSES_AUDIT";
DROP TABLE "COFACTORS";
DROP TABLE "COFACTORS_AUDIT";
DROP TABLE "COMMENTS";
DROP TABLE "COMMENTS_AUDIT";
DROP TABLE "COMPLEX_REACTIONS";
DROP TABLE "COMPLEX_REACTIONS_AUDIT";
DROP TABLE "COMPOUND_DATA";
DROP TABLE "COMPOUND_DATA_AUDIT";
DROP TABLE "COMPOUND_DATA_UPDATES";
DROP TABLE "CV_COEFF_TYPES";
DROP TABLE "CV_COMP_PUB_AVAIL";
DROP TABLE "CV_DATABASES";
DROP TABLE "CV_DATABASES_AUDIT";
DROP TABLE "CV_LOCATION";
DROP TABLE "CV_NAME_CLASSES";
DROP TABLE "CV_NAME_CLASSES_AUDIT";
DROP TABLE "CV_OPERATORS";
DROP TABLE "CV_REACTION_DIRECTIONS";
DROP TABLE "CV_REACTION_QUALIFIERS";
DROP TABLE "CV_REACTION_SIDES";
DROP TABLE "CV_STATUS";
DROP TABLE "CV_STATUS_AUDIT";
DROP TABLE "CV_VIEW";
DROP TABLE "CV_VIEW_AUDIT";
DROP TABLE "CV_WARNINGS";
DROP TABLE "CV_WARNINGS_AUDIT";
DROP TABLE "DR$intenz_text_idx$text$I";
DROP TABLE "DR$intenz_text_idx$text$K";
DROP TABLE "DR$intenz_text_idx$text$N";
DROP TABLE "DR$intenz_text_idx$text$R";
DROP TABLE "ENZYMES";
DROP TABLE "ENZYMES_AUDIT";
DROP TABLE "FUTURE_EVENTS";
DROP TABLE "FUTURE_EVENTS_AUDIT";
DROP TABLE "HISTORY_EVENTS";
DROP TABLE "HISTORY_EVENTS_AUDIT";
DROP TABLE "ID2EC";
DROP TABLE "INTENZ_REACTIONS";
DROP TABLE "INTENZ_REACTIONS_AUDIT";
DROP TABLE "INTENZ_TEXT";
DROP TABLE "LINKS";
DROP TABLE "LINKS_AUDIT";
DROP TABLE "NAMES";
DROP TABLE "NAMES_AUDIT";
DROP TABLE "PUBLICATIONS";
DROP TABLE "PUBLICATIONS_AUDIT";
DROP TABLE "REACTIONS";
DROP TABLE "REACTIONS_AUDIT";
DROP TABLE "REACTIONS_MAP";
DROP TABLE "REACTIONS_MAP_AUDIT";
DROP TABLE "REACTION_CITATIONS";
DROP TABLE "REACTION_CITATIONS_AUDIT";
DROP TABLE "REACTION_MERGINGS";
DROP TABLE "REACTION_PARTICIPANTS";
DROP TABLE "REACTION_PARTICIPANTS_AUDIT";
DROP TABLE "REACTION_XREFS";
DROP TABLE "REACTION_XREFS_AUDIT";
DROP TABLE "RELEASES";
DROP TABLE "ROLES";
DROP TABLE "STATS";
DROP TABLE "SUBCLASSES";
DROP TABLE "SUBCLASSES_AUDIT";
DROP TABLE "SUBSUBCLASSES";
DROP TABLE "SUBSUBCLASSES_AUDIT";
DROP TABLE "TIMEOUTS";
DROP TABLE "TIMEOUTS_AUDIT";
DROP TABLE "USERS";
DROP TABLE "XREFS";
DROP TABLE "XREFS_AUDIT";
DROP SEQUENCE "S_AUDIT_ID";
DROP SEQUENCE "S_COMPOUND_ID";
DROP SEQUENCE "S_ENZYME_ID";
DROP SEQUENCE "S_FUTURE_EVENT_ID";
DROP SEQUENCE "S_FUTURE_GROUP_ID";
DROP SEQUENCE "S_HISTORY_EVENT_ID";
DROP SEQUENCE "S_HISTORY_GROUP_ID";
DROP SEQUENCE "S_PUB_ID";
DROP SEQUENCE "S_REACTION_ID";
DROP SEQUENCE "S_TIMEOUT_ID";
DROP VIEW "CHEBI_REACTIONS";
DROP VIEW "CHEBI_XREFS";
DROP VIEW "EC_NB_REACTION";
DROP VIEW "VW_CLASSES";
DROP VIEW "V_COUNT_ENZYME_EQUATION_OK";
DROP VIEW "V_EC_FOR_DATALIB";
DROP VIEW "V_EC_NB_RHEA_IUBMB";
DROP VIEW "V_EC_NB_RHEA_OK";
DROP VIEW "V_EC_REACTION_IUBMB";
DROP VIEW "V_EC_RHEA_EQUATION";
DROP VIEW "V_EC_RHEA_STATUS_OK";
DROP VIEW "V_INTERPRO";
DROP FUNCTION "CHECK_REACTION_QUALIFIERS";
DROP FUNCTION "F_CLASSES";
DROP FUNCTION "F_LINKS";
DROP FUNCTION "F_OTHER_NAMES";
DROP FUNCTION "F_OVERALL_REACTION_ID";
DROP FUNCTION "F_PUBDATA";
DROP FUNCTION "F_QUAD2STRING";
DROP FUNCTION "F_REACTION";
DROP FUNCTION "F_REACTION_DIR_ID";
DROP FUNCTION "F_RHEA_FAMILY_ID";
DROP FUNCTION "F_XML_DISPLAY_SP_CODE";
DROP PACKAGE "AUDITPACKAGE";
DROP PACKAGE "EVENT";
DROP PACKAGE BODY "AUDITPACKAGE";
DROP PACKAGE BODY "EVENT";
DROP PROCEDURE "P_CHANGE_STATUS";
DROP PROCEDURE "P_CLONE_ENZYME";
DROP PROCEDURE "P_INSERT_COMPOUND_DATA";
DROP PROCEDURE "P_INSERT_REACTION";
DROP PROCEDURE "P_MERGE_PUBLICATIONS";
DROP PROCEDURE "P_PRINT_PUBLICATION";
DROP PROCEDURE "P_RESTART_TIMEOUT";
DROP PROCEDURE "P_START_TIMEOUT";
DROP PROCEDURE "P_STOP_TIMEOUT";
DROP PROCEDURE "P_STRING2QUAD";
DROP TYPE "REACTION_QUALIFIERS";
--------------------------------------------------------
--  DDL for Type REACTION_QUALIFIERS
--------------------------------------------------------

  CREATE OR REPLACE TYPE "REACTION_QUALIFIERS" AS VARRAY(10) OF VARCHAR2(2);

/

  GRANT EXECUTE ON "REACTION_QUALIFIERS" TO "ENZYME_CURATOR";
 
  GRANT EXECUTE ON "REACTION_QUALIFIERS" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Sequence S_AUDIT_ID
--------------------------------------------------------

   CREATE SEQUENCE  "S_AUDIT_ID"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 14691815 NOCACHE  ORDER  NOCYCLE ;
  GRANT SELECT ON "S_AUDIT_ID" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "S_AUDIT_ID" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "S_AUDIT_ID" TO "ENZYME_PRODUCTION";
--------------------------------------------------------
--  DDL for Sequence S_COMPOUND_ID
--------------------------------------------------------

   CREATE SEQUENCE  "S_COMPOUND_ID"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 9136 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence S_ENZYME_ID
--------------------------------------------------------

   CREATE SEQUENCE  "S_ENZYME_ID"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 19844 CACHE 20 NOORDER  NOCYCLE ;
  GRANT SELECT ON "S_ENZYME_ID" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "S_ENZYME_ID" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "S_ENZYME_ID" TO "ENZYME_PRODUCTION";
--------------------------------------------------------
--  DDL for Sequence S_FUTURE_EVENT_ID
--------------------------------------------------------

   CREATE SEQUENCE  "S_FUTURE_EVENT_ID"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 2745 NOCACHE  ORDER  NOCYCLE ;
  GRANT SELECT ON "S_FUTURE_EVENT_ID" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "S_FUTURE_EVENT_ID" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "S_FUTURE_EVENT_ID" TO "ENZYME_PRODUCTION";
--------------------------------------------------------
--  DDL for Sequence S_FUTURE_GROUP_ID
--------------------------------------------------------

   CREATE SEQUENCE  "S_FUTURE_GROUP_ID"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 2742 NOCACHE  ORDER  NOCYCLE ;
  GRANT SELECT ON "S_FUTURE_GROUP_ID" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "S_FUTURE_GROUP_ID" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "S_FUTURE_GROUP_ID" TO "ENZYME_PRODUCTION";
--------------------------------------------------------
--  DDL for Sequence S_HISTORY_EVENT_ID
--------------------------------------------------------

   CREATE SEQUENCE  "S_HISTORY_EVENT_ID"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 11743 NOCACHE  ORDER  NOCYCLE ;
  GRANT SELECT ON "S_HISTORY_EVENT_ID" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "S_HISTORY_EVENT_ID" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "S_HISTORY_EVENT_ID" TO "ENZYME_PRODUCTION";
--------------------------------------------------------
--  DDL for Sequence S_HISTORY_GROUP_ID
--------------------------------------------------------

   CREATE SEQUENCE  "S_HISTORY_GROUP_ID"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 11744 NOCACHE  ORDER  NOCYCLE ;
  GRANT SELECT ON "S_HISTORY_GROUP_ID" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "S_HISTORY_GROUP_ID" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "S_HISTORY_GROUP_ID" TO "ENZYME_PRODUCTION";
--------------------------------------------------------
--  DDL for Sequence S_PUB_ID
--------------------------------------------------------

   CREATE SEQUENCE  "S_PUB_ID"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 32353 CACHE 20 NOORDER  NOCYCLE ;
  GRANT SELECT ON "S_PUB_ID" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "S_PUB_ID" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "S_PUB_ID" TO "ENZYME_PRODUCTION";
--------------------------------------------------------
--  DDL for Sequence S_REACTION_ID
--------------------------------------------------------

   CREATE SEQUENCE  "S_REACTION_ID"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 40579 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence S_TIMEOUT_ID
--------------------------------------------------------

   CREATE SEQUENCE  "S_TIMEOUT_ID"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 2743 NOCACHE  ORDER  NOCYCLE ;
  GRANT SELECT ON "S_TIMEOUT_ID" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "S_TIMEOUT_ID" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "S_TIMEOUT_ID" TO "ENZYME_PRODUCTION";
--------------------------------------------------------
--  DDL for Table CATALYTIC_ACTIVITY_RHEA_ID
--------------------------------------------------------

  CREATE TABLE "CATALYTIC_ACTIVITY_RHEA_ID" 
   (	"EQUATION" VARCHAR2(3000 BYTE), 
	"REACTION_ID" NUMBER(7,0)
   ) ;
--------------------------------------------------------
--  DDL for Table CITATIONS
--------------------------------------------------------

  CREATE TABLE "CITATIONS" 
   (	"ENZYME_ID" NUMBER(7,0), 
	"PUB_ID" NUMBER(7,0), 
	"ORDER_IN" NUMBER(3,0), 
	"STATUS" VARCHAR2(2 BYTE), 
	"SOURCE" VARCHAR2(6 BYTE)
   ) ;
 

   COMMENT ON COLUMN "CITATIONS"."ENZYME_ID" IS 'Enzyme_id is used as an internal unique identifier throughout the database as some entries don''t have an EC number, e.g. suggested entries. Example is ''70001'', ''9945'', etc';
 
   COMMENT ON COLUMN "CITATIONS"."PUB_ID" IS 'Pub_id is used as an internal unique identifier for publications. Example is ''1'', ''253'', etc.';
 
   COMMENT ON COLUMN "CITATIONS"."ORDER_IN" IS 'Order_in indicates the order in which the publications are listed.';
 
   COMMENT ON COLUMN "CITATIONS"."STATUS" IS 'Internal code of status, for example ''NO'', ''UN'', ''SN'', ''OK'', etc.';
 
   COMMENT ON COLUMN "CITATIONS"."SOURCE" IS 'Database internal code, for example ''INTENZ'', ''IUBMB'', ''BRENDA'', ''SIB'' etc. Each enzyme belongs to one of them.';
 
   COMMENT ON TABLE "CITATIONS"  IS 'Citations, table storing the publications referenced in enzymes.';
  GRANT DELETE ON "CITATIONS" TO "ENZYME_COMMITTEE";
 
  GRANT INSERT ON "CITATIONS" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "CITATIONS" TO "ENZYME_COMMITTEE";
 
  GRANT UPDATE ON "CITATIONS" TO "ENZYME_COMMITTEE";
 
  GRANT DELETE ON "CITATIONS" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "CITATIONS" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "CITATIONS" TO "ENZYME_CURATOR";
 
  GRANT UPDATE ON "CITATIONS" TO "ENZYME_CURATOR";
 
  GRANT DELETE ON "CITATIONS" TO "ENZYME_PRODUCTION";
 
  GRANT INSERT ON "CITATIONS" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "CITATIONS" TO "ENZYME_PRODUCTION";
 
  GRANT UPDATE ON "CITATIONS" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "CITATIONS" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table CITATIONS_AUDIT
--------------------------------------------------------

  CREATE TABLE "CITATIONS_AUDIT" 
   (	"ENZYME_ID" NUMBER(7,0), 
	"PUB_ID" NUMBER(7,0), 
	"ORDER_IN" NUMBER(3,0), 
	"STATUS" VARCHAR2(2 BYTE), 
	"SOURCE" VARCHAR2(6 BYTE), 
	"TIMESTAMP" DATE, 
	"AUDIT_ID" NUMBER(15,0), 
	"DBUSER" VARCHAR2(30 BYTE), 
	"OSUSER" VARCHAR2(30 BYTE), 
	"REMARK" VARCHAR2(50 BYTE), 
	"ACTION" VARCHAR2(3 BYTE)
   ) ;
 

   COMMENT ON COLUMN "CITATIONS_AUDIT"."ENZYME_ID" IS 'Audit column';
 
   COMMENT ON COLUMN "CITATIONS_AUDIT"."PUB_ID" IS 'Audit column';
 
   COMMENT ON COLUMN "CITATIONS_AUDIT"."ORDER_IN" IS 'Audit column';
 
   COMMENT ON COLUMN "CITATIONS_AUDIT"."STATUS" IS 'Audit column';
 
   COMMENT ON COLUMN "CITATIONS_AUDIT"."SOURCE" IS 'Audit column';
 
   COMMENT ON COLUMN "CITATIONS_AUDIT"."TIMESTAMP" IS 'Date and time of the action.';
 
   COMMENT ON COLUMN "CITATIONS_AUDIT"."AUDIT_ID" IS 'Serial number of audit action.';
 
   COMMENT ON COLUMN "CITATIONS_AUDIT"."DBUSER" IS 'Oracle account name of the user doing the action.';
 
   COMMENT ON COLUMN "CITATIONS_AUDIT"."OSUSER" IS 'Unix account of the user doing the action.';
 
   COMMENT ON COLUMN "CITATIONS_AUDIT"."REMARK" IS 'Optional remark, set by calling enzyme.auditpackage.setremark.';
 
   COMMENT ON COLUMN "CITATIONS_AUDIT"."ACTION" IS 'A short code for the action, ''I'' for insert, ''U'' for update, ''D'' for delete.';
 
   COMMENT ON TABLE "CITATIONS_AUDIT"  IS 'Audit table storing the history of table citations.';
  GRANT INSERT ON "CITATIONS_AUDIT" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "CITATIONS_AUDIT" TO "ENZYME_COMMITTEE";
 
  GRANT INSERT ON "CITATIONS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "CITATIONS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "CITATIONS_AUDIT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "CITATIONS_AUDIT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "CITATIONS_AUDIT" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table CLASSES
--------------------------------------------------------

  CREATE TABLE "CLASSES" 
   (	"EC1" NUMBER(1,0), 
	"NAME" VARCHAR2(200 BYTE), 
	"DESCRIPTION" VARCHAR2(2000 BYTE), 
	"ACTIVE" VARCHAR2(1 BYTE) DEFAULT 'Y'
   ) ;
 

   COMMENT ON COLUMN "CLASSES"."EC1" IS 'The first number, ec1, is the number of the class, example ''3''.';
 
   COMMENT ON COLUMN "CLASSES"."NAME" IS 'Name of the class, example ''Hydrolases''.';
 
   COMMENT ON COLUMN "CLASSES"."DESCRIPTION" IS 'Description is a short paragraph explaining the contents of the class.';
 
   COMMENT ON COLUMN "CLASSES"."ACTIVE" IS 'IUBMB uses ''deleted'' for different meanings. We say ''active'' for enzymes that are currently recommended by IUBMB. Opposit of inactive.';
 
   COMMENT ON TABLE "CLASSES"  IS 'Classes, highest level of the enzyme hierachy. There are currently six different classes, 1 to 6. It is unlikely that there will be more classes in future.';
  GRANT DELETE ON "CLASSES" TO "ENZYME_COMMITTEE";
 
  GRANT INSERT ON "CLASSES" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "CLASSES" TO "ENZYME_COMMITTEE";
 
  GRANT UPDATE ON "CLASSES" TO "ENZYME_COMMITTEE";
 
  GRANT DELETE ON "CLASSES" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "CLASSES" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "CLASSES" TO "ENZYME_CURATOR";
 
  GRANT UPDATE ON "CLASSES" TO "ENZYME_CURATOR";
 
  GRANT DELETE ON "CLASSES" TO "ENZYME_PRODUCTION";
 
  GRANT INSERT ON "CLASSES" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "CLASSES" TO "ENZYME_PRODUCTION";
 
  GRANT UPDATE ON "CLASSES" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "CLASSES" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table CLASSES_AUDIT
--------------------------------------------------------

  CREATE TABLE "CLASSES_AUDIT" 
   (	"EC1" NUMBER(1,0), 
	"NAME" VARCHAR2(200 BYTE), 
	"DESCRIPTION" VARCHAR2(2000 BYTE), 
	"ACTIVE" VARCHAR2(1 BYTE), 
	"TIMESTAMP" DATE, 
	"AUDIT_ID" NUMBER(15,0), 
	"DBUSER" VARCHAR2(30 BYTE), 
	"OSUSER" VARCHAR2(30 BYTE), 
	"REMARK" VARCHAR2(50 BYTE), 
	"ACTION" VARCHAR2(3 BYTE)
   ) ;
 

   COMMENT ON COLUMN "CLASSES_AUDIT"."EC1" IS 'Audit column';
 
   COMMENT ON COLUMN "CLASSES_AUDIT"."NAME" IS 'Audit column';
 
   COMMENT ON COLUMN "CLASSES_AUDIT"."DESCRIPTION" IS 'Audit column';
 
   COMMENT ON COLUMN "CLASSES_AUDIT"."ACTIVE" IS 'Audit column';
 
   COMMENT ON COLUMN "CLASSES_AUDIT"."TIMESTAMP" IS 'Date and time of the action.';
 
   COMMENT ON COLUMN "CLASSES_AUDIT"."AUDIT_ID" IS 'Serial number of audit action.';
 
   COMMENT ON COLUMN "CLASSES_AUDIT"."DBUSER" IS 'Oracle account name of the user doing the action.';
 
   COMMENT ON COLUMN "CLASSES_AUDIT"."OSUSER" IS 'Unix account of the user doing the action.';
 
   COMMENT ON COLUMN "CLASSES_AUDIT"."REMARK" IS 'Optional remark, set by calling enzyme.auditpackage.setremark.';
 
   COMMENT ON COLUMN "CLASSES_AUDIT"."ACTION" IS 'A short code for the action, ''I'' for insert, ''U'' for update, ''D'' for delete.';
 
   COMMENT ON TABLE "CLASSES_AUDIT"  IS 'Audit table storing the history of table classes.';
  GRANT INSERT ON "CLASSES_AUDIT" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "CLASSES_AUDIT" TO "ENZYME_COMMITTEE";
 
  GRANT INSERT ON "CLASSES_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "CLASSES_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "CLASSES_AUDIT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "CLASSES_AUDIT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "CLASSES_AUDIT" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table COFACTORS
--------------------------------------------------------

  CREATE TABLE "COFACTORS" 
   (	"ENZYME_ID" NUMBER(7,0), 
	"SOURCE" VARCHAR2(6 BYTE), 
	"STATUS" VARCHAR2(2 BYTE), 
	"ORDER_IN" NUMBER(3,0) DEFAULT 1, 
	"COFACTOR_TEXT" VARCHAR2(1000 BYTE), 
	"WEB_VIEW" VARCHAR2(50 BYTE), 
	"COMPOUND_ID" NUMBER(15,0), 
	"OPERATOR" VARCHAR2(5 BYTE), 
	"OP_GRP" VARCHAR2(10 BYTE)
   ) ;
 

   COMMENT ON COLUMN "COFACTORS"."ENZYME_ID" IS 'Enzyme_id is used as an internal unique identifier throughout the database as some entries don''t have an EC number, e.g. suggested entries. Example is ''70001'', ''9945'', etc';
 
   COMMENT ON COLUMN "COFACTORS"."SOURCE" IS 'Database internal code, for example ''INTENZ'', ''IUBMB'', ''BRENDA'', ''SIB'' etc. Each enzyme belongs to one of them.';
 
   COMMENT ON COLUMN "COFACTORS"."STATUS" IS 'Status code, for example ''OK'', ''PR''.';
 
   COMMENT ON COLUMN "COFACTORS"."ORDER_IN" IS 'Number to be used to order cofactors.';
 
   COMMENT ON COLUMN "COFACTORS"."COFACTOR_TEXT" IS 'Cofactor_text stores the cofactors on enzymes as free text field. Later on the cofactor might get a detailed structure.';
 
   COMMENT ON COLUMN "COFACTORS"."WEB_VIEW" IS '(not used: cofactors are shown in INTENZ and ENZYME views)';
 
   COMMENT ON COLUMN "COFACTORS"."COMPOUND_ID" IS 'Internal ID of the compound acting as cofactor.';
 
   COMMENT ON COLUMN "COFACTORS"."OPERATOR" IS 'Operator (AND, OR) applied to cofactors, if more than one per enzyme.';
 
   COMMENT ON COLUMN "COFACTORS"."OP_GRP" IS 'Operator group to insert the compound into (in complex cofactor setups).';
 
   COMMENT ON TABLE "COFACTORS"  IS 'Cofactors, table storing cofactors on enzymes. Cofactors are free text notes on an enzyme, and may be used to convey any useful information.';
  GRANT DELETE ON "COFACTORS" TO "ENZYME_COMMITTEE";
 
  GRANT INSERT ON "COFACTORS" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "COFACTORS" TO "ENZYME_COMMITTEE";
 
  GRANT UPDATE ON "COFACTORS" TO "ENZYME_COMMITTEE";
 
  GRANT DELETE ON "COFACTORS" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "COFACTORS" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "COFACTORS" TO "ENZYME_CURATOR";
 
  GRANT UPDATE ON "COFACTORS" TO "ENZYME_CURATOR";
 
  GRANT DELETE ON "COFACTORS" TO "ENZYME_PRODUCTION";
 
  GRANT INSERT ON "COFACTORS" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "COFACTORS" TO "ENZYME_PRODUCTION";
 
  GRANT UPDATE ON "COFACTORS" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "COFACTORS" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table COFACTORS_AUDIT
--------------------------------------------------------

  CREATE TABLE "COFACTORS_AUDIT" 
   (	"ENZYME_ID" NUMBER(7,0), 
	"SOURCE" VARCHAR2(6 BYTE), 
	"STATUS" VARCHAR2(2 BYTE), 
	"ORDER_IN" NUMBER(3,0), 
	"COFACTOR_TEXT" VARCHAR2(1000 BYTE), 
	"TIMESTAMP" DATE, 
	"AUDIT_ID" NUMBER(15,0), 
	"DBUSER" VARCHAR2(30 BYTE), 
	"OSUSER" VARCHAR2(30 BYTE), 
	"REMARK" VARCHAR2(50 BYTE), 
	"ACTION" VARCHAR2(3 BYTE), 
	"WEB_VIEW" VARCHAR2(50 BYTE), 
	"COMPOUND_ID" NUMBER(15,0), 
	"OPERATOR" VARCHAR2(5 BYTE), 
	"OP_GRP" VARCHAR2(10 BYTE)
   ) ;
 

   COMMENT ON COLUMN "COFACTORS_AUDIT"."ENZYME_ID" IS 'Audit column';
 
   COMMENT ON COLUMN "COFACTORS_AUDIT"."SOURCE" IS 'Audit column';
 
   COMMENT ON COLUMN "COFACTORS_AUDIT"."STATUS" IS 'Audit column';
 
   COMMENT ON COLUMN "COFACTORS_AUDIT"."ORDER_IN" IS 'Audit column';
 
   COMMENT ON COLUMN "COFACTORS_AUDIT"."COFACTOR_TEXT" IS 'Audit column';
 
   COMMENT ON COLUMN "COFACTORS_AUDIT"."TIMESTAMP" IS 'Date and time of the action.';
 
   COMMENT ON COLUMN "COFACTORS_AUDIT"."AUDIT_ID" IS 'Serial number of audit action.';
 
   COMMENT ON COLUMN "COFACTORS_AUDIT"."DBUSER" IS 'Oracle account name of the user doing the action.';
 
   COMMENT ON COLUMN "COFACTORS_AUDIT"."OSUSER" IS 'Unix account of the user doing the action.';
 
   COMMENT ON COLUMN "COFACTORS_AUDIT"."REMARK" IS 'Optional remark, set by calling enzyme.auditpackage.setremark.';
 
   COMMENT ON COLUMN "COFACTORS_AUDIT"."ACTION" IS 'A short code for the action, ''I'' for insert, ''U'' for update, ''D'' for delete.';
 
   COMMENT ON TABLE "COFACTORS_AUDIT"  IS 'Audit table storing the history of table cofactors.';
  GRANT INSERT ON "COFACTORS_AUDIT" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "COFACTORS_AUDIT" TO "ENZYME_COMMITTEE";
 
  GRANT INSERT ON "COFACTORS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "COFACTORS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "COFACTORS_AUDIT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "COFACTORS_AUDIT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "COFACTORS_AUDIT" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table COMMENTS
--------------------------------------------------------

  CREATE TABLE "COMMENTS" 
   (	"ENZYME_ID" NUMBER(7,0), 
	"COMMENT_TEXT" VARCHAR2(2000 BYTE), 
	"ORDER_IN" NUMBER(3,0) DEFAULT 1, 
	"STATUS" VARCHAR2(2 BYTE), 
	"SOURCE" VARCHAR2(6 BYTE), 
	"WEB_VIEW" VARCHAR2(50 BYTE)
   ) ;
 

   COMMENT ON COLUMN "COMMENTS"."ENZYME_ID" IS 'Enzyme_id is used as an internal unique identifier throughout the database as some entries don''t have an EC number, e.g. suggested entries. Example is ''70001'', ''9945'', etc';
 
   COMMENT ON COLUMN "COMMENTS"."COMMENT_TEXT" IS 'Comment_text stores the comments on enzymes as free text field. Later the comment will get a detailed structure.';
 
   COMMENT ON COLUMN "COMMENTS"."ORDER_IN" IS 'The column order_in is of no use at the moment as a comment will be stored as a single text field.';
 
   COMMENT ON COLUMN "COMMENTS"."STATUS" IS 'Internal code of status, for example ''NO'', ''UN'', ''SN'', ''OK'', etc.';
 
   COMMENT ON COLUMN "COMMENTS"."SOURCE" IS 'Database internal code, for example ''INTENZ'', ''IUBMB'', ''BRENDA'', ''SIB'' etc. Each enzyme belongs to one of them.';
 
   COMMENT ON COLUMN "COMMENTS"."WEB_VIEW" IS 'Web view  in which to show the comment.';
 
   COMMENT ON TABLE "COMMENTS"  IS 'Comments, table storing comments on enzymes. Comments are free text notes on an enzyme, and may be used to convey any useful information.';
  GRANT DELETE ON "COMMENTS" TO "ENZYME_COMMITTEE";
 
  GRANT INSERT ON "COMMENTS" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "COMMENTS" TO "ENZYME_COMMITTEE";
 
  GRANT UPDATE ON "COMMENTS" TO "ENZYME_COMMITTEE";
 
  GRANT DELETE ON "COMMENTS" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "COMMENTS" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "COMMENTS" TO "ENZYME_CURATOR";
 
  GRANT UPDATE ON "COMMENTS" TO "ENZYME_CURATOR";
 
  GRANT DELETE ON "COMMENTS" TO "ENZYME_PRODUCTION";
 
  GRANT INSERT ON "COMMENTS" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "COMMENTS" TO "ENZYME_PRODUCTION";
 
  GRANT UPDATE ON "COMMENTS" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "COMMENTS" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table COMMENTS_AUDIT
--------------------------------------------------------

  CREATE TABLE "COMMENTS_AUDIT" 
   (	"ENZYME_ID" NUMBER(7,0), 
	"COMMENT_TEXT" VARCHAR2(2000 BYTE), 
	"ORDER_IN" NUMBER(3,0), 
	"STATUS" VARCHAR2(2 BYTE), 
	"SOURCE" VARCHAR2(6 BYTE), 
	"TIMESTAMP" DATE, 
	"AUDIT_ID" NUMBER(15,0), 
	"DBUSER" VARCHAR2(30 BYTE), 
	"OSUSER" VARCHAR2(30 BYTE), 
	"REMARK" VARCHAR2(50 BYTE), 
	"ACTION" VARCHAR2(3 BYTE), 
	"WEB_VIEW" VARCHAR2(50 BYTE)
   ) ;
 

   COMMENT ON COLUMN "COMMENTS_AUDIT"."ENZYME_ID" IS 'Audit column';
 
   COMMENT ON COLUMN "COMMENTS_AUDIT"."COMMENT_TEXT" IS 'Audit column';
 
   COMMENT ON COLUMN "COMMENTS_AUDIT"."ORDER_IN" IS 'Audit column';
 
   COMMENT ON COLUMN "COMMENTS_AUDIT"."STATUS" IS 'Audit column';
 
   COMMENT ON COLUMN "COMMENTS_AUDIT"."SOURCE" IS 'Audit column';
 
   COMMENT ON COLUMN "COMMENTS_AUDIT"."TIMESTAMP" IS 'Date and time of the action.';
 
   COMMENT ON COLUMN "COMMENTS_AUDIT"."AUDIT_ID" IS 'Serial number of audit action.';
 
   COMMENT ON COLUMN "COMMENTS_AUDIT"."DBUSER" IS 'Oracle account name of the user doing the action.';
 
   COMMENT ON COLUMN "COMMENTS_AUDIT"."OSUSER" IS 'Unix account of the user doing the action.';
 
   COMMENT ON COLUMN "COMMENTS_AUDIT"."REMARK" IS 'Optional remark, set by calling enzyme.auditpackage.setremark.';
 
   COMMENT ON COLUMN "COMMENTS_AUDIT"."ACTION" IS 'A short code for the action, ''I'' for insert, ''U'' for update, ''D'' for deletc.';
 
   COMMENT ON TABLE "COMMENTS_AUDIT"  IS 'Audit table storing the history of table comments.';
  GRANT INSERT ON "COMMENTS_AUDIT" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "COMMENTS_AUDIT" TO "ENZYME_COMMITTEE";
 
  GRANT INSERT ON "COMMENTS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "COMMENTS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "COMMENTS_AUDIT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "COMMENTS_AUDIT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "COMMENTS_AUDIT" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table COMPLEX_REACTIONS
--------------------------------------------------------

  CREATE TABLE "COMPLEX_REACTIONS" 
   (	"PARENT_ID" NUMBER(7,0), 
	"CHILD_ID" NUMBER(7,0), 
	"ORDER_IN" NUMBER(3,0) DEFAULT 1, 
	"COEFFICIENT" NUMBER(1,0) DEFAULT 1
   ) ;
 

   COMMENT ON COLUMN "COMPLEX_REACTIONS"."PARENT_ID" IS 'Rhea ID of the overall (stepwise/coupling) reaction.';
 
   COMMENT ON COLUMN "COMPLEX_REACTIONS"."CHILD_ID" IS 'Rhea ID of the step/coupled reaction.';
 
   COMMENT ON COLUMN "COMPLEX_REACTIONS"."ORDER_IN" IS 'Order of the steps (only for multi-step reactions, not for coupled ones).';
 
   COMMENT ON COLUMN "COMPLEX_REACTIONS"."COEFFICIENT" IS 'Stoichiometric coefficient applied to the whole step/coupled reaction.';
 
   COMMENT ON TABLE "COMPLEX_REACTIONS"  IS 'Table connecting stepwise/coupling reactons with their steps/coupled reactions.';
  GRANT SELECT ON "COMPLEX_REACTIONS" TO "ENZYME_COMMITTEE";
 
  GRANT DELETE ON "COMPLEX_REACTIONS" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "COMPLEX_REACTIONS" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "COMPLEX_REACTIONS" TO "ENZYME_CURATOR";
 
  GRANT UPDATE ON "COMPLEX_REACTIONS" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "COMPLEX_REACTIONS" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "COMPLEX_REACTIONS" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table COMPLEX_REACTIONS_AUDIT
--------------------------------------------------------

  CREATE TABLE "COMPLEX_REACTIONS_AUDIT" 
   (	"PARENT_ID" NUMBER(7,0), 
	"CHILD_ID" NUMBER(7,0), 
	"ORDER_IN" NUMBER(3,0), 
	"COEFFICIENT" NUMBER(1,0), 
	"TIMESTAMP" DATE, 
	"AUDIT_ID" NUMBER(15,0), 
	"DBUSER" VARCHAR2(30 BYTE), 
	"OSUSER" VARCHAR2(30 BYTE), 
	"REMARK" VARCHAR2(500 BYTE), 
	"ACTION" VARCHAR2(3 BYTE)
   ) ;
 

   COMMENT ON TABLE "COMPLEX_REACTIONS_AUDIT"  IS 'Audit table for complex_reactions.';
  GRANT DELETE ON "COMPLEX_REACTIONS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "COMPLEX_REACTIONS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "COMPLEX_REACTIONS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT UPDATE ON "COMPLEX_REACTIONS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "COMPLEX_REACTIONS_AUDIT" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table COMPOUND_DATA
--------------------------------------------------------

  CREATE TABLE "COMPOUND_DATA" 
   (	"COMPOUND_ID" NUMBER(15,0), 
	"NAME" VARCHAR2(4000 BYTE), 
	"FORMULA" VARCHAR2(512 BYTE), 
	"CHARGE" NUMBER(2,0) DEFAULT 0, 
	"SOURCE" VARCHAR2(6 BYTE), 
	"ACCESSION" VARCHAR2(256 BYTE), 
	"CHILD_ACCESSION" VARCHAR2(256 BYTE), 
	"PUBLISHED" CHAR(1 BYTE)
   ) ;
 

   COMMENT ON COLUMN "COMPOUND_DATA"."COMPOUND_ID" IS 'Internal compound ID (does not change with ChEBI updates).';
 
   COMMENT ON COLUMN "COMPOUND_DATA"."NAME" IS 'Accepted Rhea name for the compound.';
 
   COMMENT ON COLUMN "COMPOUND_DATA"."FORMULA" IS 'Chemical formula.';
 
   COMMENT ON COLUMN "COMPOUND_DATA"."CHARGE" IS 'Electrical charge.';
 
   COMMENT ON COLUMN "COMPOUND_DATA"."SOURCE" IS 'Source database of compound data.';
 
   COMMENT ON COLUMN "COMPOUND_DATA"."ACCESSION" IS 'Accession number of the compound in the source database.';
 
   COMMENT ON COLUMN "COMPOUND_DATA"."CHILD_ACCESSION" IS 'Accession of the child compound, in case it was merged in the source';
 
   COMMENT ON COLUMN "COMPOUND_DATA"."PUBLISHED" IS 'State of the compound accession: publicly available or not';
 
   COMMENT ON TABLE "COMPOUND_DATA"  IS 'Table storing essential data about compounds.';
  GRANT SELECT ON "COMPOUND_DATA" TO "ENZYME_COMMITTEE";
 
  GRANT DELETE ON "COMPOUND_DATA" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "COMPOUND_DATA" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "COMPOUND_DATA" TO "ENZYME_CURATOR";
 
  GRANT UPDATE ON "COMPOUND_DATA" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "COMPOUND_DATA" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "COMPOUND_DATA" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table COMPOUND_DATA_AUDIT
--------------------------------------------------------

  CREATE TABLE "COMPOUND_DATA_AUDIT" 
   (	"COMPOUND_ID" NUMBER(15,0), 
	"NAME" VARCHAR2(4000 BYTE), 
	"FORMULA" VARCHAR2(512 BYTE), 
	"CHARGE" NUMBER(2,0), 
	"SOURCE" VARCHAR2(6 BYTE), 
	"ACCESSION" VARCHAR2(256 BYTE), 
	"CHILD_ACCESSION" VARCHAR2(256 BYTE), 
	"PUBLISHED" CHAR(1 BYTE), 
	"TIMESTAMP" DATE, 
	"AUDIT_ID" NUMBER(15,0), 
	"DBUSER" VARCHAR2(30 BYTE), 
	"OSUSER" VARCHAR2(30 BYTE), 
	"REMARK" VARCHAR2(50 BYTE), 
	"ACTION" VARCHAR2(3 BYTE)
   ) ;
 

   COMMENT ON TABLE "COMPOUND_DATA_AUDIT"  IS 'Audit table for compound_data.';
  GRANT SELECT ON "COMPOUND_DATA_AUDIT" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table COMPOUND_DATA_UPDATES
--------------------------------------------------------

  CREATE TABLE "COMPOUND_DATA_UPDATES" 
   (	"COMPOUND_ID" NUMBER(15,0), 
	"NAME" VARCHAR2(4000 BYTE), 
	"FORMULA" VARCHAR2(512 BYTE), 
	"CHARGE" NUMBER(2,0), 
	"SOURCE" VARCHAR2(6 BYTE), 
	"ACCESSION" VARCHAR2(256 BYTE), 
	"CHILD_ACCESSION" VARCHAR2(256 BYTE), 
	"PUBLISHED" CHAR(1 BYTE)
   ) ;
 

   COMMENT ON TABLE "COMPOUND_DATA_UPDATES"  IS 'Table with updated data for existing compounds in compound_data table.';
  GRANT SELECT ON "COMPOUND_DATA_UPDATES" TO "ENZYME_COMMITTEE";
 
  GRANT DELETE ON "COMPOUND_DATA_UPDATES" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "COMPOUND_DATA_UPDATES" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "COMPOUND_DATA_UPDATES" TO "ENZYME_CURATOR";
 
  GRANT UPDATE ON "COMPOUND_DATA_UPDATES" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "COMPOUND_DATA_UPDATES" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "COMPOUND_DATA_UPDATES" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table CV_COEFF_TYPES
--------------------------------------------------------

  CREATE TABLE "CV_COEFF_TYPES" 
   (	"CODE" VARCHAR2(1 BYTE), 
	"EXPLANATION" VARCHAR2(50 BYTE)
   ) ;
 

   COMMENT ON COLUMN "CV_COEFF_TYPES"."CODE" IS 'Internal database code.';
 
   COMMENT ON COLUMN "CV_COEFF_TYPES"."EXPLANATION" IS 'Explanation of the coefficient type.';
 
   COMMENT ON TABLE "CV_COEFF_TYPES"  IS 'Types of stoichiometric coefficients.';
  GRANT SELECT ON "CV_COEFF_TYPES" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table CV_COMP_PUB_AVAIL
--------------------------------------------------------

  CREATE TABLE "CV_COMP_PUB_AVAIL" 
   (	"CODE" CHAR(1 BYTE), 
	"EXPLANATION" VARCHAR2(110 BYTE)
   ) ;
 

   COMMENT ON COLUMN "CV_COMP_PUB_AVAIL"."CODE" IS 'Code for the compound availability.';
 
   COMMENT ON COLUMN "CV_COMP_PUB_AVAIL"."EXPLANATION" IS 'Description of the availability.';
 
   COMMENT ON TABLE "CV_COMP_PUB_AVAIL"  IS 'Allowed values for compound availability.';
  GRANT SELECT ON "CV_COMP_PUB_AVAIL" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table CV_DATABASES
--------------------------------------------------------

  CREATE TABLE "CV_DATABASES" 
   (	"CODE" VARCHAR2(6 BYTE), 
	"NAME" VARCHAR2(30 BYTE), 
	"DISPLAY_NAME" VARCHAR2(200 BYTE), 
	"SORT_ORDER" NUMBER(2,0)
   ) ;
 

   COMMENT ON COLUMN "CV_DATABASES"."CODE" IS 'Database internal code, for example ''INTENZ'', ''IUBMB'', ''S'', etc.';
 
   COMMENT ON COLUMN "CV_DATABASES"."NAME" IS 'Name of the database, for example ''INTENZ'', ''IUBMB'', ''SWISSPROT'', etc.';
 
   COMMENT ON COLUMN "CV_DATABASES"."DISPLAY_NAME" IS 'Displayed name of the database, for example ''IntEnz'', ''IUBMB enzyme list'', ''SWISS-PROT'', etc.';
 
   COMMENT ON COLUMN "CV_DATABASES"."SORT_ORDER" IS 'Display order to get stable output.';
 
   COMMENT ON TABLE "CV_DATABASES"  IS 'Controlled list of external databases, for example IntEnz, IUBMB, SWISS-PROT, etc.';
  GRANT SELECT ON "CV_DATABASES" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "CV_DATABASES" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "CV_DATABASES" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "CV_DATABASES" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table CV_DATABASES_AUDIT
--------------------------------------------------------

  CREATE TABLE "CV_DATABASES_AUDIT" 
   (	"CODE" VARCHAR2(6 BYTE), 
	"NAME" VARCHAR2(30 BYTE), 
	"DISPLAY_NAME" VARCHAR2(200 BYTE), 
	"SORT_ORDER" NUMBER(2,0), 
	"TIMESTAMP" DATE, 
	"AUDIT_ID" NUMBER(15,0), 
	"DBUSER" VARCHAR2(30 BYTE), 
	"OSUSER" VARCHAR2(30 BYTE), 
	"REMARK" VARCHAR2(50 BYTE), 
	"ACTION" VARCHAR2(3 BYTE)
   ) ;
 

   COMMENT ON COLUMN "CV_DATABASES_AUDIT"."CODE" IS 'Audit column';
 
   COMMENT ON COLUMN "CV_DATABASES_AUDIT"."NAME" IS 'Audit column';
 
   COMMENT ON COLUMN "CV_DATABASES_AUDIT"."DISPLAY_NAME" IS 'Audit column';
 
   COMMENT ON COLUMN "CV_DATABASES_AUDIT"."SORT_ORDER" IS 'Audit column';
 
   COMMENT ON COLUMN "CV_DATABASES_AUDIT"."TIMESTAMP" IS 'Date and time of the action.';
 
   COMMENT ON COLUMN "CV_DATABASES_AUDIT"."AUDIT_ID" IS 'Serial number of audit action.';
 
   COMMENT ON COLUMN "CV_DATABASES_AUDIT"."DBUSER" IS 'Oracle account name of the user doing the action.';
 
   COMMENT ON COLUMN "CV_DATABASES_AUDIT"."OSUSER" IS 'Unix account of the user doing the action.';
 
   COMMENT ON COLUMN "CV_DATABASES_AUDIT"."REMARK" IS 'Optional remark, set by calling enzyme.auditpackage.setremark.';
 
   COMMENT ON COLUMN "CV_DATABASES_AUDIT"."ACTION" IS 'A short code for the action, ''I'' for insert, ''U'' for update, ''D'' for delete.';
 
   COMMENT ON TABLE "CV_DATABASES_AUDIT"  IS 'Audit table storing the history of table cv_databases.';
  GRANT SELECT ON "CV_DATABASES_AUDIT" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "CV_DATABASES_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "CV_DATABASES_AUDIT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "CV_DATABASES_AUDIT" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table CV_LOCATION
--------------------------------------------------------

  CREATE TABLE "CV_LOCATION" 
   (	"CODE" VARCHAR2(1 BYTE), 
	"TEXT" VARCHAR2(10 BYTE)
   ) ;
 

   COMMENT ON COLUMN "CV_LOCATION"."CODE" IS 'Internal code for the location.';
 
   COMMENT ON COLUMN "CV_LOCATION"."TEXT" IS 'Human readable location.';
 
   COMMENT ON TABLE "CV_LOCATION"  IS 'Controlled vocabulary for relative locations of reaction participants.';
  GRANT SELECT ON "CV_LOCATION" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table CV_NAME_CLASSES
--------------------------------------------------------

  CREATE TABLE "CV_NAME_CLASSES" 
   (	"CODE" VARCHAR2(3 BYTE), 
	"NAME" VARCHAR2(30 BYTE), 
	"DISPLAY_NAME" VARCHAR2(200 BYTE), 
	"SORT_ORDER" NUMBER(2,0)
   ) ;
 

   COMMENT ON COLUMN "CV_NAME_CLASSES"."CODE" IS 'Internal code of name_class, e.g. ''SYS'' for systematic name.';
 
   COMMENT ON COLUMN "CV_NAME_CLASSES"."NAME" IS 'Name of name_class, e.g. ''SYSTEMATIC'' for systematic name.';
 
   COMMENT ON COLUMN "CV_NAME_CLASSES"."DISPLAY_NAME" IS 'Displayed name of name_class, e.g. ''systematic''.';
 
   COMMENT ON COLUMN "CV_NAME_CLASSES"."SORT_ORDER" IS 'Display order to get stable output.';
 
   COMMENT ON TABLE "CV_NAME_CLASSES"  IS 'Controlled list of values for name classes in table names. There are three types of names: common name, systematic name, and other name(s).';
  GRANT SELECT ON "CV_NAME_CLASSES" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "CV_NAME_CLASSES" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "CV_NAME_CLASSES" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "CV_NAME_CLASSES" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table CV_NAME_CLASSES_AUDIT
--------------------------------------------------------

  CREATE TABLE "CV_NAME_CLASSES_AUDIT" 
   (	"CODE" VARCHAR2(3 BYTE), 
	"NAME" VARCHAR2(30 BYTE), 
	"DISPLAY_NAME" VARCHAR2(200 BYTE), 
	"SORT_ORDER" NUMBER(2,0), 
	"TIMESTAMP" DATE, 
	"AUDIT_ID" NUMBER(15,0), 
	"DBUSER" VARCHAR2(30 BYTE), 
	"OSUSER" VARCHAR2(30 BYTE), 
	"REMARK" VARCHAR2(50 BYTE), 
	"ACTION" VARCHAR2(3 BYTE)
   ) ;
 

   COMMENT ON COLUMN "CV_NAME_CLASSES_AUDIT"."CODE" IS 'Audit column';
 
   COMMENT ON COLUMN "CV_NAME_CLASSES_AUDIT"."NAME" IS 'Audit column';
 
   COMMENT ON COLUMN "CV_NAME_CLASSES_AUDIT"."DISPLAY_NAME" IS 'Audit column';
 
   COMMENT ON COLUMN "CV_NAME_CLASSES_AUDIT"."SORT_ORDER" IS 'Audit column';
 
   COMMENT ON COLUMN "CV_NAME_CLASSES_AUDIT"."TIMESTAMP" IS 'Date and time of the action.';
 
   COMMENT ON COLUMN "CV_NAME_CLASSES_AUDIT"."AUDIT_ID" IS 'Serial number of audit action.';
 
   COMMENT ON COLUMN "CV_NAME_CLASSES_AUDIT"."DBUSER" IS 'Oracle account name of the user doing the action.';
 
   COMMENT ON COLUMN "CV_NAME_CLASSES_AUDIT"."OSUSER" IS 'Unix account of the user doing the action.';
 
   COMMENT ON COLUMN "CV_NAME_CLASSES_AUDIT"."REMARK" IS 'Optional remark, set by calling enzyme.auditpackage.setremark.';
 
   COMMENT ON COLUMN "CV_NAME_CLASSES_AUDIT"."ACTION" IS 'A short code for the action, ''I'' for insert, ''U'' for update, ''D'' for delete.';
 
   COMMENT ON TABLE "CV_NAME_CLASSES_AUDIT"  IS 'Audit table storing the history of table cv_name_classes.';
  GRANT SELECT ON "CV_NAME_CLASSES_AUDIT" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "CV_NAME_CLASSES_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "CV_NAME_CLASSES_AUDIT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "CV_NAME_CLASSES_AUDIT" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table CV_OPERATORS
--------------------------------------------------------

  CREATE TABLE "CV_OPERATORS" 
   (	"CODE" VARCHAR2(5 BYTE), 
	"EXPLANATION" VARCHAR2(50 BYTE)
   ) ;
 

   COMMENT ON COLUMN "CV_OPERATORS"."CODE" IS 'Internal code for the operator.';
 
   COMMENT ON COLUMN "CV_OPERATORS"."EXPLANATION" IS 'Description of the operator.';
 
   COMMENT ON TABLE "CV_OPERATORS"  IS 'CV for operators applied to combinations of cofactors.';
  GRANT SELECT ON "CV_OPERATORS" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table CV_REACTION_DIRECTIONS
--------------------------------------------------------

  CREATE TABLE "CV_REACTION_DIRECTIONS" 
   (	"DIRECTION" VARCHAR2(20 BYTE), 
	"CODE" VARCHAR2(2 BYTE)
   ) ;
 

   COMMENT ON COLUMN "CV_REACTION_DIRECTIONS"."DIRECTION" IS 'Textual value of the directionality.';
 
   COMMENT ON COLUMN "CV_REACTION_DIRECTIONS"."CODE" IS 'Internal code for the directionality.';
 
   COMMENT ON TABLE "CV_REACTION_DIRECTIONS"  IS 'CV for reaction directions.';
  GRANT SELECT ON "CV_REACTION_DIRECTIONS" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table CV_REACTION_QUALIFIERS
--------------------------------------------------------

  CREATE TABLE "CV_REACTION_QUALIFIERS" 
   (	"QUALIFIER" VARCHAR2(20 BYTE), 
	"CODE" VARCHAR2(2 BYTE)
   ) ;
 

   COMMENT ON COLUMN "CV_REACTION_QUALIFIERS"."QUALIFIER" IS 'Textual value of the qualifier.';
 
   COMMENT ON COLUMN "CV_REACTION_QUALIFIERS"."CODE" IS 'Internal code for the qualifier.';
 
   COMMENT ON TABLE "CV_REACTION_QUALIFIERS"  IS 'CV for qualifiers applied to reactions.';
  GRANT SELECT ON "CV_REACTION_QUALIFIERS" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table CV_REACTION_SIDES
--------------------------------------------------------

  CREATE TABLE "CV_REACTION_SIDES" 
   (	"CODE" VARCHAR2(1 BYTE), 
	"SIDE" VARCHAR2(5 BYTE)
   ) ;
 

   COMMENT ON COLUMN "CV_REACTION_SIDES"."CODE" IS 'Internal code for the reaction side.';
 
   COMMENT ON COLUMN "CV_REACTION_SIDES"."SIDE" IS 'Textual value of the reaction side.';
 
   COMMENT ON TABLE "CV_REACTION_SIDES"  IS 'CV for reaction sides.';
  GRANT SELECT ON "CV_REACTION_SIDES" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table CV_STATUS
--------------------------------------------------------

  CREATE TABLE "CV_STATUS" 
   (	"CODE" VARCHAR2(2 BYTE), 
	"NAME" VARCHAR2(30 BYTE), 
	"DISPLAY_NAME" VARCHAR2(200 BYTE), 
	"SORT_ORDER" NUMBER(2,0)
   ) ;
 

   COMMENT ON COLUMN "CV_STATUS"."CODE" IS 'Internal code of status, for example ''NO'', ''UN'', ''SN'', ''OK'', etc.';
 
   COMMENT ON COLUMN "CV_STATUS"."NAME" IS 'Name of status, for example ''NONE'', ''UNKNOWN'', ''SUGGESTED NEW'', ''APPROVED'', etc.';
 
   COMMENT ON COLUMN "CV_STATUS"."DISPLAY_NAME" IS 'Displayed name of status, for example ''no status'', ''unknown'', ''suggested'', ''approved'', etc.';
 
   COMMENT ON COLUMN "CV_STATUS"."SORT_ORDER" IS 'Display order to get stable output.';
 
   COMMENT ON TABLE "CV_STATUS"  IS 'Controlled list of values for ''status'' columns, e.g. approved, proposed, suggested, etc.';
  GRANT SELECT ON "CV_STATUS" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "CV_STATUS" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "CV_STATUS" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "CV_STATUS" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table CV_STATUS_AUDIT
--------------------------------------------------------

  CREATE TABLE "CV_STATUS_AUDIT" 
   (	"CODE" VARCHAR2(2 BYTE), 
	"NAME" VARCHAR2(30 BYTE), 
	"DISPLAY_NAME" VARCHAR2(200 BYTE), 
	"SORT_ORDER" NUMBER(2,0), 
	"TIMESTAMP" DATE, 
	"AUDIT_ID" NUMBER(15,0), 
	"DBUSER" VARCHAR2(30 BYTE), 
	"OSUSER" VARCHAR2(30 BYTE), 
	"REMARK" VARCHAR2(50 BYTE), 
	"ACTION" VARCHAR2(3 BYTE)
   ) ;
 

   COMMENT ON COLUMN "CV_STATUS_AUDIT"."CODE" IS 'Audit column';
 
   COMMENT ON COLUMN "CV_STATUS_AUDIT"."NAME" IS 'Audit column';
 
   COMMENT ON COLUMN "CV_STATUS_AUDIT"."DISPLAY_NAME" IS 'Audit column';
 
   COMMENT ON COLUMN "CV_STATUS_AUDIT"."SORT_ORDER" IS 'Audit column';
 
   COMMENT ON COLUMN "CV_STATUS_AUDIT"."TIMESTAMP" IS 'Date and time of the action.';
 
   COMMENT ON COLUMN "CV_STATUS_AUDIT"."AUDIT_ID" IS 'Serial number of audit action.';
 
   COMMENT ON COLUMN "CV_STATUS_AUDIT"."DBUSER" IS 'Oracle account name of the user doing the action.';
 
   COMMENT ON COLUMN "CV_STATUS_AUDIT"."OSUSER" IS 'Unix account of the user doing the action.';
 
   COMMENT ON COLUMN "CV_STATUS_AUDIT"."REMARK" IS 'Optional remark, set by calling enzyme.auditpackage.setremark.';
 
   COMMENT ON COLUMN "CV_STATUS_AUDIT"."ACTION" IS 'A short code for the action, ''I'' for insert, ''U'' for update, ''D'' for delete.';
 
   COMMENT ON TABLE "CV_STATUS_AUDIT"  IS 'Audit table storing the history of table cv_status.';
  GRANT SELECT ON "CV_STATUS_AUDIT" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "CV_STATUS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "CV_STATUS_AUDIT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "CV_STATUS_AUDIT" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table CV_VIEW
--------------------------------------------------------

  CREATE TABLE "CV_VIEW" 
   (	"CODE" VARCHAR2(20 BYTE), 
	"DESCRIPTION" VARCHAR2(1000 BYTE)
   ) ;
 

   COMMENT ON COLUMN "CV_VIEW"."CODE" IS 'The code defining in which view the information will be displayed.';
 
   COMMENT ON COLUMN "CV_VIEW"."DESCRIPTION" IS 'A short description about the code.';
 
   COMMENT ON TABLE "CV_VIEW"  IS 'Stores all possible view codes used by the web application.';
  GRANT DELETE ON "CV_VIEW" TO "ENZYME_COMMITTEE";
 
  GRANT INSERT ON "CV_VIEW" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "CV_VIEW" TO "ENZYME_COMMITTEE";
 
  GRANT UPDATE ON "CV_VIEW" TO "ENZYME_COMMITTEE";
 
  GRANT DELETE ON "CV_VIEW" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "CV_VIEW" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "CV_VIEW" TO "ENZYME_CURATOR";
 
  GRANT UPDATE ON "CV_VIEW" TO "ENZYME_CURATOR";
 
  GRANT DELETE ON "CV_VIEW" TO "ENZYME_PRODUCTION";
 
  GRANT INSERT ON "CV_VIEW" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "CV_VIEW" TO "ENZYME_PRODUCTION";
 
  GRANT UPDATE ON "CV_VIEW" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "CV_VIEW" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table CV_VIEW_AUDIT
--------------------------------------------------------

  CREATE TABLE "CV_VIEW_AUDIT" 
   (	"CODE" VARCHAR2(20 BYTE), 
	"DESCRIPTION" VARCHAR2(1000 BYTE), 
	"TIMESTAMP" DATE, 
	"AUDIT_ID" NUMBER(15,0), 
	"DBUSER" VARCHAR2(30 BYTE), 
	"OSUSER" VARCHAR2(30 BYTE), 
	"REMARK" VARCHAR2(50 BYTE), 
	"ACTION" VARCHAR2(3 BYTE)
   ) ;
 

   COMMENT ON COLUMN "CV_VIEW_AUDIT"."CODE" IS 'Audit column';
 
   COMMENT ON COLUMN "CV_VIEW_AUDIT"."DESCRIPTION" IS 'Audit column';
 
   COMMENT ON COLUMN "CV_VIEW_AUDIT"."TIMESTAMP" IS 'Date and time of the action.';
 
   COMMENT ON COLUMN "CV_VIEW_AUDIT"."AUDIT_ID" IS 'Serial number of audit action.';
 
   COMMENT ON COLUMN "CV_VIEW_AUDIT"."DBUSER" IS 'Oracle account name of the user doing the action.';
 
   COMMENT ON COLUMN "CV_VIEW_AUDIT"."OSUSER" IS 'Unix account of the user doing the action.';
 
   COMMENT ON COLUMN "CV_VIEW_AUDIT"."REMARK" IS 'Optional remark, set by calling enzyme.auditpackage.setremark.';
 
   COMMENT ON COLUMN "CV_VIEW_AUDIT"."ACTION" IS 'A short code for the action, ''I'' for insert, ''U'' for update, ''D'' for delete.';
 
   COMMENT ON TABLE "CV_VIEW_AUDIT"  IS 'Audit table storing the history of table cv_view.';
  GRANT INSERT ON "CV_VIEW_AUDIT" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "CV_VIEW_AUDIT" TO "ENZYME_COMMITTEE";
 
  GRANT INSERT ON "CV_VIEW_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "CV_VIEW_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "CV_VIEW_AUDIT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "CV_VIEW_AUDIT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "CV_VIEW_AUDIT" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table CV_WARNINGS
--------------------------------------------------------

  CREATE TABLE "CV_WARNINGS" 
   (	"CODE" VARCHAR2(3 BYTE), 
	"NAME" VARCHAR2(30 BYTE), 
	"DISPLAY_NAME" VARCHAR2(200 BYTE), 
	"SORT_ORDER" NUMBER(2,0)
   ) ;
 

   COMMENT ON COLUMN "CV_WARNINGS"."CODE" IS 'Internal code of warning, e.g. ''OBS'' for obsolete.';
 
   COMMENT ON COLUMN "CV_WARNINGS"."NAME" IS 'Name of warning, e.g. ''OBSOLETE'' for obsolete.';
 
   COMMENT ON COLUMN "CV_WARNINGS"."DISPLAY_NAME" IS 'Displayed name of warning, e.g. ''obsolete''.';
 
   COMMENT ON COLUMN "CV_WARNINGS"."SORT_ORDER" IS 'Display order to get stable output.';
 
   COMMENT ON TABLE "CV_WARNINGS"  IS 'Controlled list of values for warning column in table names, e.g. ''ambiguous'', ''misleading'', ''obsolete''.';
  GRANT SELECT ON "CV_WARNINGS" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "CV_WARNINGS" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "CV_WARNINGS" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "CV_WARNINGS" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table CV_WARNINGS_AUDIT
--------------------------------------------------------

  CREATE TABLE "CV_WARNINGS_AUDIT" 
   (	"CODE" VARCHAR2(3 BYTE), 
	"NAME" VARCHAR2(30 BYTE), 
	"DISPLAY_NAME" VARCHAR2(200 BYTE), 
	"SORT_ORDER" NUMBER(2,0), 
	"TIMESTAMP" DATE, 
	"AUDIT_ID" NUMBER(15,0), 
	"DBUSER" VARCHAR2(30 BYTE), 
	"OSUSER" VARCHAR2(30 BYTE), 
	"REMARK" VARCHAR2(50 BYTE), 
	"ACTION" VARCHAR2(3 BYTE)
   ) ;
 

   COMMENT ON COLUMN "CV_WARNINGS_AUDIT"."CODE" IS 'Audit column';
 
   COMMENT ON COLUMN "CV_WARNINGS_AUDIT"."NAME" IS 'Audit column';
 
   COMMENT ON COLUMN "CV_WARNINGS_AUDIT"."DISPLAY_NAME" IS 'Audit column';
 
   COMMENT ON COLUMN "CV_WARNINGS_AUDIT"."SORT_ORDER" IS 'Audit column';
 
   COMMENT ON COLUMN "CV_WARNINGS_AUDIT"."TIMESTAMP" IS 'Date and time of the action.';
 
   COMMENT ON COLUMN "CV_WARNINGS_AUDIT"."AUDIT_ID" IS 'Serial number of audit action.';
 
   COMMENT ON COLUMN "CV_WARNINGS_AUDIT"."DBUSER" IS 'Oracle account name of the user doing the action.';
 
   COMMENT ON COLUMN "CV_WARNINGS_AUDIT"."OSUSER" IS 'Unix account of the user doing the action.';
 
   COMMENT ON COLUMN "CV_WARNINGS_AUDIT"."REMARK" IS 'Optional remark, set by calling enzyme.auditpackage.setremark.';
 
   COMMENT ON COLUMN "CV_WARNINGS_AUDIT"."ACTION" IS 'A short code for the action, ''I'' for insert, ''U'' for update, ''D'' for delete.';
 
   COMMENT ON TABLE "CV_WARNINGS_AUDIT"  IS 'Audit table storing the history of table cv_warnings.';
  GRANT SELECT ON "CV_WARNINGS_AUDIT" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "CV_WARNINGS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "CV_WARNINGS_AUDIT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "CV_WARNINGS_AUDIT" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table DR$intenz_text_idx$text$I
--------------------------------------------------------

  CREATE TABLE "DR$intenz_text_idx$text$I" 
   (	"TOKEN_TEXT" VARCHAR2(64 BYTE), 
	"TOKEN_TYPE" NUMBER(3,0), 
	"TOKEN_FIRST" NUMBER(10,0), 
	"TOKEN_LAST" NUMBER(10,0), 
	"TOKEN_COUNT" NUMBER(10,0), 
	"TOKEN_INFO" BLOB
   ) ;
--------------------------------------------------------
--  DDL for Table DR$intenz_text_idx$text$K
--------------------------------------------------------

  CREATE TABLE "DR$intenz_text_idx$text$K" 
   (	"DOCID" NUMBER(38,0), 
	"TEXTKEY" ROWID, 
	 PRIMARY KEY ("TEXTKEY") ENABLE
   ) ORGANIZATION INDEX NOCOMPRESS ;
--------------------------------------------------------
--  DDL for Table DR$intenz_text_idx$text$N
--------------------------------------------------------

  CREATE TABLE "DR$intenz_text_idx$text$N" 
   (	"NLT_DOCID" NUMBER(38,0), 
	"NLT_MARK" CHAR(1 BYTE), 
	 PRIMARY KEY ("NLT_DOCID") ENABLE
   ) ORGANIZATION INDEX NOCOMPRESS ;
--------------------------------------------------------
--  DDL for Table DR$intenz_text_idx$text$R
--------------------------------------------------------

  CREATE TABLE "DR$intenz_text_idx$text$R" 
   (	"ROW_NO" NUMBER(3,0), 
	"DATA" BLOB
   ) ;
--------------------------------------------------------
--  DDL for Table ENZYMES
--------------------------------------------------------

  CREATE TABLE "ENZYMES" 
   (	"ENZYME_ID" NUMBER(7,0), 
	"EC1" NUMBER(1,0), 
	"EC2" NUMBER(2,0), 
	"EC3" NUMBER(3,0), 
	"EC4" NUMBER(4,0), 
	"HISTORY" VARCHAR2(400 BYTE), 
	"STATUS" VARCHAR2(2 BYTE), 
	"NOTE" VARCHAR2(2000 BYTE), 
	"SOURCE" VARCHAR2(6 BYTE), 
	"ACTIVE" VARCHAR2(1 BYTE) DEFAULT 'Y'
   ) ;
 

   COMMENT ON COLUMN "ENZYMES"."ENZYME_ID" IS 'Enzyme_id is used as an internal unique identifier throughout the database as some entries don''t have an EC number, e.g. suggested entries. Example is ''70001'', ''9945'', etc.';
 
   COMMENT ON COLUMN "ENZYMES"."EC1" IS 'The first number, ec1, is the number of the class, example ''3''.';
 
   COMMENT ON COLUMN "ENZYMES"."EC2" IS 'The second number, ec2, defines the subclass inside the class, example ''3.1''.';
 
   COMMENT ON COLUMN "ENZYMES"."EC3" IS 'The third number, ec3, defines the subsubclass inside the subclass, example ''3.1.1''.';
 
   COMMENT ON COLUMN "ENZYMES"."EC4" IS 'The fourth number, ec4, is a serial number of the enzyme inside the subsubclass, example ''3.1.1.1''.';
 
   COMMENT ON COLUMN "ENZYMES"."HISTORY" IS 'Short form of history of an enzyme, especially date of creation, e.g. ''EC 1.1.1.1 created 1961'', ''EC 1.1.3.8 created 1965, modified 2001''.';
 
   COMMENT ON COLUMN "ENZYMES"."STATUS" IS 'Internal code of status, for example ''NO'', ''UN'', ''SN'', ''OK'', etc.';
 
   COMMENT ON COLUMN "ENZYMES"."NOTE" IS 'Comment or note of an enzyme annotator which wont be viewable for the public.';
 
   COMMENT ON COLUMN "ENZYMES"."SOURCE" IS 'Database internal code, for example ''INTENZ'', ''IUBMB'', ''BRENDA'', ''SIB'' etc. Each enzyme belongs to one of them.';
 
   COMMENT ON COLUMN "ENZYMES"."ACTIVE" IS 'IUBMB uses ''deleted'' for different meanings. We say ''active'' for enzymes that are currently recommended by IUBMB. Opposit of inactive';
 
   COMMENT ON TABLE "ENZYMES"  IS 'Enzymes, main table storing enzymes.';
  GRANT DELETE ON "ENZYMES" TO "ENZYME_COMMITTEE";
 
  GRANT INSERT ON "ENZYMES" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "ENZYMES" TO "ENZYME_COMMITTEE";
 
  GRANT UPDATE ON "ENZYMES" TO "ENZYME_COMMITTEE";
 
  GRANT DELETE ON "ENZYMES" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "ENZYMES" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "ENZYMES" TO "ENZYME_CURATOR";
 
  GRANT UPDATE ON "ENZYMES" TO "ENZYME_CURATOR";
 
  GRANT DELETE ON "ENZYMES" TO "ENZYME_PRODUCTION";
 
  GRANT INSERT ON "ENZYMES" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "ENZYMES" TO "ENZYME_PRODUCTION";
 
  GRANT UPDATE ON "ENZYMES" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "ENZYMES" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table ENZYMES_AUDIT
--------------------------------------------------------

  CREATE TABLE "ENZYMES_AUDIT" 
   (	"ENZYME_ID" NUMBER(7,0), 
	"EC1" NUMBER(1,0), 
	"EC2" NUMBER(2,0), 
	"EC3" NUMBER(3,0), 
	"EC4" NUMBER(4,0), 
	"HISTORY" VARCHAR2(400 BYTE), 
	"STATUS" VARCHAR2(2 BYTE), 
	"NOTE" VARCHAR2(2000 BYTE), 
	"SOURCE" VARCHAR2(6 BYTE), 
	"ACTIVE" VARCHAR2(1 BYTE), 
	"TIMESTAMP" DATE, 
	"AUDIT_ID" NUMBER(15,0), 
	"DBUSER" VARCHAR2(30 BYTE), 
	"OSUSER" VARCHAR2(30 BYTE), 
	"REMARK" VARCHAR2(50 BYTE), 
	"ACTION" VARCHAR2(3 BYTE)
   ) ;
 

   COMMENT ON COLUMN "ENZYMES_AUDIT"."ENZYME_ID" IS 'Audit column';
 
   COMMENT ON COLUMN "ENZYMES_AUDIT"."EC1" IS 'Audit column';
 
   COMMENT ON COLUMN "ENZYMES_AUDIT"."EC2" IS 'Audit column';
 
   COMMENT ON COLUMN "ENZYMES_AUDIT"."EC3" IS 'Audit column';
 
   COMMENT ON COLUMN "ENZYMES_AUDIT"."EC4" IS 'Audit column';
 
   COMMENT ON COLUMN "ENZYMES_AUDIT"."HISTORY" IS 'Audit column';
 
   COMMENT ON COLUMN "ENZYMES_AUDIT"."STATUS" IS 'Audit column';
 
   COMMENT ON COLUMN "ENZYMES_AUDIT"."NOTE" IS 'Audit column';
 
   COMMENT ON COLUMN "ENZYMES_AUDIT"."SOURCE" IS 'Audit column';
 
   COMMENT ON COLUMN "ENZYMES_AUDIT"."ACTIVE" IS 'Audit column';
 
   COMMENT ON COLUMN "ENZYMES_AUDIT"."TIMESTAMP" IS 'Date and time of the action.';
 
   COMMENT ON COLUMN "ENZYMES_AUDIT"."AUDIT_ID" IS 'Serial number of audit action.';
 
   COMMENT ON COLUMN "ENZYMES_AUDIT"."DBUSER" IS 'Oracle account name of the user doing the action.';
 
   COMMENT ON COLUMN "ENZYMES_AUDIT"."OSUSER" IS 'Unix account of the user doing the action.';
 
   COMMENT ON COLUMN "ENZYMES_AUDIT"."REMARK" IS 'Optional remark, set by calling enzyme.auditpackage.setremark.';
 
   COMMENT ON COLUMN "ENZYMES_AUDIT"."ACTION" IS 'A short code for the action, ''I'' for insert, ''U'' for update, ''D'' for delete.';
 
   COMMENT ON TABLE "ENZYMES_AUDIT"  IS 'Audit table storing the history of table enzymes.';
  GRANT INSERT ON "ENZYMES_AUDIT" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "ENZYMES_AUDIT" TO "ENZYME_COMMITTEE";
 
  GRANT INSERT ON "ENZYMES_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "ENZYMES_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "ENZYMES_AUDIT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "ENZYMES_AUDIT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "ENZYMES_AUDIT" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table FUTURE_EVENTS
--------------------------------------------------------

  CREATE TABLE "FUTURE_EVENTS" 
   (	"GROUP_ID" NUMBER(7,0), 
	"EVENT_ID" NUMBER(7,0), 
	"BEFORE_ID" NUMBER(7,0), 
	"AFTER_ID" NUMBER(7,0), 
	"EVENT_YEAR" DATE DEFAULT SYSDATE, 
	"EVENT_NOTE" VARCHAR2(2000 BYTE), 
	"EVENT_CLASS" VARCHAR2(20 BYTE), 
	"STATUS" VARCHAR2(2 BYTE), 
	"TIMEOUT_ID" NUMBER(7,0)
   ) ;
 

   COMMENT ON COLUMN "FUTURE_EVENTS"."BEFORE_ID" IS 'Internal enzyme entry ID object of the event.';
 
   COMMENT ON COLUMN "FUTURE_EVENTS"."AFTER_ID" IS 'Final ID (if it changes) of the enzyme entry after the event.';
 
   COMMENT ON COLUMN "FUTURE_EVENTS"."EVENT_CLASS" IS 'Type of event (modification, transfer, deletion).';
 
   COMMENT ON COLUMN "FUTURE_EVENTS"."TIMEOUT_ID" IS 'ID of the timeout for the schedulled event.';
 
   COMMENT ON TABLE "FUTURE_EVENTS"  IS 'Schedulled events (modifications, transfers, deletions of EC numbers).';
  GRANT SELECT ON "FUTURE_EVENTS" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "FUTURE_EVENTS" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "FUTURE_EVENTS" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "FUTURE_EVENTS" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table FUTURE_EVENTS_AUDIT
--------------------------------------------------------

  CREATE TABLE "FUTURE_EVENTS_AUDIT" 
   (	"GROUP_ID" NUMBER(7,0), 
	"EVENT_ID" NUMBER(7,0), 
	"BEFORE_ID" NUMBER(7,0), 
	"AFTER_ID" NUMBER(7,0), 
	"EVENT_YEAR" DATE, 
	"EVENT_NOTE" VARCHAR2(2000 BYTE), 
	"EVENT_CLASS" VARCHAR2(20 BYTE), 
	"STATUS" VARCHAR2(2 BYTE), 
	"TIMEOUT_ID" NUMBER(7,0), 
	"TIMESTAMP" DATE, 
	"AUDIT_ID" NUMBER(15,0), 
	"DBUSER" VARCHAR2(30 BYTE), 
	"OSUSER" VARCHAR2(30 BYTE), 
	"REMARK" VARCHAR2(50 BYTE), 
	"ACTION" VARCHAR2(3 BYTE)
   ) ;
 

   COMMENT ON TABLE "FUTURE_EVENTS_AUDIT"  IS 'Audit table for the FUTURE_EVENTS table.';
  GRANT SELECT ON "FUTURE_EVENTS_AUDIT" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "FUTURE_EVENTS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "FUTURE_EVENTS_AUDIT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "FUTURE_EVENTS_AUDIT" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table HISTORY_EVENTS
--------------------------------------------------------

  CREATE TABLE "HISTORY_EVENTS" 
   (	"GROUP_ID" NUMBER(7,0), 
	"EVENT_ID" NUMBER(7,0), 
	"BEFORE_ID" NUMBER(7,0), 
	"AFTER_ID" NUMBER(7,0), 
	"EVENT_YEAR" DATE DEFAULT SYSDATE, 
	"EVENT_NOTE" VARCHAR2(2000 BYTE), 
	"EVENT_CLASS" VARCHAR2(20 BYTE)
   ) ;
 

   COMMENT ON TABLE "HISTORY_EVENTS"  IS 'Past events (modifications, transfers, deletions of EC numbers).';
  GRANT SELECT ON "HISTORY_EVENTS" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "HISTORY_EVENTS" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "HISTORY_EVENTS" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "HISTORY_EVENTS" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table HISTORY_EVENTS_AUDIT
--------------------------------------------------------

  CREATE TABLE "HISTORY_EVENTS_AUDIT" 
   (	"GROUP_ID" NUMBER(7,0), 
	"EVENT_ID" NUMBER(7,0), 
	"BEFORE_ID" NUMBER(7,0), 
	"AFTER_ID" NUMBER(7,0), 
	"EVENT_YEAR" DATE, 
	"EVENT_NOTE" VARCHAR2(2000 BYTE), 
	"EVENT_CLASS" VARCHAR2(20 BYTE), 
	"TIMESTAMP" DATE, 
	"AUDIT_ID" NUMBER(15,0), 
	"DBUSER" VARCHAR2(30 BYTE), 
	"OSUSER" VARCHAR2(30 BYTE), 
	"REMARK" VARCHAR2(50 BYTE), 
	"ACTION" VARCHAR2(3 BYTE)
   ) ;
 

   COMMENT ON TABLE "HISTORY_EVENTS_AUDIT"  IS 'Audit table for HISTORY_EVENTS table.';
  GRANT SELECT ON "HISTORY_EVENTS_AUDIT" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "HISTORY_EVENTS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "HISTORY_EVENTS_AUDIT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "HISTORY_EVENTS_AUDIT" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table ID2EC
--------------------------------------------------------

  CREATE TABLE "ID2EC" 
   (	"ENZYME_ID" VARCHAR2(10 BYTE), 
	"EC" VARCHAR2(20 BYTE), 
	"STATUS" VARCHAR2(2 BYTE), 
	"SOURCE" VARCHAR2(6 BYTE)
   ) ;
  GRANT SELECT ON "ID2EC" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "ID2EC" TO "ENZYME_CURATOR";
 
  GRANT DELETE ON "ID2EC" TO "ENZYME_PRODUCTION";
 
  GRANT INSERT ON "ID2EC" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "ID2EC" TO "ENZYME_PRODUCTION";
 
  GRANT UPDATE ON "ID2EC" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "ID2EC" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table INTENZ_REACTIONS
--------------------------------------------------------

  CREATE TABLE "INTENZ_REACTIONS" 
   (	"REACTION_ID" NUMBER(7,0), 
	"INTENZ_ACCESSION" VARCHAR2(10 BYTE), 
	"EQUATION" VARCHAR2(3000 BYTE), 
	"FINGERPRINT" VARCHAR2(3000 BYTE), 
	"STATUS" VARCHAR2(2 BYTE), 
	"SOURCE" VARCHAR2(6 BYTE), 
	"DIRECTION" VARCHAR2(2 BYTE), 
	"UN_REACTION" NUMBER(7,0), 
	"QUALIFIERS" "REACTION_QUALIFIERS" , 
	"DATA_COMMENT" VARCHAR2(3000 BYTE), 
	"REACTION_COMMENT" VARCHAR2(3000 BYTE), 
	"IUBMB" VARCHAR2(1 BYTE), 
	"PUBLIC_IN_CHEBI" VARCHAR2(1 BYTE)
   ) ;
 

   COMMENT ON TABLE "INTENZ_REACTIONS"  IS 'Main Rhea table, initially populated with reactions parsed from IntEnz textual equations.';
  GRANT DELETE ON "INTENZ_REACTIONS" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "INTENZ_REACTIONS" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "INTENZ_REACTIONS" TO "ENZYME_CURATOR";
 
  GRANT UPDATE ON "INTENZ_REACTIONS" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "INTENZ_REACTIONS" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table INTENZ_REACTIONS_AUDIT
--------------------------------------------------------

  CREATE TABLE "INTENZ_REACTIONS_AUDIT" 
   (	"REACTION_ID" NUMBER(7,0), 
	"INTENZ_ACCESSION" VARCHAR2(10 BYTE), 
	"EQUATION" VARCHAR2(3000 BYTE), 
	"FINGERPRINT" VARCHAR2(3000 BYTE), 
	"STATUS" VARCHAR2(2 BYTE), 
	"SOURCE" VARCHAR2(6 BYTE), 
	"DIRECTION" VARCHAR2(2 BYTE), 
	"UN_REACTION" NUMBER(7,0), 
	"QUALIFIERS" "REACTION_QUALIFIERS" , 
	"DATA_COMMENT" VARCHAR2(3000 BYTE), 
	"TIMESTAMP" DATE, 
	"AUDIT_ID" NUMBER(15,0), 
	"DBUSER" VARCHAR2(30 BYTE), 
	"OSUSER" VARCHAR2(30 BYTE), 
	"REMARK" VARCHAR2(4000 BYTE), 
	"ACTION" VARCHAR2(3 BYTE), 
	"REACTION_COMMENT" VARCHAR2(3000 BYTE), 
	"IUBMB" VARCHAR2(1 BYTE), 
	"PUBLIC_IN_CHEBI" VARCHAR2(1 BYTE)
   ) ;
 

   COMMENT ON TABLE "INTENZ_REACTIONS_AUDIT"  IS 'Audit table for INTENZ_REACTIONS.';
  GRANT DELETE ON "INTENZ_REACTIONS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "INTENZ_REACTIONS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "INTENZ_REACTIONS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT UPDATE ON "INTENZ_REACTIONS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "INTENZ_REACTIONS_AUDIT" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table INTENZ_TEXT
--------------------------------------------------------

  CREATE TABLE "INTENZ_TEXT" 
   (	"ENZYME_ID" VARCHAR2(10 BYTE), 
	"EC" VARCHAR2(20 BYTE), 
	"COMMON_NAME" VARCHAR2(1000 BYTE), 
	"STATUS" VARCHAR2(2 BYTE), 
	"SOURCE" VARCHAR2(6 BYTE), 
	"TEXT_ORDER" NUMBER(4,0), 
	"TEXT" VARCHAR2(4000 BYTE)
   ) ;
  GRANT SELECT ON "INTENZ_TEXT" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "INTENZ_TEXT" TO "ENZYME_CURATOR";
 
  GRANT DELETE ON "INTENZ_TEXT" TO "ENZYME_PRODUCTION";
 
  GRANT INSERT ON "INTENZ_TEXT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "INTENZ_TEXT" TO "ENZYME_PRODUCTION";
 
  GRANT UPDATE ON "INTENZ_TEXT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "INTENZ_TEXT" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table LINKS
--------------------------------------------------------

  CREATE TABLE "LINKS" 
   (	"ENZYME_ID" NUMBER(7,0), 
	"URL" VARCHAR2(100 BYTE), 
	"DISPLAY_NAME" VARCHAR2(100 BYTE), 
	"STATUS" VARCHAR2(2 BYTE) DEFAULT 'NO', 
	"SOURCE" VARCHAR2(6 BYTE), 
	"WEB_VIEW" VARCHAR2(50 BYTE), 
	"DATA_COMMENT" VARCHAR2(1000 BYTE)
   ) ;
 

   COMMENT ON COLUMN "LINKS"."ENZYME_ID" IS 'Enzyme_id is used as an internal unique identifier throughout the database as some entries don''t have an EC number, e.g. suggested entries. Example is ''70001'', ''9945'', etc.';
 
   COMMENT ON COLUMN "LINKS"."URL" IS 'Url stores the links from an enzyme number to another database which is stored on Gerry Moss'' webpages as ''Links to other databases'', e.g. a link to BRENDA from 1.1.1.1 ''http://brenda.bc.uni-koeln.de/php/result_flat.php3?ecno=1.1.1.1''. ';
 
   COMMENT ON COLUMN "LINKS"."DISPLAY_NAME" IS 'Displayed name of links, e.g. ''BRENDA'', ''CAS'', ''WIT''.';
 
   COMMENT ON COLUMN "LINKS"."STATUS" IS 'Internal code of status, for example ''NO'', ''UN'', ''SN'', ''OK'', etc.';
 
   COMMENT ON COLUMN "LINKS"."SOURCE" IS 'Database internal code, for example ''INTENZ'', ''IUBMB'', ''BRENDA'', ''SIB'' etc. Each enzyme belongs to one of them.';
 
   COMMENT ON COLUMN "LINKS"."WEB_VIEW" IS 'View to display the link in.';
 
   COMMENT ON COLUMN "LINKS"."DATA_COMMENT" IS 'Any comment on the link.';
 
   COMMENT ON TABLE "LINKS"  IS 'Links, table storing internet documents linked from an enzyme';
  GRANT DELETE ON "LINKS" TO "ENZYME_COMMITTEE";
 
  GRANT INSERT ON "LINKS" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "LINKS" TO "ENZYME_COMMITTEE";
 
  GRANT UPDATE ON "LINKS" TO "ENZYME_COMMITTEE";
 
  GRANT DELETE ON "LINKS" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "LINKS" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "LINKS" TO "ENZYME_CURATOR";
 
  GRANT UPDATE ON "LINKS" TO "ENZYME_CURATOR";
 
  GRANT DELETE ON "LINKS" TO "ENZYME_PRODUCTION";
 
  GRANT INSERT ON "LINKS" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "LINKS" TO "ENZYME_PRODUCTION";
 
  GRANT UPDATE ON "LINKS" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "LINKS" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table LINKS_AUDIT
--------------------------------------------------------

  CREATE TABLE "LINKS_AUDIT" 
   (	"ENZYME_ID" NUMBER(7,0), 
	"URL" VARCHAR2(200 BYTE), 
	"DISPLAY_NAME" VARCHAR2(200 BYTE), 
	"STATUS" VARCHAR2(2 BYTE), 
	"SOURCE" VARCHAR2(6 BYTE), 
	"TIMESTAMP" DATE, 
	"AUDIT_ID" NUMBER(15,0), 
	"DBUSER" VARCHAR2(30 BYTE), 
	"OSUSER" VARCHAR2(30 BYTE), 
	"REMARK" VARCHAR2(50 BYTE), 
	"ACTION" VARCHAR2(3 BYTE), 
	"WEB_VIEW" VARCHAR2(50 BYTE), 
	"DATA_COMMENT" VARCHAR2(1000 BYTE)
   ) ;
 

   COMMENT ON COLUMN "LINKS_AUDIT"."ENZYME_ID" IS 'Audit column';
 
   COMMENT ON COLUMN "LINKS_AUDIT"."URL" IS 'Audit column';
 
   COMMENT ON COLUMN "LINKS_AUDIT"."DISPLAY_NAME" IS 'Audit column';
 
   COMMENT ON COLUMN "LINKS_AUDIT"."STATUS" IS 'Audit column';
 
   COMMENT ON COLUMN "LINKS_AUDIT"."SOURCE" IS 'Audit column';
 
   COMMENT ON COLUMN "LINKS_AUDIT"."TIMESTAMP" IS 'Audit column';
 
   COMMENT ON COLUMN "LINKS_AUDIT"."AUDIT_ID" IS 'Serial number of audit action.';
 
   COMMENT ON COLUMN "LINKS_AUDIT"."DBUSER" IS 'Oracle account name of the user doing the action.';
 
   COMMENT ON COLUMN "LINKS_AUDIT"."OSUSER" IS 'Unix account of the user doing the action.';
 
   COMMENT ON COLUMN "LINKS_AUDIT"."REMARK" IS 'Optional remark, set by calling enzyme.auditpackage.setremark.';
 
   COMMENT ON COLUMN "LINKS_AUDIT"."ACTION" IS 'A short code for the action, ''I'' for insert, ''U'' for update, ''D'' for delete.';
 
   COMMENT ON TABLE "LINKS_AUDIT"  IS 'Audit table storing the history of table links.';
  GRANT INSERT ON "LINKS_AUDIT" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "LINKS_AUDIT" TO "ENZYME_COMMITTEE";
 
  GRANT INSERT ON "LINKS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "LINKS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "LINKS_AUDIT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "LINKS_AUDIT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "LINKS_AUDIT" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table NAMES
--------------------------------------------------------

  CREATE TABLE "NAMES" 
   (	"ENZYME_ID" NUMBER(7,0), 
	"NAME" VARCHAR2(2000 BYTE), 
	"NAME_CLASS" VARCHAR2(3 BYTE), 
	"WARNING" VARCHAR2(3 BYTE), 
	"STATUS" VARCHAR2(2 BYTE), 
	"SOURCE" VARCHAR2(6 BYTE), 
	"NOTE" VARCHAR2(200 BYTE), 
	"ORDER_IN" NUMBER(4,0), 
	"WEB_VIEW" VARCHAR2(50 BYTE)
   ) ;
 

   COMMENT ON COLUMN "NAMES"."ENZYME_ID" IS 'Enzyme_id is used as an internal unique identifier throughout the database as some entries don''t have an EC number, e.g. suggested entries. Example is ''70001'', ''9945'', etc';
 
   COMMENT ON COLUMN "NAMES"."NAME" IS 'Name stores the actual name of an enzyme which could be a systematic name, a common name, or an other/alternate name, e.g. ''alcohol:NAD oxidoreductase'', ''alcohol dehydrogenase'', ''aldehyde reductase'' (taken from 1.1.1.1 - IUBMB).';
 
   COMMENT ON COLUMN "NAMES"."NAME_CLASS" IS 'There are three types of names or name_classes: common name, systematic name, and other name(s).';
 
   COMMENT ON COLUMN "NAMES"."WARNING" IS 'Some names of an enzyme are ambiguous, misleading, obsolete, which is stored as ''AMB'', ''MIS'', ''OBS''.';
 
   COMMENT ON COLUMN "NAMES"."STATUS" IS 'Internal code of status, for example ''NO'', ''UN'', ''SN'', ''OK'', etc.';
 
   COMMENT ON COLUMN "NAMES"."SOURCE" IS 'Database internal code, for example ''INTENZ'', ''IUBMB'', ''BRENDA'', ''SIB'' etc. Each enzyme belongs to one of them.';
 
   COMMENT ON COLUMN "NAMES"."NOTE" IS 'Ambiguous, misleading, obsolete names have sometimes a comment attached to them which can be stored in this column.';
 
   COMMENT ON COLUMN "NAMES"."ORDER_IN" IS 'Order applied to names for the same enzyme.';
 
   COMMENT ON COLUMN "NAMES"."WEB_VIEW" IS 'View to display the name in.';
 
   COMMENT ON TABLE "NAMES"  IS 'Names of enzymes, including common name, systematic name, and other names.';
  GRANT DELETE ON "NAMES" TO "ENZYME_COMMITTEE";
 
  GRANT INSERT ON "NAMES" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "NAMES" TO "ENZYME_COMMITTEE";
 
  GRANT UPDATE ON "NAMES" TO "ENZYME_COMMITTEE";
 
  GRANT DELETE ON "NAMES" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "NAMES" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "NAMES" TO "ENZYME_CURATOR";
 
  GRANT UPDATE ON "NAMES" TO "ENZYME_CURATOR";
 
  GRANT DELETE ON "NAMES" TO "ENZYME_PRODUCTION";
 
  GRANT INSERT ON "NAMES" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "NAMES" TO "ENZYME_PRODUCTION";
 
  GRANT UPDATE ON "NAMES" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "NAMES" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table NAMES_AUDIT
--------------------------------------------------------

  CREATE TABLE "NAMES_AUDIT" 
   (	"ENZYME_ID" NUMBER(7,0), 
	"NAME" VARCHAR2(2000 BYTE), 
	"NAME_CLASS" VARCHAR2(3 BYTE), 
	"WARNING" VARCHAR2(3 BYTE), 
	"STATUS" VARCHAR2(2 BYTE), 
	"SOURCE" VARCHAR2(6 BYTE), 
	"NOTE" VARCHAR2(200 BYTE), 
	"TIMESTAMP" DATE, 
	"AUDIT_ID" NUMBER(15,0), 
	"DBUSER" VARCHAR2(30 BYTE), 
	"OSUSER" VARCHAR2(30 BYTE), 
	"REMARK" VARCHAR2(50 BYTE), 
	"ACTION" VARCHAR2(3 BYTE), 
	"ORDER_IN" NUMBER(4,0), 
	"WEB_VIEW" VARCHAR2(50 BYTE)
   ) ;
 

   COMMENT ON COLUMN "NAMES_AUDIT"."ENZYME_ID" IS 'Audit column';
 
   COMMENT ON COLUMN "NAMES_AUDIT"."NAME" IS 'Audit column';
 
   COMMENT ON COLUMN "NAMES_AUDIT"."NAME_CLASS" IS 'Audit column';
 
   COMMENT ON COLUMN "NAMES_AUDIT"."WARNING" IS 'Audit column';
 
   COMMENT ON COLUMN "NAMES_AUDIT"."STATUS" IS 'Audit column';
 
   COMMENT ON COLUMN "NAMES_AUDIT"."SOURCE" IS 'Audit column';
 
   COMMENT ON COLUMN "NAMES_AUDIT"."NOTE" IS 'Audit column';
 
   COMMENT ON COLUMN "NAMES_AUDIT"."TIMESTAMP" IS 'Date and time of the action.';
 
   COMMENT ON COLUMN "NAMES_AUDIT"."AUDIT_ID" IS 'Serial number of audit action.';
 
   COMMENT ON COLUMN "NAMES_AUDIT"."DBUSER" IS 'Oracle account name of the user doing the action.';
 
   COMMENT ON COLUMN "NAMES_AUDIT"."OSUSER" IS 'Unix account of the user doing the action.';
 
   COMMENT ON COLUMN "NAMES_AUDIT"."REMARK" IS 'Optional remark, set by calling enzyme.auditpackage.setremark.';
 
   COMMENT ON COLUMN "NAMES_AUDIT"."ACTION" IS 'A short code for the action, ''I'' for insert, ''U'' for update, ''D'' for delete.';
 
   COMMENT ON TABLE "NAMES_AUDIT"  IS 'Audit table storing the history of table names.';
  GRANT INSERT ON "NAMES_AUDIT" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "NAMES_AUDIT" TO "ENZYME_COMMITTEE";
 
  GRANT INSERT ON "NAMES_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "NAMES_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "NAMES_AUDIT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "NAMES_AUDIT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "NAMES_AUDIT" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table PUBLICATIONS
--------------------------------------------------------

  CREATE TABLE "PUBLICATIONS" 
   (	"PUB_ID" NUMBER(7,0), 
	"MEDLINE_ID" NUMBER(9,0), 
	"PUBMED_ID" NUMBER(8,0), 
	"PUB_TYPE" CHAR(1 BYTE), 
	"AUTHOR" VARCHAR2(2000 BYTE), 
	"PUB_YEAR" NUMBER(4,0), 
	"TITLE" VARCHAR2(1000 BYTE), 
	"JOURNAL_BOOK" VARCHAR2(1000 BYTE), 
	"VOLUME" VARCHAR2(15 BYTE), 
	"FIRST_PAGE" VARCHAR2(12 BYTE), 
	"LAST_PAGE" VARCHAR2(12 BYTE), 
	"EDITION" NUMBER(3,0), 
	"EDITOR" VARCHAR2(2000 BYTE), 
	"PUB_COMPANY" VARCHAR2(50 BYTE), 
	"PUB_PLACE" VARCHAR2(50 BYTE), 
	"URL" VARCHAR2(1000 BYTE), 
	"WEB_VIEW" VARCHAR2(50 BYTE), 
	"SOURCE" VARCHAR2(50 BYTE)
   ) ;
 

   COMMENT ON COLUMN "PUBLICATIONS"."PUB_ID" IS 'Pub_id is used as an internal unique identifier for publications. Example is ''1'', ''253'', etc.';
 
   COMMENT ON COLUMN "PUBLICATIONS"."MEDLINE_ID" IS 'Medline_id is the unique identifier used in Medline. Example is ''73143748'', ''68240400''.';
 
   COMMENT ON COLUMN "PUBLICATIONS"."PUBMED_ID" IS 'Self explaining.';
 
   COMMENT ON COLUMN "PUBLICATIONS"."PUB_TYPE" IS 'Pub_type stores the information whether the publication is a book or a journal';
 
   COMMENT ON COLUMN "PUBLICATIONS"."AUTHOR" IS 'Author stores all the authors listed in one publication.';
 
   COMMENT ON COLUMN "PUBLICATIONS"."PUB_YEAR" IS 'Year indicates the year a publication was published.';
 
   COMMENT ON COLUMN "PUBLICATIONS"."TITLE" IS 'Title gives the title of an publication.';
 
   COMMENT ON COLUMN "PUBLICATIONS"."JOURNAL_BOOK" IS 'Journal_book lists the title of the book or journal of the publication.';
 
   COMMENT ON COLUMN "PUBLICATIONS"."VOLUME" IS 'Self explaining.';
 
   COMMENT ON COLUMN "PUBLICATIONS"."FIRST_PAGE" IS 'First_page lists the first page of a publication.';
 
   COMMENT ON COLUMN "PUBLICATIONS"."LAST_PAGE" IS 'Last_page lists the last page of a publication.';
 
   COMMENT ON COLUMN "PUBLICATIONS"."EDITION" IS 'Self explaining.';
 
   COMMENT ON COLUMN "PUBLICATIONS"."EDITOR" IS 'Self explaining.';
 
   COMMENT ON COLUMN "PUBLICATIONS"."PUB_COMPANY" IS 'Self explaining.';
 
   COMMENT ON COLUMN "PUBLICATIONS"."PUB_PLACE" IS 'Self explaining.';
 
   COMMENT ON COLUMN "PUBLICATIONS"."URL" IS 'Self explaining.';
 
   COMMENT ON COLUMN "PUBLICATIONS"."WEB_VIEW" IS 'View to display the publication in.';
 
   COMMENT ON COLUMN "PUBLICATIONS"."SOURCE" IS 'Source of the publication data.';
 
   COMMENT ON TABLE "PUBLICATIONS"  IS 'Publications, table storing articles in books and journals where at least one EC number is mentioned.';
  GRANT DELETE ON "PUBLICATIONS" TO "ENZYME_COMMITTEE";
 
  GRANT INSERT ON "PUBLICATIONS" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "PUBLICATIONS" TO "ENZYME_COMMITTEE";
 
  GRANT UPDATE ON "PUBLICATIONS" TO "ENZYME_COMMITTEE";
 
  GRANT DELETE ON "PUBLICATIONS" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "PUBLICATIONS" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "PUBLICATIONS" TO "ENZYME_CURATOR";
 
  GRANT UPDATE ON "PUBLICATIONS" TO "ENZYME_CURATOR";
 
  GRANT DELETE ON "PUBLICATIONS" TO "ENZYME_PRODUCTION";
 
  GRANT INSERT ON "PUBLICATIONS" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "PUBLICATIONS" TO "ENZYME_PRODUCTION";
 
  GRANT UPDATE ON "PUBLICATIONS" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "PUBLICATIONS" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table PUBLICATIONS_AUDIT
--------------------------------------------------------

  CREATE TABLE "PUBLICATIONS_AUDIT" 
   (	"PUB_ID" NUMBER(7,0), 
	"MEDLINE_ID" NUMBER(9,0), 
	"PUBMED_ID" NUMBER(8,0), 
	"PUB_TYPE" CHAR(1 BYTE), 
	"AUTHOR" VARCHAR2(2000 BYTE), 
	"PUB_YEAR" NUMBER(4,0), 
	"TITLE" VARCHAR2(1000 BYTE), 
	"JOURNAL_BOOK" VARCHAR2(1000 BYTE), 
	"VOLUME" VARCHAR2(15 BYTE), 
	"FIRST_PAGE" VARCHAR2(12 BYTE), 
	"LAST_PAGE" VARCHAR2(12 BYTE), 
	"EDITION" NUMBER(3,0), 
	"EDITOR" VARCHAR2(2000 BYTE), 
	"PUB_COMPANY" VARCHAR2(50 BYTE), 
	"PUB_PLACE" VARCHAR2(50 BYTE), 
	"URL" VARCHAR2(1000 BYTE), 
	"TIMESTAMP" DATE, 
	"AUDIT_ID" NUMBER(15,0), 
	"DBUSER" VARCHAR2(30 BYTE), 
	"OSUSER" VARCHAR2(30 BYTE), 
	"REMARK" VARCHAR2(50 BYTE), 
	"ACTION" VARCHAR2(3 BYTE), 
	"WEB_VIEW" VARCHAR2(50 BYTE), 
	"SOURCE" VARCHAR2(50 BYTE)
   ) ;
 

   COMMENT ON COLUMN "PUBLICATIONS_AUDIT"."PUB_ID" IS 'Audit column';
 
   COMMENT ON COLUMN "PUBLICATIONS_AUDIT"."MEDLINE_ID" IS 'Audit column';
 
   COMMENT ON COLUMN "PUBLICATIONS_AUDIT"."PUBMED_ID" IS 'Audit column';
 
   COMMENT ON COLUMN "PUBLICATIONS_AUDIT"."PUB_TYPE" IS 'Audit column';
 
   COMMENT ON COLUMN "PUBLICATIONS_AUDIT"."AUTHOR" IS 'Audit column';
 
   COMMENT ON COLUMN "PUBLICATIONS_AUDIT"."PUB_YEAR" IS 'Audit column';
 
   COMMENT ON COLUMN "PUBLICATIONS_AUDIT"."TITLE" IS 'Audit column';
 
   COMMENT ON COLUMN "PUBLICATIONS_AUDIT"."JOURNAL_BOOK" IS 'Audit column';
 
   COMMENT ON COLUMN "PUBLICATIONS_AUDIT"."VOLUME" IS 'Audit column';
 
   COMMENT ON COLUMN "PUBLICATIONS_AUDIT"."FIRST_PAGE" IS 'Audit column';
 
   COMMENT ON COLUMN "PUBLICATIONS_AUDIT"."LAST_PAGE" IS 'Audit column';
 
   COMMENT ON COLUMN "PUBLICATIONS_AUDIT"."EDITION" IS 'Audit column';
 
   COMMENT ON COLUMN "PUBLICATIONS_AUDIT"."EDITOR" IS 'Audit column';
 
   COMMENT ON COLUMN "PUBLICATIONS_AUDIT"."PUB_COMPANY" IS 'Audit column';
 
   COMMENT ON COLUMN "PUBLICATIONS_AUDIT"."PUB_PLACE" IS 'Audit column';
 
   COMMENT ON COLUMN "PUBLICATIONS_AUDIT"."URL" IS 'Audit column';
 
   COMMENT ON COLUMN "PUBLICATIONS_AUDIT"."TIMESTAMP" IS 'Date and time of the action.';
 
   COMMENT ON COLUMN "PUBLICATIONS_AUDIT"."AUDIT_ID" IS 'Serial number of audit action.';
 
   COMMENT ON COLUMN "PUBLICATIONS_AUDIT"."DBUSER" IS 'Oracle account name of the user doing the action.';
 
   COMMENT ON COLUMN "PUBLICATIONS_AUDIT"."OSUSER" IS 'Unix account of the user doing the action.';
 
   COMMENT ON COLUMN "PUBLICATIONS_AUDIT"."REMARK" IS 'Optional remark, set by calling enzyme.auditpackage.setremark.';
 
   COMMENT ON COLUMN "PUBLICATIONS_AUDIT"."ACTION" IS 'A short code for the action, ''I'' for insert, ''U'' for update, ''D'' for delete.';
 
   COMMENT ON TABLE "PUBLICATIONS_AUDIT"  IS 'Audit table storing the history of table publications.';
  GRANT INSERT ON "PUBLICATIONS_AUDIT" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "PUBLICATIONS_AUDIT" TO "ENZYME_COMMITTEE";
 
  GRANT INSERT ON "PUBLICATIONS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "PUBLICATIONS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "PUBLICATIONS_AUDIT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "PUBLICATIONS_AUDIT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "PUBLICATIONS_AUDIT" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table REACTIONS
--------------------------------------------------------

  CREATE TABLE "REACTIONS" 
   (	"ENZYME_ID" NUMBER(7,0), 
	"EQUATION" VARCHAR2(3000 BYTE), 
	"ORDER_IN" NUMBER(2,0) DEFAULT 1, 
	"STATUS" VARCHAR2(2 BYTE), 
	"SOURCE" VARCHAR2(6 BYTE), 
	"WEB_VIEW" VARCHAR2(50 BYTE)
   ) ;
 

   COMMENT ON COLUMN "REACTIONS"."ENZYME_ID" IS 'Enzyme_id is used as an internal unique identifier throughout the database as some entries don''t have an EC number, e.g. suggested entries. Example is ''70001'', ''9945'', etc';
 
   COMMENT ON COLUMN "REACTIONS"."EQUATION" IS 'Equation stores the reaction/catalytic activity of an enzyme, e.g. ''an alcohol + NAD = an aldehyde or ketone + NADH2'' (taken from 1.1.1.1 - IUBMB). In some cases free text is used to describe a reaction, e.g. ';
 
   COMMENT ON COLUMN "REACTIONS"."ORDER_IN" IS 'Order_in stores the order of reaction.';
 
   COMMENT ON COLUMN "REACTIONS"."STATUS" IS 'Internal code of status, for example ''NO'', ''UN'', ''SN'', ''OK'', etc.';
 
   COMMENT ON COLUMN "REACTIONS"."SOURCE" IS 'Database internal code, for example ''INTENZ'', ''IUBMB'', ''BRENDA'', ''SIB'' etc. Each enzyme belongs to one of them.';
 
   COMMENT ON COLUMN "REACTIONS"."WEB_VIEW" IS 'View to display the reaction in.';
 
   COMMENT ON TABLE "REACTIONS"  IS 'Plain text reactions of enzymes. An enzyme can have more than one reaction.';
  GRANT DELETE ON "REACTIONS" TO "ENZYME_COMMITTEE";
 
  GRANT INSERT ON "REACTIONS" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "REACTIONS" TO "ENZYME_COMMITTEE";
 
  GRANT UPDATE ON "REACTIONS" TO "ENZYME_COMMITTEE";
 
  GRANT DELETE ON "REACTIONS" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "REACTIONS" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "REACTIONS" TO "ENZYME_CURATOR";
 
  GRANT UPDATE ON "REACTIONS" TO "ENZYME_CURATOR";
 
  GRANT DELETE ON "REACTIONS" TO "ENZYME_PRODUCTION";
 
  GRANT INSERT ON "REACTIONS" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "REACTIONS" TO "ENZYME_PRODUCTION";
 
  GRANT UPDATE ON "REACTIONS" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "REACTIONS" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table REACTIONS_AUDIT
--------------------------------------------------------

  CREATE TABLE "REACTIONS_AUDIT" 
   (	"ENZYME_ID" NUMBER(7,0), 
	"EQUATION" VARCHAR2(3000 BYTE), 
	"ORDER_IN" NUMBER(2,0), 
	"STATUS" VARCHAR2(2 BYTE), 
	"SOURCE" VARCHAR2(6 BYTE), 
	"TIMESTAMP" DATE, 
	"AUDIT_ID" NUMBER(15,0), 
	"DBUSER" VARCHAR2(30 BYTE), 
	"OSUSER" VARCHAR2(30 BYTE), 
	"REMARK" VARCHAR2(50 BYTE), 
	"ACTION" VARCHAR2(3 BYTE), 
	"WEB_VIEW" VARCHAR2(50 BYTE)
   ) ;
 

   COMMENT ON COLUMN "REACTIONS_AUDIT"."ENZYME_ID" IS 'Audit column';
 
   COMMENT ON COLUMN "REACTIONS_AUDIT"."EQUATION" IS 'Audit column';
 
   COMMENT ON COLUMN "REACTIONS_AUDIT"."ORDER_IN" IS 'Audit column';
 
   COMMENT ON COLUMN "REACTIONS_AUDIT"."STATUS" IS 'Audit column';
 
   COMMENT ON COLUMN "REACTIONS_AUDIT"."SOURCE" IS 'Audit column';
 
   COMMENT ON COLUMN "REACTIONS_AUDIT"."TIMESTAMP" IS 'Date and time of the action.';
 
   COMMENT ON COLUMN "REACTIONS_AUDIT"."AUDIT_ID" IS 'Serial number of audit action.';
 
   COMMENT ON COLUMN "REACTIONS_AUDIT"."DBUSER" IS 'Oracle account name of the user doing the action.';
 
   COMMENT ON COLUMN "REACTIONS_AUDIT"."OSUSER" IS 'Unix account of the user doing the action.';
 
   COMMENT ON COLUMN "REACTIONS_AUDIT"."REMARK" IS 'Optional remark, set by calling enzyme.auditpackage.setremark.';
 
   COMMENT ON COLUMN "REACTIONS_AUDIT"."ACTION" IS 'A short code for the action, ''I'' for insert, ''U'' for update, ''D'' for delete.';
 
   COMMENT ON TABLE "REACTIONS_AUDIT"  IS 'Audit table storing the history of table reactions.';
  GRANT INSERT ON "REACTIONS_AUDIT" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "REACTIONS_AUDIT" TO "ENZYME_COMMITTEE";
 
  GRANT INSERT ON "REACTIONS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "REACTIONS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "REACTIONS_AUDIT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "REACTIONS_AUDIT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "REACTIONS_AUDIT" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table REACTIONS_MAP
--------------------------------------------------------

  CREATE TABLE "REACTIONS_MAP" 
   (	"REACTION_ID" NUMBER(7,0), 
	"ENZYME_ID" NUMBER(7,0), 
	"WEB_VIEW" VARCHAR2(12 BYTE), 
	"ORDER_IN" NUMBER(2,0) DEFAULT 1, 
	"IUBMB" VARCHAR2(1 BYTE) DEFAULT 'N'
   ) ;
 

   COMMENT ON COLUMN "REACTIONS_MAP"."REACTION_ID" IS 'Rhea ID of the reaction.';
 
   COMMENT ON COLUMN "REACTIONS_MAP"."ENZYME_ID" IS 'Internal enzyme ID.';
 
   COMMENT ON COLUMN "REACTIONS_MAP"."WEB_VIEW" IS 'View in which to show the mapping.';
 
   COMMENT ON COLUMN "REACTIONS_MAP"."ORDER_IN" IS 'Order of the reactions, if more than one per enzyme.';
 
   COMMENT ON COLUMN "REACTIONS_MAP"."IUBMB" IS 'Flag for reactions assigned to enzymes by IUBMB';
 
   COMMENT ON TABLE "REACTIONS_MAP"  IS 'Connection table between enzymes and intenz_reactions.';
  GRANT DELETE ON "REACTIONS_MAP" TO "ENZYME_COMMITTEE";
 
  GRANT INSERT ON "REACTIONS_MAP" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "REACTIONS_MAP" TO "ENZYME_COMMITTEE";
 
  GRANT UPDATE ON "REACTIONS_MAP" TO "ENZYME_COMMITTEE";
 
  GRANT DELETE ON "REACTIONS_MAP" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "REACTIONS_MAP" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "REACTIONS_MAP" TO "ENZYME_CURATOR";
 
  GRANT UPDATE ON "REACTIONS_MAP" TO "ENZYME_CURATOR";
 
  GRANT DELETE ON "REACTIONS_MAP" TO "ENZYME_PRODUCTION";
 
  GRANT INSERT ON "REACTIONS_MAP" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "REACTIONS_MAP" TO "ENZYME_PRODUCTION";
 
  GRANT UPDATE ON "REACTIONS_MAP" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "REACTIONS_MAP" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table REACTIONS_MAP_AUDIT
--------------------------------------------------------

  CREATE TABLE "REACTIONS_MAP_AUDIT" 
   (	"REACTION_ID" NUMBER(7,0), 
	"ENZYME_ID" NUMBER(7,0), 
	"WEB_VIEW" VARCHAR2(12 BYTE), 
	"ORDER_IN" NUMBER(2,0), 
	"TIMESTAMP" DATE, 
	"AUDIT_ID" NUMBER(15,0), 
	"DBUSER" VARCHAR2(30 BYTE), 
	"OSUSER" VARCHAR2(30 BYTE), 
	"REMARK" VARCHAR2(50 BYTE), 
	"ACTION" VARCHAR2(3 BYTE), 
	"IUBMB" VARCHAR2(1 BYTE) DEFAULT NULL
   ) ;
 

   COMMENT ON TABLE "REACTIONS_MAP_AUDIT"  IS 'Audit table for reactions_map.';
  GRANT SELECT ON "REACTIONS_MAP_AUDIT" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table REACTION_CITATIONS
--------------------------------------------------------

  CREATE TABLE "REACTION_CITATIONS" 
   (	"REACTION_ID" NUMBER(7,0), 
	"PUB_ID" VARCHAR2(10 BYTE), 
	"SOURCE" VARCHAR2(6 BYTE), 
	"ORDER_IN" NUMBER(3,0)
   ) ;
 

   COMMENT ON COLUMN "REACTION_CITATIONS"."REACTION_ID" IS 'Rhea ID of the cited reaction.';
 
   COMMENT ON COLUMN "REACTION_CITATIONS"."PUB_ID" IS 'ID of the publication citing the reaction.';
 
   COMMENT ON COLUMN "REACTION_CITATIONS"."SOURCE" IS 'Source database of the citation.';
 
   COMMENT ON COLUMN "REACTION_CITATIONS"."ORDER_IN" IS 'Order applied to citations for the same reaction. May or may not be used.';
 
   COMMENT ON TABLE "REACTION_CITATIONS"  IS 'Bibliographic citations for reactions.';
  GRANT SELECT ON "REACTION_CITATIONS" TO "ENZYME_COMMITTEE";
 
  GRANT DELETE ON "REACTION_CITATIONS" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "REACTION_CITATIONS" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "REACTION_CITATIONS" TO "ENZYME_CURATOR";
 
  GRANT UPDATE ON "REACTION_CITATIONS" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "REACTION_CITATIONS" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "REACTION_CITATIONS" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table REACTION_CITATIONS_AUDIT
--------------------------------------------------------

  CREATE TABLE "REACTION_CITATIONS_AUDIT" 
   (	"REACTION_ID" NUMBER(7,0), 
	"PUB_ID" VARCHAR2(10 BYTE), 
	"SOURCE" VARCHAR2(6 BYTE), 
	"ORDER_IN" NUMBER(3,0), 
	"TIMESTAMP" DATE, 
	"AUDIT_ID" NUMBER(15,0), 
	"DBUSER" VARCHAR2(30 BYTE), 
	"OSUSER" VARCHAR2(30 BYTE), 
	"REMARK" VARCHAR2(500 BYTE), 
	"ACTION" VARCHAR2(3 BYTE)
   ) ;
 

   COMMENT ON TABLE "REACTION_CITATIONS_AUDIT"  IS 'Audit table for reaction citations.';
  GRANT DELETE ON "REACTION_CITATIONS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "REACTION_CITATIONS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "REACTION_CITATIONS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT UPDATE ON "REACTION_CITATIONS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "REACTION_CITATIONS_AUDIT" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table REACTION_MERGINGS
--------------------------------------------------------

  CREATE TABLE "REACTION_MERGINGS" 
   (	"FROM_ID" NUMBER(7,0), 
	"TO_ID" NUMBER(7,0), 
	"MERGING_COMMENT" VARCHAR2(3000 BYTE), 
	"MERGING_WHO" VARCHAR2(30 BYTE), 
	"MERGING_WHEN" DATE
   ) ;
 

   COMMENT ON COLUMN "REACTION_MERGINGS"."FROM_ID" IS 'Secondary ID';
 
   COMMENT ON COLUMN "REACTION_MERGINGS"."TO_ID" IS 'Primary ID';
 
   COMMENT ON COLUMN "REACTION_MERGINGS"."MERGING_COMMENT" IS 'Explanation for the merging.';
 
   COMMENT ON COLUMN "REACTION_MERGINGS"."MERGING_WHO" IS 'User merging reactions.';
 
   COMMENT ON COLUMN "REACTION_MERGINGS"."MERGING_WHEN" IS 'Date and time of merging.';
 
   COMMENT ON TABLE "REACTION_MERGINGS"  IS 'Table keeping track of merged reactions.';
  GRANT DELETE ON "REACTION_MERGINGS" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "REACTION_MERGINGS" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "REACTION_MERGINGS" TO "ENZYME_CURATOR";
 
  GRANT UPDATE ON "REACTION_MERGINGS" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "REACTION_MERGINGS" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table REACTION_PARTICIPANTS
--------------------------------------------------------

  CREATE TABLE "REACTION_PARTICIPANTS" 
   (	"REACTION_ID" NUMBER(7,0), 
	"COMPOUND_ID" NUMBER(15,0), 
	"SIDE" VARCHAR2(1 BYTE), 
	"COEFFICIENT" NUMBER(2,0) DEFAULT 1, 
	"COEFF_TYPE" VARCHAR2(1 BYTE) DEFAULT 'F', 
	"LOCATION" VARCHAR2(1 BYTE)
   ) ;
 

   COMMENT ON COLUMN "REACTION_PARTICIPANTS"."REACTION_ID" IS 'Rhea ID of the reaction.';
 
   COMMENT ON COLUMN "REACTION_PARTICIPANTS"."COMPOUND_ID" IS 'Internal compound ID of the reaction participant.';
 
   COMMENT ON COLUMN "REACTION_PARTICIPANTS"."SIDE" IS 'Side of the reaction.';
 
   COMMENT ON COLUMN "REACTION_PARTICIPANTS"."COEFFICIENT" IS 'Stoichiometric coefficient applied to the reaction participant.';
 
   COMMENT ON COLUMN "REACTION_PARTICIPANTS"."COEFF_TYPE" IS 'Type of stoichiometric coefficient.';
 
   COMMENT ON TABLE "REACTION_PARTICIPANTS"  IS 'Connection table between compound_data and intenz_reactions.';
  GRANT SELECT ON "REACTION_PARTICIPANTS" TO "ENZYME_COMMITTEE";
 
  GRANT DELETE ON "REACTION_PARTICIPANTS" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "REACTION_PARTICIPANTS" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "REACTION_PARTICIPANTS" TO "ENZYME_CURATOR";
 
  GRANT UPDATE ON "REACTION_PARTICIPANTS" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "REACTION_PARTICIPANTS" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "REACTION_PARTICIPANTS" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table REACTION_PARTICIPANTS_AUDIT
--------------------------------------------------------

  CREATE TABLE "REACTION_PARTICIPANTS_AUDIT" 
   (	"REACTION_ID" NUMBER(7,0), 
	"COMPOUND_ID" NUMBER(15,0), 
	"SIDE" VARCHAR2(1 BYTE), 
	"COEFFICIENT" NUMBER(2,0), 
	"COEFF_TYPE" VARCHAR2(1 BYTE), 
	"TIMESTAMP" DATE, 
	"AUDIT_ID" NUMBER(15,0), 
	"DBUSER" VARCHAR2(30 BYTE), 
	"OSUSER" VARCHAR2(30 BYTE), 
	"REMARK" VARCHAR2(50 BYTE), 
	"ACTION" VARCHAR2(3 BYTE), 
	"LOCATION" VARCHAR2(1 BYTE)
   ) ;
 

   COMMENT ON TABLE "REACTION_PARTICIPANTS_AUDIT"  IS 'Audit table for reaction_participants.';
  GRANT SELECT ON "REACTION_PARTICIPANTS_AUDIT" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table REACTION_XREFS
--------------------------------------------------------

  CREATE TABLE "REACTION_XREFS" 
   (	"REACTION_ID" NUMBER(7,0), 
	"DB_CODE" VARCHAR2(6 BYTE), 
	"DB_ACCESSION" VARCHAR2(500 BYTE)
   ) ;
 

   COMMENT ON COLUMN "REACTION_XREFS"."REACTION_ID" IS 'Rhea ID';
 
   COMMENT ON COLUMN "REACTION_XREFS"."DB_CODE" IS 'Code of the referenced database.';
 
   COMMENT ON COLUMN "REACTION_XREFS"."DB_ACCESSION" IS 'Accession number of the cross-reference.';
 
   COMMENT ON TABLE "REACTION_XREFS"  IS 'Reaction cross-references to other databases.';
  GRANT SELECT ON "REACTION_XREFS" TO "ENZYME_COMMITTEE";
 
  GRANT DELETE ON "REACTION_XREFS" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "REACTION_XREFS" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "REACTION_XREFS" TO "ENZYME_CURATOR";
 
  GRANT UPDATE ON "REACTION_XREFS" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "REACTION_XREFS" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "REACTION_XREFS" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table REACTION_XREFS_AUDIT
--------------------------------------------------------

  CREATE TABLE "REACTION_XREFS_AUDIT" 
   (	"REACTION_ID" NUMBER(7,0), 
	"DB_CODE" VARCHAR2(9 BYTE), 
	"DB_ACCESSION" VARCHAR2(500 BYTE), 
	"TIMESTAMP" DATE, 
	"AUDIT_ID" NUMBER(15,0), 
	"DBUSER" VARCHAR2(30 BYTE), 
	"OSUSER" VARCHAR2(30 BYTE), 
	"REMARK" VARCHAR2(500 BYTE), 
	"ACTION" VARCHAR2(3 BYTE)
   ) ;
 

   COMMENT ON TABLE "REACTION_XREFS_AUDIT"  IS 'Audit table for reaction_xrefs.';
  GRANT DELETE ON "REACTION_XREFS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "REACTION_XREFS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "REACTION_XREFS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT UPDATE ON "REACTION_XREFS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "REACTION_XREFS_AUDIT" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table RELEASES
--------------------------------------------------------

  CREATE TABLE "RELEASES" 
   (	"DB" VARCHAR2(6 BYTE), 
	"REL_NO" NUMBER(3,0), 
	"REL_DATE" DATE
   ) ;
 

   COMMENT ON TABLE "RELEASES"  IS 'Release history for the databases in this schema. The higher figure reflects the current public release.';
  GRANT SELECT ON "RELEASES" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table ROLES
--------------------------------------------------------

  CREATE TABLE "ROLES" 
   (	"USERNAME" VARCHAR2(20 BYTE), 
	"ROLE" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table STATS
--------------------------------------------------------

  CREATE TABLE "STATS" 
   (	"STATID" VARCHAR2(30 BYTE), 
	"TYPE" CHAR(1 BYTE), 
	"VERSION" NUMBER, 
	"FLAGS" NUMBER, 
	"C1" VARCHAR2(30 BYTE), 
	"C2" VARCHAR2(30 BYTE), 
	"C3" VARCHAR2(30 BYTE), 
	"C4" VARCHAR2(30 BYTE), 
	"C5" VARCHAR2(30 BYTE), 
	"N1" NUMBER, 
	"N2" NUMBER, 
	"N3" NUMBER, 
	"N4" NUMBER, 
	"N5" NUMBER, 
	"N6" NUMBER, 
	"N7" NUMBER, 
	"N8" NUMBER, 
	"N9" NUMBER, 
	"N10" NUMBER, 
	"N11" NUMBER, 
	"N12" NUMBER, 
	"D1" DATE, 
	"R1" RAW(32), 
	"R2" RAW(32), 
	"CH1" VARCHAR2(1000 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table SUBCLASSES
--------------------------------------------------------

  CREATE TABLE "SUBCLASSES" 
   (	"EC1" NUMBER(1,0), 
	"EC2" NUMBER(2,0), 
	"NAME" VARCHAR2(200 BYTE), 
	"DESCRIPTION" VARCHAR2(2000 BYTE), 
	"ACTIVE" VARCHAR2(1 BYTE) DEFAULT 'Y'
   ) ;
 

   COMMENT ON COLUMN "SUBCLASSES"."EC1" IS 'The first number, ec1, is the number of the class, example ''3''.';
 
   COMMENT ON COLUMN "SUBCLASSES"."EC2" IS 'The second number, ec2, defines the subclass inside the class, example ''3.1''.';
 
   COMMENT ON COLUMN "SUBCLASSES"."NAME" IS 'Name of the subclass, example ''Acting on ester bonds''. This name makes only sense inside it''s class.';
 
   COMMENT ON COLUMN "SUBCLASSES"."DESCRIPTION" IS 'Description is a short paragraph explaining the contents of the subclass.';
 
   COMMENT ON COLUMN "SUBCLASSES"."ACTIVE" IS 'IUBMB uses ''deleted'' for different meanings. We say ''active'' for enzymes that are currently recommended by IUBMB. Opposit of inactive';
 
   COMMENT ON TABLE "SUBCLASSES"  IS 'Subclasses, second level of the enzyme hierachy. A subclass is always part of a class. For example, the subclass EC 3.1 ''Acting on ester bonds'' is a child of the class EC 3 ''Hydrolases''. ';
  GRANT DELETE ON "SUBCLASSES" TO "ENZYME_COMMITTEE";
 
  GRANT INSERT ON "SUBCLASSES" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "SUBCLASSES" TO "ENZYME_COMMITTEE";
 
  GRANT UPDATE ON "SUBCLASSES" TO "ENZYME_COMMITTEE";
 
  GRANT DELETE ON "SUBCLASSES" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "SUBCLASSES" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "SUBCLASSES" TO "ENZYME_CURATOR";
 
  GRANT UPDATE ON "SUBCLASSES" TO "ENZYME_CURATOR";
 
  GRANT DELETE ON "SUBCLASSES" TO "ENZYME_PRODUCTION";
 
  GRANT INSERT ON "SUBCLASSES" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "SUBCLASSES" TO "ENZYME_PRODUCTION";
 
  GRANT UPDATE ON "SUBCLASSES" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "SUBCLASSES" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table SUBCLASSES_AUDIT
--------------------------------------------------------

  CREATE TABLE "SUBCLASSES_AUDIT" 
   (	"EC1" NUMBER(1,0), 
	"EC2" NUMBER(2,0), 
	"NAME" VARCHAR2(200 BYTE), 
	"DESCRIPTION" VARCHAR2(2000 BYTE), 
	"ACTIVE" VARCHAR2(1 BYTE), 
	"TIMESTAMP" DATE, 
	"AUDIT_ID" NUMBER(15,0), 
	"DBUSER" VARCHAR2(30 BYTE), 
	"OSUSER" VARCHAR2(30 BYTE), 
	"REMARK" VARCHAR2(50 BYTE), 
	"ACTION" VARCHAR2(3 BYTE)
   ) ;
 

   COMMENT ON COLUMN "SUBCLASSES_AUDIT"."EC1" IS 'Audit column';
 
   COMMENT ON COLUMN "SUBCLASSES_AUDIT"."EC2" IS 'Audit column';
 
   COMMENT ON COLUMN "SUBCLASSES_AUDIT"."NAME" IS 'Audit column';
 
   COMMENT ON COLUMN "SUBCLASSES_AUDIT"."DESCRIPTION" IS 'Audit column';
 
   COMMENT ON COLUMN "SUBCLASSES_AUDIT"."ACTIVE" IS 'Audit column';
 
   COMMENT ON COLUMN "SUBCLASSES_AUDIT"."TIMESTAMP" IS 'Date and time of the action.';
 
   COMMENT ON COLUMN "SUBCLASSES_AUDIT"."AUDIT_ID" IS 'Serial number of audit action.';
 
   COMMENT ON COLUMN "SUBCLASSES_AUDIT"."DBUSER" IS 'Oracle account name of the user doing the action.';
 
   COMMENT ON COLUMN "SUBCLASSES_AUDIT"."OSUSER" IS 'Unix account of the user doing the action.';
 
   COMMENT ON COLUMN "SUBCLASSES_AUDIT"."REMARK" IS 'Optional remark, set by calling enzyme.auditpackage.setremark.';
 
   COMMENT ON COLUMN "SUBCLASSES_AUDIT"."ACTION" IS 'A short code for the action, ''I'' for insert, ''U'' for update, ''D'' for delete.';
 
   COMMENT ON TABLE "SUBCLASSES_AUDIT"  IS 'Audit table storing the history of table subclasses.';
  GRANT INSERT ON "SUBCLASSES_AUDIT" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "SUBCLASSES_AUDIT" TO "ENZYME_COMMITTEE";
 
  GRANT INSERT ON "SUBCLASSES_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "SUBCLASSES_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "SUBCLASSES_AUDIT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "SUBCLASSES_AUDIT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "SUBCLASSES_AUDIT" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table SUBSUBCLASSES
--------------------------------------------------------

  CREATE TABLE "SUBSUBCLASSES" 
   (	"EC1" NUMBER(1,0), 
	"EC2" NUMBER(2,0), 
	"EC3" NUMBER(3,0), 
	"NAME" VARCHAR2(200 BYTE), 
	"DESCRIPTION" VARCHAR2(2000 BYTE), 
	"ACTIVE" VARCHAR2(1 BYTE) DEFAULT 'Y'
   ) ;
 

   COMMENT ON COLUMN "SUBSUBCLASSES"."EC1" IS 'The first number is the number of the class, example ''3''.';
 
   COMMENT ON COLUMN "SUBSUBCLASSES"."EC2" IS 'The second number, ec2, defines the subclass inside the class, example ''3.1''.';
 
   COMMENT ON COLUMN "SUBSUBCLASSES"."EC3" IS 'The third number, ec3, defines the subsubclass inside the subclass, example ''3.1.1''.';
 
   COMMENT ON COLUMN "SUBSUBCLASSES"."NAME" IS 'Name, example ''Carboxylic ester hydrolases''. This name makes only sense inside it''s subclass.';
 
   COMMENT ON COLUMN "SUBSUBCLASSES"."DESCRIPTION" IS 'Description is a short paragraph explaining the contents of the subsubclass.';
 
   COMMENT ON COLUMN "SUBSUBCLASSES"."ACTIVE" IS 'IUBMB uses ''deleted'' for different meanings. We say ''active'' for enzymes that are currently recommended by IUBMB. Opposit of inactive';
 
   COMMENT ON TABLE "SUBSUBCLASSES"  IS 'Subsubclasses, third level of the enzyme hierachy. A subsubclass is always part of a subclass. For example, the subsubclass EC 3.1.1 ''Carboxylic ester hydrolases'' is a child of subclass EC 3.1 ''Acting on ester bonds''.';
  GRANT DELETE ON "SUBSUBCLASSES" TO "ENZYME_COMMITTEE";
 
  GRANT INSERT ON "SUBSUBCLASSES" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "SUBSUBCLASSES" TO "ENZYME_COMMITTEE";
 
  GRANT UPDATE ON "SUBSUBCLASSES" TO "ENZYME_COMMITTEE";
 
  GRANT DELETE ON "SUBSUBCLASSES" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "SUBSUBCLASSES" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "SUBSUBCLASSES" TO "ENZYME_CURATOR";
 
  GRANT UPDATE ON "SUBSUBCLASSES" TO "ENZYME_CURATOR";
 
  GRANT DELETE ON "SUBSUBCLASSES" TO "ENZYME_PRODUCTION";
 
  GRANT INSERT ON "SUBSUBCLASSES" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "SUBSUBCLASSES" TO "ENZYME_PRODUCTION";
 
  GRANT UPDATE ON "SUBSUBCLASSES" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "SUBSUBCLASSES" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table SUBSUBCLASSES_AUDIT
--------------------------------------------------------

  CREATE TABLE "SUBSUBCLASSES_AUDIT" 
   (	"EC1" NUMBER(1,0), 
	"EC2" NUMBER(2,0), 
	"EC3" NUMBER(3,0), 
	"NAME" VARCHAR2(200 BYTE), 
	"DESCRIPTION" VARCHAR2(2000 BYTE), 
	"ACTIVE" VARCHAR2(1 BYTE), 
	"TIMESTAMP" DATE, 
	"AUDIT_ID" NUMBER(15,0), 
	"DBUSER" VARCHAR2(30 BYTE), 
	"OSUSER" VARCHAR2(30 BYTE), 
	"REMARK" VARCHAR2(50 BYTE), 
	"ACTION" VARCHAR2(3 BYTE)
   ) ;
 

   COMMENT ON COLUMN "SUBSUBCLASSES_AUDIT"."EC1" IS 'Audit column';
 
   COMMENT ON COLUMN "SUBSUBCLASSES_AUDIT"."EC2" IS 'Audit column';
 
   COMMENT ON COLUMN "SUBSUBCLASSES_AUDIT"."EC3" IS 'Audit column';
 
   COMMENT ON COLUMN "SUBSUBCLASSES_AUDIT"."NAME" IS 'Audit column';
 
   COMMENT ON COLUMN "SUBSUBCLASSES_AUDIT"."DESCRIPTION" IS 'Audit column';
 
   COMMENT ON COLUMN "SUBSUBCLASSES_AUDIT"."ACTIVE" IS 'Audit column';
 
   COMMENT ON COLUMN "SUBSUBCLASSES_AUDIT"."TIMESTAMP" IS 'Date and time of the action.';
 
   COMMENT ON COLUMN "SUBSUBCLASSES_AUDIT"."AUDIT_ID" IS 'Serial number of audit action.';
 
   COMMENT ON COLUMN "SUBSUBCLASSES_AUDIT"."DBUSER" IS 'Oracle account name of the user doing the action.';
 
   COMMENT ON COLUMN "SUBSUBCLASSES_AUDIT"."OSUSER" IS 'Unix account of the user doing the action.';
 
   COMMENT ON COLUMN "SUBSUBCLASSES_AUDIT"."REMARK" IS 'Optional remark, set by calling enzyme.auditpackage.setremark.';
 
   COMMENT ON COLUMN "SUBSUBCLASSES_AUDIT"."ACTION" IS 'A short code for the action, ''I'' for insert, ''U'' for update, ''D'' for delete.';
 
   COMMENT ON TABLE "SUBSUBCLASSES_AUDIT"  IS 'Audit table storing the history of table subsubclasses.';
  GRANT INSERT ON "SUBSUBCLASSES_AUDIT" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "SUBSUBCLASSES_AUDIT" TO "ENZYME_COMMITTEE";
 
  GRANT INSERT ON "SUBSUBCLASSES_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "SUBSUBCLASSES_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "SUBSUBCLASSES_AUDIT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "SUBSUBCLASSES_AUDIT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "SUBSUBCLASSES_AUDIT" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table TIMEOUTS
--------------------------------------------------------

  CREATE TABLE "TIMEOUTS" 
   (	"ENZYME_ID" NUMBER(7,0), 
	"START_DATE" DATE, 
	"DUE_DATE" DATE, 
	"TIMEOUT_ID" NUMBER(7,0)
   ) ;
 

   COMMENT ON COLUMN "TIMEOUTS"."ENZYME_ID" IS 'Suggested or proposed enzyme.';
 
   COMMENT ON COLUMN "TIMEOUTS"."START_DATE" IS 'Date and time when enzyme was suggested or proposed.';
 
   COMMENT ON COLUMN "TIMEOUTS"."DUE_DATE" IS 'Date and time when this suggestion or proposal will be automatically accepted. Should be two month after start_date in normal cases.';
 
   COMMENT ON TABLE "TIMEOUTS"  IS 'Table of pending timeouts for suggested and proposed enzymes. If suggestions or proposals are not approved or rejected by IUBMB with two month, they automatically are accepted. This table holds the dates.';
  GRANT SELECT ON "TIMEOUTS" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "TIMEOUTS" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "TIMEOUTS" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "TIMEOUTS" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table TIMEOUTS_AUDIT
--------------------------------------------------------

  CREATE TABLE "TIMEOUTS_AUDIT" 
   (	"ENZYME_ID" NUMBER(7,0), 
	"START_DATE" DATE, 
	"DUE_DATE" DATE, 
	"TIMEOUT_ID" NUMBER(7,0), 
	"TIMESTAMP" DATE, 
	"AUDIT_ID" NUMBER(15,0), 
	"DBUSER" VARCHAR2(30 BYTE), 
	"OSUSER" VARCHAR2(30 BYTE), 
	"REMARK" VARCHAR2(50 BYTE), 
	"ACTION" VARCHAR2(3 BYTE)
   ) ;
 

   COMMENT ON TABLE "TIMEOUTS_AUDIT"  IS 'Audit table for TIMEOUTS.';
  GRANT SELECT ON "TIMEOUTS_AUDIT" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "TIMEOUTS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "TIMEOUTS_AUDIT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "TIMEOUTS_AUDIT" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "USERS" 
   (	"USERNAME" VARCHAR2(20 BYTE), 
	"PASSWORD" VARCHAR2(32 BYTE), 
	"ORGANISATION" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(40 BYTE)
   ) ;
 

   COMMENT ON COLUMN "USERS"."USERNAME" IS 'Uppercase username';
 
   COMMENT ON COLUMN "USERS"."PASSWORD" IS 'MD5 digest of username+password as hexadecimal string';
--------------------------------------------------------
--  DDL for Table XREFS
--------------------------------------------------------

  CREATE TABLE "XREFS" 
   (	"ENZYME_ID" NUMBER(7,0), 
	"DATABASE_CODE" VARCHAR2(9 BYTE), 
	"DATABASE_AC" VARCHAR2(500 BYTE), 
	"NAME" VARCHAR2(200 BYTE), 
	"STATUS" VARCHAR2(2 BYTE) DEFAULT 'NO', 
	"SOURCE" VARCHAR2(6 BYTE), 
	"WEB_VIEW" VARCHAR2(50 BYTE), 
	"DATA_COMMENT" VARCHAR2(1000 BYTE)
   ) ;
 

   COMMENT ON COLUMN "XREFS"."ENZYME_ID" IS 'Enzyme_id is used as an internal unique identifier throughout the database as some entries don''t have an EC number, e.g. suggested entries. Example is ''70001'', ''9945'', etc';
 
   COMMENT ON COLUMN "XREFS"."DATABASE_CODE" IS 'Database internal code, for example ''INTENZ'', ''IUBMB'', ''S'', etc. In the beginning there are only Xrefs to the databases SWISS-PROT and TrEMBL.';
 
   COMMENT ON COLUMN "XREFS"."DATABASE_AC" IS 'Database accession.';
 
   COMMENT ON COLUMN "XREFS"."NAME" IS 'Name of the cross-reference, if any.';
 
   COMMENT ON COLUMN "XREFS"."STATUS" IS 'Internal code of status, for example ''NO'', ''UN'', ''SN'', ''OK'', etc.';
 
   COMMENT ON COLUMN "XREFS"."SOURCE" IS 'Database internal code, for example ''INTENZ'', ''IUBMB'', ''BRENDA'', ''SIB'' etc. Each enzyme belongs to one of them. In the beginning there are only Xrefs to the databases SWISS-PROT and TrEMBL.';
 
   COMMENT ON COLUMN "XREFS"."WEB_VIEW" IS 'View to display the cross-reference in.';
 
   COMMENT ON COLUMN "XREFS"."DATA_COMMENT" IS 'Comment on the cross-reference.';
 
   COMMENT ON TABLE "XREFS"  IS 'Xrefs, table storing links to other databases like SWISS-PROT (''S''), TrEMBL (''T''), and later also PROSITE, MIM database, and so on.';
  GRANT DELETE ON "XREFS" TO "ENZYME_COMMITTEE";
 
  GRANT INSERT ON "XREFS" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "XREFS" TO "ENZYME_COMMITTEE";
 
  GRANT UPDATE ON "XREFS" TO "ENZYME_COMMITTEE";
 
  GRANT DELETE ON "XREFS" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "XREFS" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "XREFS" TO "ENZYME_CURATOR";
 
  GRANT UPDATE ON "XREFS" TO "ENZYME_CURATOR";
 
  GRANT DELETE ON "XREFS" TO "ENZYME_PRODUCTION";
 
  GRANT INSERT ON "XREFS" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "XREFS" TO "ENZYME_PRODUCTION";
 
  GRANT UPDATE ON "XREFS" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "XREFS" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Table XREFS_AUDIT
--------------------------------------------------------

  CREATE TABLE "XREFS_AUDIT" 
   (	"ENZYME_ID" NUMBER(7,0), 
	"DATABASE_CODE" VARCHAR2(9 BYTE), 
	"DATABASE_AC" VARCHAR2(500 BYTE), 
	"NAME" VARCHAR2(200 BYTE), 
	"STATUS" VARCHAR2(2 BYTE), 
	"SOURCE" VARCHAR2(6 BYTE), 
	"TIMESTAMP" DATE, 
	"AUDIT_ID" NUMBER(15,0), 
	"DBUSER" VARCHAR2(30 BYTE), 
	"OSUSER" VARCHAR2(30 BYTE), 
	"REMARK" VARCHAR2(50 BYTE), 
	"ACTION" VARCHAR2(3 BYTE), 
	"WEB_VIEW" VARCHAR2(50 BYTE), 
	"DATA_COMMENT" VARCHAR2(1000 BYTE)
   ) ;
 

   COMMENT ON COLUMN "XREFS_AUDIT"."ENZYME_ID" IS 'Audit column';
 
   COMMENT ON COLUMN "XREFS_AUDIT"."DATABASE_CODE" IS 'Audit column';
 
   COMMENT ON COLUMN "XREFS_AUDIT"."DATABASE_AC" IS 'Audit column';
 
   COMMENT ON COLUMN "XREFS_AUDIT"."NAME" IS 'Audit column';
 
   COMMENT ON COLUMN "XREFS_AUDIT"."STATUS" IS 'Audit column';
 
   COMMENT ON COLUMN "XREFS_AUDIT"."SOURCE" IS 'Audit column';
 
   COMMENT ON COLUMN "XREFS_AUDIT"."TIMESTAMP" IS 'Date and time of the action.';
 
   COMMENT ON COLUMN "XREFS_AUDIT"."AUDIT_ID" IS 'Serial number of audit action.';
 
   COMMENT ON COLUMN "XREFS_AUDIT"."DBUSER" IS 'Oracle account name of the user doing the action.';
 
   COMMENT ON COLUMN "XREFS_AUDIT"."OSUSER" IS 'Unix account of the user doing the action.';
 
   COMMENT ON COLUMN "XREFS_AUDIT"."REMARK" IS 'Optional remark, set by calling enzyme.auditpackage.setremark.';
 
   COMMENT ON COLUMN "XREFS_AUDIT"."ACTION" IS 'A short code for the action, ''I'' for insert, ''U'' for update, ''D'' for delete.';
 
   COMMENT ON TABLE "XREFS_AUDIT"  IS 'Audit table storing the history of table xrefs.';
  GRANT INSERT ON "XREFS_AUDIT" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "XREFS_AUDIT" TO "ENZYME_COMMITTEE";
 
  GRANT INSERT ON "XREFS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "XREFS_AUDIT" TO "ENZYME_CURATOR";
 
  GRANT INSERT ON "XREFS_AUDIT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "XREFS_AUDIT" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "XREFS_AUDIT" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for View CHEBI_REACTIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "CHEBI_REACTIONS" ("CHEBI_ID", "REACTION_ID", "EQUATION") AS 
  SELECT UNIQUE cd.accession chebi_id, ir.reaction_id, ir.equation
FROM compound_data cd, reaction_participants rp, intenz_reactions ir
WHERE cd.accession IS NOT NULL
AND cd.compound_id = rp.compound_id
AND (rp.reaction_id = ir.reaction_id OR rp.reaction_id = ir.un_reaction)
AND ir.status IN ('OK','PM','OB');
  GRANT SELECT ON "CHEBI_REACTIONS" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for View CHEBI_XREFS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "CHEBI_XREFS" ("CHEBI_ID", "ENZYME_ID", "EC", "ENZYME_NAME") AS 
  select unique cd.accession chebi_id, ie.enzyme_id, ie.ec, n.name enzyme_name
from compound_data cd, id2ec ie, cofactors cf, names n
where
  cd.accession is not null
  and cd.compound_id = cf.compound_id
  and cf.enzyme_id = ie.enzyme_id
  and ie.enzyme_id = n.enzyme_id
  and n.name_class = 'COM'
  and n.web_view like '%INTENZ'
UNION
-- reaction participants
select unique cd.accession chebi_id, ie.enzyme_id, ie.ec, n.name enzyme_name
from compound_data cd, id2ec ie, reaction_participants rp, intenz_reactions ir, reactions_map rm, names n
where
  cd.accession is not null
  and cd.compound_id = rp.compound_id
  and (rp.reaction_id = ir.reaction_id or rp.reaction_id = ir.un_reaction)
  and ir.status in ('OK','PM')
  and ir.reaction_id = rm.reaction_id
  and rm.enzyme_id = ie.enzyme_id
  and ie.enzyme_id = n.enzyme_id
  and n.name_class = 'COM'
  and n.web_view like '%INTENZ';
  GRANT SELECT ON "CHEBI_XREFS" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for View EC_NB_REACTION
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "EC_NB_REACTION" ("ENZYME_ID", "EC", "NB_REACTION") AS 
  select ec.enzyme_id,ec.ec, count(r.equation) as nb_reaction
from enzyme.id2ec ec,enzyme.reactions r
where r.enzyme_id=ec.enzyme_id
group by ec.enzyme_id,ec.ec;
  GRANT SELECT ON "EC_NB_REACTION" TO "ENZYME_WEBSERVER";
--------------------------------------------------------
--  DDL for View VW_CLASSES
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "VW_CLASSES" ("EC1", "EC2", "EC3", "DESCRIPTION") AS 
  select decode(ec1,0,null,ec1) ec1
       ,decode(ec2,0,null,ec2) ec2
       ,decode(ec3,0,null,ec3) ec3
       ,description
 from
 (
  select ec1  ec1
       , 0    ec2
       , 0    ec3
       , f_classes(ec1,null,null) description
  from  classes
  union
  select ec1
       , ec2
       , 0
       , f_classes(ec1,ec2,null)
  from  subclasses
  union
  select ec1
       , ec2
       , ec3
       , f_classes(ec1,ec2,ec3)  descr1
  from  subsubclasses
  order by 1,2,3
 );
--------------------------------------------------------
--  DDL for View V_COUNT_ENZYME_EQUATION_OK
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "V_COUNT_ENZYME_EQUATION_OK" ("EC", "ENZYME_ID", "NB_EQUATION") AS 
  select ec.ec, ec.enzyme_id, count(r.equation) as nb_equation from reactions r,id2ec ec where ec.enzyme_id=r.enzyme_id and r.status = 'OK' group by ec.ec, ec.enzyme_id;
--------------------------------------------------------
--  DDL for View V_EC_FOR_DATALIB
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "V_EC_FOR_DATALIB" ("EC_NUMBER") AS 
  SELECT distinct f_quad2string(ec1,ec2,ec3,ec4)
  FROM enzymes E1
 WHERE E1.active = 'Y'
   AND E1.status = 'OK'
   AND E1.ec1 IS NOT NULL
  WITH READ ONLY
;
  GRANT SELECT ON "V_EC_FOR_DATALIB" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "V_EC_FOR_DATALIB" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "V_EC_FOR_DATALIB" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "V_EC_FOR_DATALIB" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for View V_EC_NB_RHEA_IUBMB
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "V_EC_NB_RHEA_IUBMB" ("ENZYME_ID", "NB_RHEA_IUBMB") AS 
  select enzyme_id,sum(iubmb) as nb_rhea_iubmb from v_ec_reaction_iubmb group by enzyme_id;
--------------------------------------------------------
--  DDL for View V_EC_NB_RHEA_OK
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "V_EC_NB_RHEA_OK" ("ENZYME_ID", "NB_RHEA_OK") AS 
  SELECT enzyme_id,
    SUM(status_ok) AS nb_rhea_ok
  FROM V_EC_RHEA_STATUS_OK
  GROUP BY enzyme_id;
--------------------------------------------------------
--  DDL for View V_EC_REACTION_IUBMB
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "V_EC_REACTION_IUBMB" ("ENZYME_ID", "REACTION_ID", "IUBMB") AS 
  SELECT distinct m.enzyme_id,m.reaction_id,
    CASE
      WHEN iubmb='Y'
      THEN 1
      ELSE 0
    END AS iubmb
  FROM reactions_map m, enzyme.enzymes ec
  where m.enzyme_id=ec.enzyme_id
  and ec.active='Y';
--------------------------------------------------------
--  DDL for View V_EC_RHEA_EQUATION
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "V_EC_RHEA_EQUATION" ("ENZYME_ID", "EC", "NB_RHEA", "NB_REACTION") AS 
  select ec.enzyme_id,ec.ec, count(distinct m.reaction_id) as nb_rhea,count(distinct r.equation) as nb_reaction  from enzyme.id2ec ec,enzyme.reactions_map m ,enzyme.reactions r 
where r.enzyme_id=ec.enzyme_id and m.enzyme_id=ec.enzyme_id  
group by ec.enzyme_id,ec.ec;
--------------------------------------------------------
--  DDL for View V_EC_RHEA_STATUS_OK
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "V_EC_RHEA_STATUS_OK" ("ENZYME_ID", "REACTION_ID", "STATUS_OK") AS 
  SELECT DISTINCT m.enzyme_id,
    m.reaction_id,
    CASE
      WHEN r.status='OK'
      THEN 1
      ELSE 0
    END AS status_ok
  FROM reactions_map m,
    enzyme.enzymes ec,
    enzyme.intenz_reactions r
  WHERE m.enzyme_id=ec.enzyme_id
  AND ec.active    ='Y'
  and r.reaction_id=m.reaction_id;
--------------------------------------------------------
--  DDL for View V_INTERPRO
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "V_INTERPRO" ("EC", "NAME", "UNIPROT_ACCESSION", "UNIPROT_NAME") AS 
  SELECT
        ie.ec,
        f_xml_display_sp_code(n.name) name,
        x.database_ac UniProt_accession,
        x.name UniProt_name
FROM
        id2ec ie, names n, xrefs x
WHERE
        ie.enzyme_id = n.enzyme_id
        AND n.enzyme_id = x.enzyme_id
        AND x.database_code = 'S'
        AND n.name_class = 'COM'
ORDER BY ec ASC;
  GRANT SELECT ON "V_INTERPRO" TO "ENZYME_COMMITTEE";
 
  GRANT SELECT ON "V_INTERPRO" TO "ENZYME_CURATOR";
 
  GRANT SELECT ON "V_INTERPRO" TO "ENZYME_PRODUCTION";
 
  GRANT SELECT ON "V_INTERPRO" TO "ENZYME_SELECT";
 
  GRANT SELECT ON "V_INTERPRO" TO "INTERPRO";
--------------------------------------------------------
--  DDL for Index PK_LINKS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_LINKS" ON "LINKS" ("ENZYME_ID", "URL") 
  ;
--------------------------------------------------------
--  DDL for Index PK_REACTION_CITATIONS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_REACTION_CITATIONS" ON "REACTION_CITATIONS" ("REACTION_ID", "PUB_ID", "SOURCE") 
  ;
--------------------------------------------------------
--  DDL for Index UQ_CV_STATUS$SORT_ORDER
--------------------------------------------------------

  CREATE UNIQUE INDEX "UQ_CV_STATUS$SORT_ORDER" ON "CV_STATUS" ("SORT_ORDER") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CV_VIEW
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CV_VIEW" ON "CV_VIEW" ("CODE") 
  ;
--------------------------------------------------------
--  DDL for Index PK_FUTURE_EVENTS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_FUTURE_EVENTS" ON "FUTURE_EVENTS" ("GROUP_ID", "EVENT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index UQ_COMMENTS$ID$ORDER_IN
--------------------------------------------------------

  CREATE UNIQUE INDEX "UQ_COMMENTS$ID$ORDER_IN" ON "COMMENTS" ("ENZYME_ID", "ORDER_IN") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CV_NAME_CLASSES
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CV_NAME_CLASSES" ON "CV_NAME_CLASSES" ("CODE") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CV_STATUS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CV_STATUS" ON "CV_STATUS" ("CODE") 
  ;
--------------------------------------------------------
--  DDL for Index UQ_CV_DATABASES$SORT_ORDER
--------------------------------------------------------

  CREATE UNIQUE INDEX "UQ_CV_DATABASES$SORT_ORDER" ON "CV_DATABASES" ("SORT_ORDER") 
  ;
--------------------------------------------------------
--  DDL for Index PK_ENZYMES
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_ENZYMES" ON "ENZYMES" ("ENZYME_ID") 
  ;
--------------------------------------------------------
--  DDL for Index UQ_CV_STATUS$NAME
--------------------------------------------------------

  CREATE UNIQUE INDEX "UQ_CV_STATUS$NAME" ON "CV_STATUS" ("NAME") 
  ;
--------------------------------------------------------
--  DDL for Index REACTION_MERGINGS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REACTION_MERGINGS_PK" ON "REACTION_MERGINGS" ("FROM_ID", "TO_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_TIMEOUTS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_TIMEOUTS" ON "TIMEOUTS" ("TIMEOUT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index UQ_REACTIONS_MAP$ID$VIEW$ORDER
--------------------------------------------------------

  CREATE UNIQUE INDEX "UQ_REACTIONS_MAP$ID$VIEW$ORDER" ON "REACTIONS_MAP" ("ENZYME_ID", "WEB_VIEW", "ORDER_IN") 
  ;
--------------------------------------------------------
--  DDL for Index UQ_CV_WARNINGS$NAME
--------------------------------------------------------

  CREATE UNIQUE INDEX "UQ_CV_WARNINGS$NAME" ON "CV_WARNINGS" ("NAME") 
  ;
--------------------------------------------------------
--  DDL for Index PK_ID2EC
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_ID2EC" ON "ID2EC" ("ENZYME_ID") 
  ;
--------------------------------------------------------
--  DDL for Index UQ_HISTORY_EVENTS$BEF$AFT
--------------------------------------------------------

  CREATE UNIQUE INDEX "UQ_HISTORY_EVENTS$BEF$AFT" ON "HISTORY_EVENTS" ("BEFORE_ID", "AFTER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index INTENZ_REACTIONS_UK$FP
--------------------------------------------------------

  CREATE UNIQUE INDEX "INTENZ_REACTIONS_UK$FP" ON "INTENZ_REACTIONS" ("FINGERPRINT") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CV_WARNINGS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CV_WARNINGS" ON "CV_WARNINGS" ("CODE") 
  ;
--------------------------------------------------------
--  DDL for Index PK_PUBLICATIONS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_PUBLICATIONS" ON "PUBLICATIONS" ("PUB_ID") 
  ;
--------------------------------------------------------
--  DDL for Index UQ_CV_STATUS$DISPLAY_NAME
--------------------------------------------------------

  CREATE UNIQUE INDEX "UQ_CV_STATUS$DISPLAY_NAME" ON "CV_STATUS" ("DISPLAY_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index PK_NAMES
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_NAMES" ON "NAMES" ("ENZYME_ID", "NAME_CLASS", "NAME") 
  ;
--------------------------------------------------------
--  DDL for Index PK_REACTIONS_MAP
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_REACTIONS_MAP" ON "REACTIONS_MAP" ("REACTION_ID", "ENZYME_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_COFACTORS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_COFACTORS" ON "COFACTORS" ("ENZYME_ID", "COFACTOR_TEXT") 
  ;
--------------------------------------------------------
--  DDL for Index UQ_CITATIONS$ENZID$ORDER_IN
--------------------------------------------------------

  CREATE UNIQUE INDEX "UQ_CITATIONS$ENZID$ORDER_IN" ON "CITATIONS" ("ENZYME_ID", "ORDER_IN") 
  ;
--------------------------------------------------------
--  DDL for Index PK_HISTORY_EVENTS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_HISTORY_EVENTS" ON "HISTORY_EVENTS" ("GROUP_ID", "EVENT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index INTENZ_REACTIONS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "INTENZ_REACTIONS_PK" ON "INTENZ_REACTIONS" ("REACTION_ID") 
  ;
--------------------------------------------------------
--  DDL for Index UQ_ENZYMES$SOURCE$ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "UQ_ENZYMES$SOURCE$ID" ON "ENZYMES" ("SOURCE", "ENZYME_ID") 
  ;
--------------------------------------------------------
--  DDL for Index UQ_REACTIONS$ID$ORDER_IN
--------------------------------------------------------

  CREATE UNIQUE INDEX "UQ_REACTIONS$ID$ORDER_IN" ON "REACTIONS" ("ENZYME_ID", "ORDER_IN") 
  ;
--------------------------------------------------------
--  DDL for Index UQ_ROLES$UR
--------------------------------------------------------

  CREATE UNIQUE INDEX "UQ_ROLES$UR" ON "ROLES" ("USERNAME", "ROLE") 
  ;
--------------------------------------------------------
--  DDL for Index PK_COMPLEX_REACTIONS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_COMPLEX_REACTIONS" ON "COMPLEX_REACTIONS" ("PARENT_ID", "CHILD_ID") 
  ;
--------------------------------------------------------
--  DDL for Index UQ_CV_REACTION_DIRECTIONS$D
--------------------------------------------------------

  CREATE UNIQUE INDEX "UQ_CV_REACTION_DIRECTIONS$D" ON "CV_REACTION_DIRECTIONS" ("DIRECTION") 
  ;
--------------------------------------------------------
--  DDL for Index UQ_CV_DATABASES$DISPLAY_NAME
--------------------------------------------------------

  CREATE UNIQUE INDEX "UQ_CV_DATABASES$DISPLAY_NAME" ON "CV_DATABASES" ("DISPLAY_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index UQ_CV_NAME_CLASSES$SORT_ORDER
--------------------------------------------------------

  CREATE UNIQUE INDEX "UQ_CV_NAME_CLASSES$SORT_ORDER" ON "CV_NAME_CLASSES" ("SORT_ORDER") 
  ;
--------------------------------------------------------
--  DDL for Index PK_SUBCLASSES
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_SUBCLASSES" ON "SUBCLASSES" ("EC1", "EC2") 
  ;
--------------------------------------------------------
--  DDL for Index PK_SUBSUBCLASSES
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_SUBSUBCLASSES" ON "SUBSUBCLASSES" ("EC1", "EC2", "EC3") 
  ;
--------------------------------------------------------
--  DDL for Index intenz_text_idx$ec
--------------------------------------------------------

  CREATE INDEX "intenz_text_idx$ec" ON "INTENZ_TEXT" ("EC") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CITATIONS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CITATIONS" ON "CITATIONS" ("ENZYME_ID", "PUB_ID") 
  ;
--------------------------------------------------------
--  DDL for Index UQ_CV_NAME_CLASSES$NAME
--------------------------------------------------------

  CREATE UNIQUE INDEX "UQ_CV_NAME_CLASSES$NAME" ON "CV_NAME_CLASSES" ("NAME") 
  ;
--------------------------------------------------------
--  DDL for Index CV_REACTION_SIDES$S
--------------------------------------------------------

  CREATE UNIQUE INDEX "CV_REACTION_SIDES$S" ON "CV_REACTION_SIDES" ("SIDE") 
  ;
--------------------------------------------------------
--  DDL for Index UQ_FUTURE_EVENTS$BEF$AFT
--------------------------------------------------------

  CREATE UNIQUE INDEX "UQ_FUTURE_EVENTS$BEF$AFT" ON "FUTURE_EVENTS" ("BEFORE_ID", "AFTER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index UQ_COMPOUND_DATA$SA
--------------------------------------------------------

  CREATE UNIQUE INDEX "UQ_COMPOUND_DATA$SA" ON "COMPOUND_DATA" ("SOURCE", "ACCESSION") 
  ;
--------------------------------------------------------
--  DDL for Index UQ_CV_WARNINGS$DISPLAY_NAME
--------------------------------------------------------

  CREATE UNIQUE INDEX "UQ_CV_WARNINGS$DISPLAY_NAME" ON "CV_WARNINGS" ("DISPLAY_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index UQ_CV_WARNINGS$SORT_ORDER
--------------------------------------------------------

  CREATE UNIQUE INDEX "UQ_CV_WARNINGS$SORT_ORDER" ON "CV_WARNINGS" ("SORT_ORDER") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CA_RHEA_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CA_RHEA_ID" ON "CATALYTIC_ACTIVITY_RHEA_ID" ("REACTION_ID", "EQUATION") 
  ;
--------------------------------------------------------
--  DDL for Index UQ_NAMES$ENZID$CLASS$ORDER_IN
--------------------------------------------------------

  CREATE UNIQUE INDEX "UQ_NAMES$ENZID$CLASS$ORDER_IN" ON "NAMES" ("ENZYME_ID", "NAME_CLASS", "ORDER_IN") 
  ;
--------------------------------------------------------
--  DDL for Index PK_INTENZ_TEXT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_INTENZ_TEXT" ON "INTENZ_TEXT" ("ENZYME_ID", "TEXT_ORDER") 
  ;
--------------------------------------------------------
--  DDL for Index PK_REACTION_XREFS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_REACTION_XREFS" ON "REACTION_XREFS" ("DB_CODE", "DB_ACCESSION", "REACTION_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_REACTIONS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_REACTIONS" ON "REACTIONS" ("ENZYME_ID", "EQUATION") 
  ;
--------------------------------------------------------
--  DDL for Index intenz_text_idx$text
--------------------------------------------------------

  CREATE INDEX "intenz_text_idx$text" ON "INTENZ_TEXT" ("TEXT") 
   INDEXTYPE IS "CTXSYS"."CONTEXT"  PARAMETERS ('section group intenz_text_sg storage enzyme_storage lexer enzyme_lexer stoplist enzyme_stoplist memory 20M');
--------------------------------------------------------
--  DDL for Index PK_CLASSES
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CLASSES" ON "CLASSES" ("EC1") 
  ;
--------------------------------------------------------
--  DDL for Index UQ_CV_DATABASES$NAME
--------------------------------------------------------

  CREATE UNIQUE INDEX "UQ_CV_DATABASES$NAME" ON "CV_DATABASES" ("NAME") 
  ;
--------------------------------------------------------
--  DDL for Index COMPOUND_NAME_IDX
--------------------------------------------------------

  CREATE INDEX "COMPOUND_NAME_IDX" ON "COMPOUND_DATA" (LOWER("F_XML_DISPLAY_SP_CODE"("NAME"))) 
  ;
--------------------------------------------------------
--  DDL for Index PK_CV_DATABASES
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CV_DATABASES" ON "CV_DATABASES" ("CODE") 
  ;
--------------------------------------------------------
--  DDL for Index PK_COMMENTS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_COMMENTS" ON "COMMENTS" ("ENZYME_ID", "COMMENT_TEXT") 
  ;
--------------------------------------------------------
--  DDL for Index STATS
--------------------------------------------------------

  CREATE INDEX "STATS" ON "STATS" ("STATID", "TYPE", "C5", "C1", "C2", "C3", "C4", "VERSION") 
  ;
--------------------------------------------------------
--  DDL for Index PK_XREFS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_XREFS" ON "XREFS" ("ENZYME_ID", "DATABASE_AC", "DATABASE_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index UQ_CV_REACTION_QUALIFIERS$Q
--------------------------------------------------------

  CREATE UNIQUE INDEX "UQ_CV_REACTION_QUALIFIERS$Q" ON "CV_REACTION_QUALIFIERS" ("QUALIFIER") 
  ;
--------------------------------------------------------
--  DDL for Index DR$intenz_text_idx$text$X
--------------------------------------------------------

  CREATE INDEX "DR$intenz_text_idx$text$X" ON "DR$intenz_text_idx$text$I" ("TOKEN_TEXT", "TOKEN_TYPE", "TOKEN_FIRST", "TOKEN_LAST", "TOKEN_COUNT") 
  ;
--------------------------------------------------------
--  Constraints for Table REACTION_MERGINGS
--------------------------------------------------------

  ALTER TABLE "REACTION_MERGINGS" ADD CONSTRAINT "REACTINO_MERGINGS_CHKIDS" CHECK (from_id != to_id) ENABLE;
 
  ALTER TABLE "REACTION_MERGINGS" ADD CONSTRAINT "REACTION_MERGINGS_PK" PRIMARY KEY ("FROM_ID", "TO_ID") ENABLE;
 
  ALTER TABLE "REACTION_MERGINGS" MODIFY ("MERGING_COMMENT" NOT NULL ENABLE);
 
  ALTER TABLE "REACTION_MERGINGS" MODIFY ("MERGING_WHO" NOT NULL ENABLE);
 
  ALTER TABLE "REACTION_MERGINGS" MODIFY ("MERGING_WHEN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TIMEOUTS
--------------------------------------------------------

  ALTER TABLE "TIMEOUTS" ADD CONSTRAINT "PK_TIMEOUTS" PRIMARY KEY ("TIMEOUT_ID") ENABLE;
 
  ALTER TABLE "TIMEOUTS" MODIFY ("ENZYME_ID" NOT NULL ENABLE);
 
  ALTER TABLE "TIMEOUTS" MODIFY ("START_DATE" NOT NULL ENABLE);
 
  ALTER TABLE "TIMEOUTS" MODIFY ("DUE_DATE" NOT NULL ENABLE);
 
  ALTER TABLE "TIMEOUTS" MODIFY ("TIMEOUT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CV_WARNINGS
--------------------------------------------------------

  ALTER TABLE "CV_WARNINGS" ADD CONSTRAINT "CK_CV_WARNINGS$CODE" CHECK (code = UPPER(code)) ENABLE;
 
  ALTER TABLE "CV_WARNINGS" ADD CONSTRAINT "PK_CV_WARNINGS" PRIMARY KEY ("CODE") ENABLE;
 
  ALTER TABLE "CV_WARNINGS" MODIFY ("CODE" NOT NULL ENABLE);
 
  ALTER TABLE "CV_WARNINGS" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "CV_WARNINGS" MODIFY ("DISPLAY_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "CV_WARNINGS" MODIFY ("SORT_ORDER" NOT NULL ENABLE);
 
  ALTER TABLE "CV_WARNINGS" ADD CONSTRAINT "UQ_CV_WARNINGS$DISPLAY_NAME" UNIQUE ("DISPLAY_NAME") ENABLE;
 
  ALTER TABLE "CV_WARNINGS" ADD CONSTRAINT "UQ_CV_WARNINGS$NAME" UNIQUE ("NAME") ENABLE;
 
  ALTER TABLE "CV_WARNINGS" ADD CONSTRAINT "UQ_CV_WARNINGS$SORT_ORDER" UNIQUE ("SORT_ORDER") ENABLE;
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "USERS" MODIFY ("PASSWORD" NOT NULL ENABLE);
 
  ALTER TABLE "USERS" ADD PRIMARY KEY ("USERNAME") ENABLE;
--------------------------------------------------------
--  Constraints for Table CV_REACTION_DIRECTIONS
--------------------------------------------------------

  ALTER TABLE "CV_REACTION_DIRECTIONS" ADD CONSTRAINT "CV_REACTION_DIRECTIONS_PK" PRIMARY KEY ("CODE") ENABLE;
 
  ALTER TABLE "CV_REACTION_DIRECTIONS" MODIFY ("DIRECTION" NOT NULL ENABLE);
 
  ALTER TABLE "CV_REACTION_DIRECTIONS" ADD CONSTRAINT "UQ_CV_REACTION_DIRECTIONS$D" UNIQUE ("DIRECTION") ENABLE;
--------------------------------------------------------
--  Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "COMMENTS" ADD CONSTRAINT "CK_COMMENTS$TEXT_DOTS" CHECK (comment_text LIKE '%.') ENABLE;
 
  ALTER TABLE "COMMENTS" ADD CONSTRAINT "PK_COMMENTS" PRIMARY KEY ("ENZYME_ID", "COMMENT_TEXT") ENABLE;
 
  ALTER TABLE "COMMENTS" MODIFY ("ENZYME_ID" NOT NULL ENABLE);
 
  ALTER TABLE "COMMENTS" MODIFY ("COMMENT_TEXT" NOT NULL ENABLE);
 
  ALTER TABLE "COMMENTS" MODIFY ("ORDER_IN" NOT NULL ENABLE);
 
  ALTER TABLE "COMMENTS" MODIFY ("STATUS" NOT NULL ENABLE);
 
  ALTER TABLE "COMMENTS" MODIFY ("SOURCE" NOT NULL ENABLE);
 
  ALTER TABLE "COMMENTS" MODIFY ("WEB_VIEW" NOT NULL ENABLE);
 
  ALTER TABLE "COMMENTS" ADD CONSTRAINT "UQ_COMMENTS$ID$ORDER_IN" UNIQUE ("ENZYME_ID", "ORDER_IN") ENABLE;
--------------------------------------------------------
--  Constraints for Table NAMES
--------------------------------------------------------

  ALTER TABLE "NAMES" ADD CONSTRAINT "CK_NAMES$NAME_CRLF" CHECK (name = TRANSLATE(name, 'X'||chr(9)||chr(10)||chr(13), 'X')) ENABLE;
 
  ALTER TABLE "NAMES" ADD CONSTRAINT "CK_NAMES$NAME_TRIM" CHECK (TRIM(BOTH FROM name) = name) ENABLE;
 
  ALTER TABLE "NAMES" ADD CONSTRAINT "CK_NAMES$NAME_WS" CHECK (name NOT LIKE '%.'AND name NOT LIKE '%?'AND name NOT LIKE '%!') ENABLE;
 
  ALTER TABLE "NAMES" ADD CONSTRAINT "CK_NAMES$ORDER_IN$ZERO" CHECK (order_in > 0) ENABLE;
 
  ALTER TABLE "NAMES" ADD CONSTRAINT "PK_NAMES" PRIMARY KEY ("ENZYME_ID", "NAME_CLASS", "NAME") ENABLE;
 
  ALTER TABLE "NAMES" MODIFY ("ENZYME_ID" NOT NULL ENABLE);
 
  ALTER TABLE "NAMES" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "NAMES" MODIFY ("NAME_CLASS" NOT NULL ENABLE);
 
  ALTER TABLE "NAMES" MODIFY ("STATUS" NOT NULL ENABLE);
 
  ALTER TABLE "NAMES" MODIFY ("SOURCE" NOT NULL ENABLE);
 
  ALTER TABLE "NAMES" MODIFY ("ORDER_IN" NOT NULL ENABLE);
 
  ALTER TABLE "NAMES" MODIFY ("WEB_VIEW" NOT NULL ENABLE);
 
  ALTER TABLE "NAMES" ADD CONSTRAINT "UQ_NAMES$ENZID$CLASS$ORDER_IN" UNIQUE ("ENZYME_ID", "NAME_CLASS", "ORDER_IN") ENABLE;
--------------------------------------------------------
--  Constraints for Table CV_REACTION_SIDES
--------------------------------------------------------

  ALTER TABLE "CV_REACTION_SIDES" ADD CONSTRAINT "CV_REACTION_SIDES$S" UNIQUE ("SIDE") ENABLE;
 
  ALTER TABLE "CV_REACTION_SIDES" MODIFY ("SIDE" NOT NULL ENABLE);
 
  ALTER TABLE "CV_REACTION_SIDES" ADD PRIMARY KEY ("CODE") ENABLE;
--------------------------------------------------------
--  Constraints for Table REACTIONS
--------------------------------------------------------

  ALTER TABLE "REACTIONS" ADD CONSTRAINT "PK_REACTIONS" PRIMARY KEY ("ENZYME_ID", "EQUATION") ENABLE;
 
  ALTER TABLE "REACTIONS" MODIFY ("ENZYME_ID" NOT NULL ENABLE);
 
  ALTER TABLE "REACTIONS" MODIFY ("EQUATION" NOT NULL ENABLE);
 
  ALTER TABLE "REACTIONS" MODIFY ("ORDER_IN" NOT NULL ENABLE);
 
  ALTER TABLE "REACTIONS" MODIFY ("STATUS" NOT NULL ENABLE);
 
  ALTER TABLE "REACTIONS" MODIFY ("SOURCE" NOT NULL ENABLE);
 
  ALTER TABLE "REACTIONS" MODIFY ("WEB_VIEW" NOT NULL ENABLE);
 
  ALTER TABLE "REACTIONS" ADD CONSTRAINT "UQ_REACTIONS$ID$ORDER_IN" UNIQUE ("ENZYME_ID", "ORDER_IN") ENABLE;
--------------------------------------------------------
--  Constraints for Table INTENZ_REACTIONS
--------------------------------------------------------

  ALTER TABLE "INTENZ_REACTIONS" ADD CONSTRAINT "INTENZ_REACTIONS_PK" PRIMARY KEY ("REACTION_ID") ENABLE;
 
  ALTER TABLE "INTENZ_REACTIONS" ADD CONSTRAINT "INTENZ_REACTIONS_UK$FP" UNIQUE ("FINGERPRINT") ENABLE;
 
  ALTER TABLE "INTENZ_REACTIONS" MODIFY ("REACTION_ID" NOT NULL ENABLE);
 
  ALTER TABLE "INTENZ_REACTIONS" MODIFY ("EQUATION" NOT NULL ENABLE);
 
  ALTER TABLE "INTENZ_REACTIONS" MODIFY ("STATUS" NOT NULL ENABLE);
 
  ALTER TABLE "INTENZ_REACTIONS" MODIFY ("SOURCE" NOT NULL ENABLE);
 
  ALTER TABLE "INTENZ_REACTIONS" MODIFY ("DIRECTION" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CATALYTIC_ACTIVITY_RHEA_ID
--------------------------------------------------------

  ALTER TABLE "CATALYTIC_ACTIVITY_RHEA_ID" ADD CONSTRAINT "PK_CA_RHEA_ID" PRIMARY KEY ("REACTION_ID", "EQUATION") ENABLE;
 
  ALTER TABLE "CATALYTIC_ACTIVITY_RHEA_ID" MODIFY ("EQUATION" NOT NULL ENABLE);
 
  ALTER TABLE "CATALYTIC_ACTIVITY_RHEA_ID" MODIFY ("REACTION_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LINKS
--------------------------------------------------------

  ALTER TABLE "LINKS" ADD CONSTRAINT "PK_LINKS" PRIMARY KEY ("ENZYME_ID", "URL") ENABLE;
 
  ALTER TABLE "LINKS" MODIFY ("ENZYME_ID" NOT NULL ENABLE);
 
  ALTER TABLE "LINKS" MODIFY ("URL" NOT NULL ENABLE);
 
  ALTER TABLE "LINKS" MODIFY ("DISPLAY_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "LINKS" MODIFY ("STATUS" NOT NULL ENABLE);
 
  ALTER TABLE "LINKS" MODIFY ("SOURCE" NOT NULL ENABLE);
 
  ALTER TABLE "LINKS" MODIFY ("WEB_VIEW" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CV_LOCATION
--------------------------------------------------------

  ALTER TABLE "CV_LOCATION" ADD PRIMARY KEY ("CODE") ENABLE;
--------------------------------------------------------
--  Constraints for Table CV_VIEW
--------------------------------------------------------

  ALTER TABLE "CV_VIEW" ADD CONSTRAINT "CK_CV_VIEW$CODE" CHECK (code = UPPER(code)) ENABLE;
 
  ALTER TABLE "CV_VIEW" ADD CONSTRAINT "PK_CV_VIEW" PRIMARY KEY ("CODE") ENABLE;
 
  ALTER TABLE "CV_VIEW" MODIFY ("CODE" NOT NULL ENABLE);
 
  ALTER TABLE "CV_VIEW" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CV_REACTION_QUALIFIERS
--------------------------------------------------------

  ALTER TABLE "CV_REACTION_QUALIFIERS" MODIFY ("QUALIFIER" NOT NULL ENABLE);
 
  ALTER TABLE "CV_REACTION_QUALIFIERS" ADD PRIMARY KEY ("CODE") ENABLE;
 
  ALTER TABLE "CV_REACTION_QUALIFIERS" ADD CONSTRAINT "UQ_CV_REACTION_QUALIFIERS$Q" UNIQUE ("QUALIFIER") ENABLE;
--------------------------------------------------------
--  Constraints for Table CITATIONS
--------------------------------------------------------

  ALTER TABLE "CITATIONS" ADD CONSTRAINT "CK_CITATIONS$ORDER_IN$ZERO" CHECK (order_in > 0) ENABLE;
 
  ALTER TABLE "CITATIONS" ADD CONSTRAINT "PK_CITATIONS" PRIMARY KEY ("ENZYME_ID", "PUB_ID") ENABLE;
 
  ALTER TABLE "CITATIONS" MODIFY ("ENZYME_ID" NOT NULL ENABLE);
 
  ALTER TABLE "CITATIONS" MODIFY ("PUB_ID" NOT NULL ENABLE);
 
  ALTER TABLE "CITATIONS" MODIFY ("ORDER_IN" NOT NULL ENABLE);
 
  ALTER TABLE "CITATIONS" MODIFY ("STATUS" NOT NULL ENABLE);
 
  ALTER TABLE "CITATIONS" MODIFY ("SOURCE" NOT NULL ENABLE);
 
  ALTER TABLE "CITATIONS" ADD CONSTRAINT "UQ_CITATIONS$ENZID$ORDER_IN" UNIQUE ("ENZYME_ID", "ORDER_IN") ENABLE;
--------------------------------------------------------
--  Constraints for Table DR$intenz_text_idx$text$I
--------------------------------------------------------

  ALTER TABLE "DR$intenz_text_idx$text$I" MODIFY ("TOKEN_TEXT" NOT NULL ENABLE);
 
  ALTER TABLE "DR$intenz_text_idx$text$I" MODIFY ("TOKEN_TYPE" NOT NULL ENABLE);
 
  ALTER TABLE "DR$intenz_text_idx$text$I" MODIFY ("TOKEN_FIRST" NOT NULL ENABLE);
 
  ALTER TABLE "DR$intenz_text_idx$text$I" MODIFY ("TOKEN_LAST" NOT NULL ENABLE);
 
  ALTER TABLE "DR$intenz_text_idx$text$I" MODIFY ("TOKEN_COUNT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ROLES
--------------------------------------------------------

  ALTER TABLE "ROLES" MODIFY ("ROLE" NOT NULL ENABLE);
 
  ALTER TABLE "ROLES" ADD CONSTRAINT "UQ_ROLES$UR" UNIQUE ("USERNAME", "ROLE") ENABLE;
--------------------------------------------------------
--  Constraints for Table DR$intenz_text_idx$text$K
--------------------------------------------------------

  ALTER TABLE "DR$intenz_text_idx$text$K" ADD PRIMARY KEY ("TEXTKEY") ENABLE;
--------------------------------------------------------
--  Constraints for Table REACTION_PARTICIPANTS
--------------------------------------------------------

  ALTER TABLE "REACTION_PARTICIPANTS" ADD CONSTRAINT "CK_REACTION_PARTICIPANTS$COEF" CHECK (coefficient > 0) ENABLE;
 
  ALTER TABLE "REACTION_PARTICIPANTS" ADD CONSTRAINT "PK_REACTION_PARTICIPANTS" PRIMARY KEY ("REACTION_ID", "COMPOUND_ID", "SIDE") DISABLE;
 
  ALTER TABLE "REACTION_PARTICIPANTS" MODIFY ("REACTION_ID" NOT NULL ENABLE);
 
  ALTER TABLE "REACTION_PARTICIPANTS" MODIFY ("COMPOUND_ID" NOT NULL ENABLE);
 
  ALTER TABLE "REACTION_PARTICIPANTS" MODIFY ("SIDE" NOT NULL ENABLE);
 
  ALTER TABLE "REACTION_PARTICIPANTS" MODIFY ("COEFFICIENT" NOT NULL ENABLE);
 
  ALTER TABLE "REACTION_PARTICIPANTS" MODIFY ("COEFF_TYPE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REACTIONS_MAP
--------------------------------------------------------

  ALTER TABLE "REACTIONS_MAP" ADD CONSTRAINT "CK_REACTIONS_MAP$ORDER" CHECK (order_in > 0) ENABLE;
 
  ALTER TABLE "REACTIONS_MAP" ADD CONSTRAINT "PK_REACTIONS_MAP" PRIMARY KEY ("REACTION_ID", "ENZYME_ID") ENABLE;
 
  ALTER TABLE "REACTIONS_MAP" MODIFY ("WEB_VIEW" NOT NULL ENABLE);
 
  ALTER TABLE "REACTIONS_MAP" MODIFY ("ORDER_IN" NOT NULL ENABLE);
 
  ALTER TABLE "REACTIONS_MAP" MODIFY ("IUBMB" NOT NULL ENABLE);
 
  ALTER TABLE "REACTIONS_MAP" MODIFY ("REACTION_ID" NOT NULL ENABLE);
 
  ALTER TABLE "REACTIONS_MAP" MODIFY ("ENZYME_ID" NOT NULL ENABLE);
 
  ALTER TABLE "REACTIONS_MAP" ADD CONSTRAINT "UQ_REACTIONS_MAP$ID$VIEW$ORDER" UNIQUE ("ENZYME_ID", "WEB_VIEW", "ORDER_IN") DISABLE;
--------------------------------------------------------
--  Constraints for Table PUBLICATIONS
--------------------------------------------------------

  ALTER TABLE "PUBLICATIONS" ADD CONSTRAINT "CK_PUBLICATIONS$PUB_TYPE" CHECK (pub_type IN ('J', 'B', 'P')) ENABLE;
 
  ALTER TABLE "PUBLICATIONS" ADD CONSTRAINT "PK_PUBLICATIONS" PRIMARY KEY ("PUB_ID") ENABLE;
 
  ALTER TABLE "PUBLICATIONS" MODIFY ("PUB_ID" NOT NULL ENABLE);
 
  ALTER TABLE "PUBLICATIONS" MODIFY ("PUB_TYPE" NOT NULL ENABLE);
 
  ALTER TABLE "PUBLICATIONS" MODIFY ("PUB_YEAR" NOT NULL ENABLE);
 
  ALTER TABLE "PUBLICATIONS" MODIFY ("JOURNAL_BOOK" NOT NULL ENABLE);
 
  ALTER TABLE "PUBLICATIONS" MODIFY ("WEB_VIEW" NOT NULL ENABLE);
 
  ALTER TABLE "PUBLICATIONS" MODIFY ("SOURCE" NOT NULL ENABLE);
 
  ALTER TABLE "PUBLICATIONS" ADD CONSTRAINT "UQ_PUBLICATIONS$MEDLINE_ID" UNIQUE ("MEDLINE_ID") DISABLE;
 
  ALTER TABLE "PUBLICATIONS" ADD CONSTRAINT "UQ_PUBLICATIONS$PUBMED_ID" UNIQUE ("PUBMED_ID") DISABLE;
--------------------------------------------------------
--  Constraints for Table CV_DATABASES
--------------------------------------------------------

  ALTER TABLE "CV_DATABASES" ADD CONSTRAINT "CK_CV_DATABASES$CODE" CHECK (code = UPPER(code)) ENABLE;
 
  ALTER TABLE "CV_DATABASES" ADD CONSTRAINT "PK_CV_DATABASES" PRIMARY KEY ("CODE") ENABLE;
 
  ALTER TABLE "CV_DATABASES" MODIFY ("CODE" NOT NULL ENABLE);
 
  ALTER TABLE "CV_DATABASES" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "CV_DATABASES" MODIFY ("DISPLAY_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "CV_DATABASES" MODIFY ("SORT_ORDER" NOT NULL ENABLE);
 
  ALTER TABLE "CV_DATABASES" ADD CONSTRAINT "UQ_CV_DATABASES$DISPLAY_NAME" UNIQUE ("DISPLAY_NAME") ENABLE;
 
  ALTER TABLE "CV_DATABASES" ADD CONSTRAINT "UQ_CV_DATABASES$NAME" UNIQUE ("NAME") ENABLE;
 
  ALTER TABLE "CV_DATABASES" ADD CONSTRAINT "UQ_CV_DATABASES$SORT_ORDER" UNIQUE ("SORT_ORDER") ENABLE;
--------------------------------------------------------
--  Constraints for Table SUBCLASSES
--------------------------------------------------------

  ALTER TABLE "SUBCLASSES" ADD CONSTRAINT "CK_SUBCLASSES$ACTIVE" CHECK (active IN ('Y','N')) ENABLE;
 
  ALTER TABLE "SUBCLASSES" ADD CONSTRAINT "CK_SUBCLASSES$EC2_ZERO" CHECK (ec2 > 0) ENABLE;
 
  ALTER TABLE "SUBCLASSES" ADD CONSTRAINT "CK_SUBCLASSES$NAME_WS" CHECK (name = TRIM(TRIM(chr(9)  FROM TRIM(chr(10) FROM TRIM(chr(13) FROM name))))) ENABLE;
 
  ALTER TABLE "SUBCLASSES" ADD CONSTRAINT "PK_SUBCLASSES" PRIMARY KEY ("EC1", "EC2") ENABLE;
 
  ALTER TABLE "SUBCLASSES" MODIFY ("EC1" NOT NULL ENABLE);
 
  ALTER TABLE "SUBCLASSES" MODIFY ("EC2" NOT NULL ENABLE);
 
  ALTER TABLE "SUBCLASSES" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "SUBCLASSES" MODIFY ("ACTIVE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COFACTORS
--------------------------------------------------------

  ALTER TABLE "COFACTORS" ADD CONSTRAINT "PK_COFACTORS" PRIMARY KEY ("ENZYME_ID", "COFACTOR_TEXT") ENABLE;
 
  ALTER TABLE "COFACTORS" MODIFY ("ENZYME_ID" NOT NULL ENABLE);
 
  ALTER TABLE "COFACTORS" MODIFY ("SOURCE" NOT NULL ENABLE);
 
  ALTER TABLE "COFACTORS" MODIFY ("STATUS" NOT NULL ENABLE);
 
  ALTER TABLE "COFACTORS" MODIFY ("ORDER_IN" NOT NULL ENABLE);
 
  ALTER TABLE "COFACTORS" MODIFY ("COFACTOR_TEXT" NOT NULL ENABLE);
 
  ALTER TABLE "COFACTORS" MODIFY ("WEB_VIEW" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CV_COEFF_TYPES
--------------------------------------------------------

  ALTER TABLE "CV_COEFF_TYPES" ADD PRIMARY KEY ("CODE") ENABLE;
--------------------------------------------------------
--  Constraints for Table FUTURE_EVENTS
--------------------------------------------------------

  ALTER TABLE "FUTURE_EVENTS" ADD CONSTRAINT "FUTURE_EVENTS$CYCLE0" CHECK (before_id != after_id) ENABLE;
 
  ALTER TABLE "FUTURE_EVENTS" ADD CONSTRAINT "PK_FUTURE_EVENTS" PRIMARY KEY ("GROUP_ID", "EVENT_ID") ENABLE;
 
  ALTER TABLE "FUTURE_EVENTS" MODIFY ("GROUP_ID" NOT NULL ENABLE);
 
  ALTER TABLE "FUTURE_EVENTS" MODIFY ("EVENT_ID" NOT NULL ENABLE);
 
  ALTER TABLE "FUTURE_EVENTS" MODIFY ("EVENT_CLASS" NOT NULL ENABLE);
 
  ALTER TABLE "FUTURE_EVENTS" MODIFY ("STATUS" NOT NULL ENABLE);
 
  ALTER TABLE "FUTURE_EVENTS" MODIFY ("TIMEOUT_ID" NOT NULL ENABLE);
 
  ALTER TABLE "FUTURE_EVENTS" ADD CONSTRAINT "UQ_FUTURE_EVENTS$BEF$AFT" UNIQUE ("BEFORE_ID", "AFTER_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table REACTION_CITATIONS
--------------------------------------------------------

  ALTER TABLE "REACTION_CITATIONS" ADD CONSTRAINT "CK_REACTION_CITATIONS$ORD" CHECK (order_in > 0) DISABLE;
 
  ALTER TABLE "REACTION_CITATIONS" ADD CONSTRAINT "PK_REACTION_CITATIONS" PRIMARY KEY ("REACTION_ID", "PUB_ID", "SOURCE") ENABLE;
 
  ALTER TABLE "REACTION_CITATIONS" MODIFY ("REACTION_ID" NOT NULL ENABLE);
 
  ALTER TABLE "REACTION_CITATIONS" MODIFY ("PUB_ID" NOT NULL ENABLE);
 
  ALTER TABLE "REACTION_CITATIONS" MODIFY ("SOURCE" NOT NULL ENABLE);
 
  ALTER TABLE "REACTION_CITATIONS" ADD CONSTRAINT "UQ_REACTION_CITATIONS$RO" UNIQUE ("REACTION_ID", "ORDER_IN") DISABLE;
--------------------------------------------------------
--  Constraints for Table CV_NAME_CLASSES
--------------------------------------------------------

  ALTER TABLE "CV_NAME_CLASSES" ADD CONSTRAINT "CK_CV_NAME_CLASSES$CODE" CHECK (code = UPPER(code)) ENABLE;
 
  ALTER TABLE "CV_NAME_CLASSES" ADD CONSTRAINT "PK_CV_NAME_CLASSES" PRIMARY KEY ("CODE") ENABLE;
 
  ALTER TABLE "CV_NAME_CLASSES" MODIFY ("CODE" NOT NULL ENABLE);
 
  ALTER TABLE "CV_NAME_CLASSES" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "CV_NAME_CLASSES" MODIFY ("DISPLAY_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "CV_NAME_CLASSES" MODIFY ("SORT_ORDER" NOT NULL ENABLE);
 
  ALTER TABLE "CV_NAME_CLASSES" ADD CONSTRAINT "UQ_CV_NAME_CLASSES$NAME" UNIQUE ("NAME") ENABLE;
 
  ALTER TABLE "CV_NAME_CLASSES" ADD CONSTRAINT "UQ_CV_NAME_CLASSES$SORT_ORDER" UNIQUE ("SORT_ORDER") ENABLE;
--------------------------------------------------------
--  Constraints for Table ENZYMES
--------------------------------------------------------

  ALTER TABLE "ENZYMES" ADD CONSTRAINT "CK_ENZYMES$ACTIVE" CHECK (active IN ('Y','N')) ENABLE;
 
  ALTER TABLE "ENZYMES" ADD CONSTRAINT "CK_ENZYMES$EC4_ZERO" CHECK (ec4 > 0) ENABLE;
 
  ALTER TABLE "ENZYMES" ADD CONSTRAINT "CK_ENZYMES$EC_QUAD_NULL" CHECK ((ec1 IS NOT NULL AND ec2 IS NOT NULL and ec3 IS NOT NULL and ec4 IS NOT NULL)
OR (ec1 IS NOT NULL AND ec2 IS NOT NULL and ec3 IS NOT NULL and ec4 IS NULL) OR
(ec1 IS NOT NULL AND ec2 IS NOT NULL and ec3 IS NULL and ec4 IS NULL) OR
(ec1 IS NOT NULL AND ec2 IS NULL and ec3 IS NULL and ec4 IS NULL) OR
(ec1 IS NULL AND ec2 IS NULL and ec3 IS NULL and ec4 IS NULL)) ENABLE;
 
  ALTER TABLE "ENZYMES" ADD CONSTRAINT "PK_ENZYMES" PRIMARY KEY ("ENZYME_ID") ENABLE;
 
  ALTER TABLE "ENZYMES" MODIFY ("ENZYME_ID" NOT NULL ENABLE);
 
  ALTER TABLE "ENZYMES" MODIFY ("STATUS" NOT NULL ENABLE);
 
  ALTER TABLE "ENZYMES" MODIFY ("SOURCE" NOT NULL ENABLE);
 
  ALTER TABLE "ENZYMES" MODIFY ("ACTIVE" NOT NULL ENABLE);
 
  ALTER TABLE "ENZYMES" ADD CONSTRAINT "UQ_ENZYMES$SOURCE$ID" UNIQUE ("SOURCE", "ENZYME_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table CLASSES
--------------------------------------------------------

  ALTER TABLE "CLASSES" ADD CONSTRAINT "CK_CLASSES$ACTIVE" CHECK (active IN ('Y','N')) ENABLE;
 
  ALTER TABLE "CLASSES" ADD CONSTRAINT "CK_CLASSES$EC1_ZERO" CHECK (ec1 > 0) ENABLE;
 
  ALTER TABLE "CLASSES" ADD CONSTRAINT "CK_CLASSES$NAME_WS" CHECK (name = TRIM(TRIM(chr(9)  FROM TRIM(chr(10) FROM TRIM(chr(13) FROM name))))) ENABLE;
 
  ALTER TABLE "CLASSES" ADD CONSTRAINT "PK_CLASSES" PRIMARY KEY ("EC1") ENABLE;
 
  ALTER TABLE "CLASSES" MODIFY ("EC1" NOT NULL ENABLE);
 
  ALTER TABLE "CLASSES" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "CLASSES" MODIFY ("ACTIVE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CV_COMP_PUB_AVAIL
--------------------------------------------------------

  ALTER TABLE "CV_COMP_PUB_AVAIL" ADD PRIMARY KEY ("CODE") ENABLE;
--------------------------------------------------------
--  Constraints for Table REACTION_XREFS
--------------------------------------------------------

  ALTER TABLE "REACTION_XREFS" ADD CONSTRAINT "PK_REACTION_XREFS" PRIMARY KEY ("DB_CODE", "DB_ACCESSION", "REACTION_ID") ENABLE;
 
  ALTER TABLE "REACTION_XREFS" MODIFY ("REACTION_ID" NOT NULL ENABLE);
 
  ALTER TABLE "REACTION_XREFS" MODIFY ("DB_CODE" NOT NULL ENABLE);
 
  ALTER TABLE "REACTION_XREFS" MODIFY ("DB_ACCESSION" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMPOUND_DATA
--------------------------------------------------------

  ALTER TABLE "COMPOUND_DATA" ADD CONSTRAINT "CK_COMPOUND_DATA$PUB" CHECK (
			(accession IS NULL AND child_accession IS NULL AND published IS NULL)
			OR
			(accession IS NOT NULL AND child_accession IS NULL AND published IN ('N','P'))
			OR
			(accession IS NOT NULL AND child_accession IS NOT NULL AND published IN ('N','P','C'))
		) ENABLE;
 
  ALTER TABLE "COMPOUND_DATA" ADD CONSTRAINT "CK_COMPOUND_DATA$SRC" CHECK (
			(source IS NULL AND accession IS NULL)
			OR
			(source IS NOT NULL AND accession IS NOT NULL)
		) ENABLE;
 
  ALTER TABLE "COMPOUND_DATA" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "COMPOUND_DATA" ADD PRIMARY KEY ("COMPOUND_ID") ENABLE;
 
  ALTER TABLE "COMPOUND_DATA" ADD UNIQUE ("NAME") ENABLE;
 
  ALTER TABLE "COMPOUND_DATA" ADD CONSTRAINT "UQ_COMPOUND_DATA$SA" UNIQUE ("SOURCE", "ACCESSION") ENABLE;
--------------------------------------------------------
--  Constraints for Table CV_OPERATORS
--------------------------------------------------------

  ALTER TABLE "CV_OPERATORS" ADD PRIMARY KEY ("CODE") ENABLE;
--------------------------------------------------------
--  Constraints for Table XREFS
--------------------------------------------------------

  ALTER TABLE "XREFS" ADD CONSTRAINT "PK_XREFS" PRIMARY KEY ("ENZYME_ID", "DATABASE_AC", "DATABASE_CODE") ENABLE;
 
  ALTER TABLE "XREFS" MODIFY ("ENZYME_ID" NOT NULL ENABLE);
 
  ALTER TABLE "XREFS" MODIFY ("DATABASE_CODE" NOT NULL ENABLE);
 
  ALTER TABLE "XREFS" MODIFY ("DATABASE_AC" NOT NULL ENABLE);
 
  ALTER TABLE "XREFS" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "XREFS" MODIFY ("STATUS" NOT NULL ENABLE);
 
  ALTER TABLE "XREFS" MODIFY ("SOURCE" NOT NULL ENABLE);
 
  ALTER TABLE "XREFS" MODIFY ("WEB_VIEW" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CV_STATUS
--------------------------------------------------------

  ALTER TABLE "CV_STATUS" ADD CONSTRAINT "CK_CV_STATUS$CODE" CHECK (code = UPPER(code)) ENABLE;
 
  ALTER TABLE "CV_STATUS" ADD CONSTRAINT "PK_CV_STATUS" PRIMARY KEY ("CODE") ENABLE;
 
  ALTER TABLE "CV_STATUS" MODIFY ("CODE" NOT NULL ENABLE);
 
  ALTER TABLE "CV_STATUS" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "CV_STATUS" MODIFY ("DISPLAY_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "CV_STATUS" MODIFY ("SORT_ORDER" NOT NULL ENABLE);
 
  ALTER TABLE "CV_STATUS" ADD CONSTRAINT "UQ_CV_STATUS$DISPLAY_NAME" UNIQUE ("DISPLAY_NAME") ENABLE;
 
  ALTER TABLE "CV_STATUS" ADD CONSTRAINT "UQ_CV_STATUS$NAME" UNIQUE ("NAME") ENABLE;
 
  ALTER TABLE "CV_STATUS" ADD CONSTRAINT "UQ_CV_STATUS$SORT_ORDER" UNIQUE ("SORT_ORDER") ENABLE;
--------------------------------------------------------
--  Constraints for Table HISTORY_EVENTS
--------------------------------------------------------

  ALTER TABLE "HISTORY_EVENTS" ADD CONSTRAINT "CK_HISTORY_EVENTS$CYCLE0" CHECK (before_id != after_id) ENABLE;
 
  ALTER TABLE "HISTORY_EVENTS" ADD CONSTRAINT "PK_HISTORY_EVENTS" PRIMARY KEY ("GROUP_ID", "EVENT_ID") ENABLE;
 
  ALTER TABLE "HISTORY_EVENTS" MODIFY ("GROUP_ID" NOT NULL ENABLE);
 
  ALTER TABLE "HISTORY_EVENTS" MODIFY ("EVENT_ID" NOT NULL ENABLE);
 
  ALTER TABLE "HISTORY_EVENTS" MODIFY ("EVENT_CLASS" NOT NULL ENABLE);
 
  ALTER TABLE "HISTORY_EVENTS" ADD CONSTRAINT "UQ_HISTORY_EVENTS$BEF$AFT" UNIQUE ("BEFORE_ID", "AFTER_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table COMPLEX_REACTIONS
--------------------------------------------------------

  ALTER TABLE "COMPLEX_REACTIONS" ADD CONSTRAINT "CK_COMPLEX_REACTIONS$COEF" CHECK (coefficient > 0) ENABLE;
 
  ALTER TABLE "COMPLEX_REACTIONS" ADD CONSTRAINT "CK_COMPLEX_REACTIONS$ORD" CHECK (order_in >= 0) ENABLE;
 
  ALTER TABLE "COMPLEX_REACTIONS" ADD CONSTRAINT "CK_COMPLEX_REACTIONS$SAMEID" CHECK (parent_id != child_id) ENABLE;
 
  ALTER TABLE "COMPLEX_REACTIONS" ADD CONSTRAINT "PK_COMPLEX_REACTIONS" PRIMARY KEY ("PARENT_ID", "CHILD_ID") ENABLE;
 
  ALTER TABLE "COMPLEX_REACTIONS" MODIFY ("PARENT_ID" NOT NULL ENABLE);
 
  ALTER TABLE "COMPLEX_REACTIONS" MODIFY ("CHILD_ID" NOT NULL ENABLE);
 
  ALTER TABLE "COMPLEX_REACTIONS" MODIFY ("ORDER_IN" NOT NULL ENABLE);
 
  ALTER TABLE "COMPLEX_REACTIONS" MODIFY ("COEFFICIENT" NOT NULL ENABLE);
 
  ALTER TABLE "COMPLEX_REACTIONS" ADD CONSTRAINT "UQ_COMPLEX_REACTIONS$PO" UNIQUE ("PARENT_ID", "ORDER_IN") DISABLE;
--------------------------------------------------------
--  Constraints for Table DR$intenz_text_idx$text$N
--------------------------------------------------------

  ALTER TABLE "DR$intenz_text_idx$text$N" MODIFY ("NLT_MARK" NOT NULL ENABLE);
 
  ALTER TABLE "DR$intenz_text_idx$text$N" ADD PRIMARY KEY ("NLT_DOCID") ENABLE;
--------------------------------------------------------
--  Constraints for Table ID2EC
--------------------------------------------------------

  ALTER TABLE "ID2EC" ADD CONSTRAINT "PK_ID2EC" PRIMARY KEY ("ENZYME_ID") ENABLE;
 
  ALTER TABLE "ID2EC" MODIFY ("ENZYME_ID" NOT NULL ENABLE);
 
  ALTER TABLE "ID2EC" MODIFY ("EC" NOT NULL ENABLE);
 
  ALTER TABLE "ID2EC" MODIFY ("STATUS" NOT NULL ENABLE);
 
  ALTER TABLE "ID2EC" MODIFY ("SOURCE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table INTENZ_TEXT
--------------------------------------------------------

  ALTER TABLE "INTENZ_TEXT" ADD CONSTRAINT "PK_INTENZ_TEXT" PRIMARY KEY ("ENZYME_ID", "TEXT_ORDER") ENABLE;
 
  ALTER TABLE "INTENZ_TEXT" MODIFY ("ENZYME_ID" NOT NULL ENABLE);
 
  ALTER TABLE "INTENZ_TEXT" MODIFY ("EC" NOT NULL ENABLE);
 
  ALTER TABLE "INTENZ_TEXT" MODIFY ("STATUS" NOT NULL ENABLE);
 
  ALTER TABLE "INTENZ_TEXT" MODIFY ("SOURCE" NOT NULL ENABLE);
 
  ALTER TABLE "INTENZ_TEXT" MODIFY ("TEXT_ORDER" NOT NULL ENABLE);
 
  ALTER TABLE "INTENZ_TEXT" MODIFY ("TEXT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMPOUND_DATA_UPDATES
--------------------------------------------------------

  ALTER TABLE "COMPOUND_DATA_UPDATES" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "COMPOUND_DATA_UPDATES" ADD PRIMARY KEY ("COMPOUND_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table SUBSUBCLASSES
--------------------------------------------------------

  ALTER TABLE "SUBSUBCLASSES" ADD CONSTRAINT "CK_SUBSUBCLASSES$ACTIVE" CHECK (active IN ('Y','N')) ENABLE;
 
  ALTER TABLE "SUBSUBCLASSES" ADD CONSTRAINT "CK_SUBSUBCLASSES$EC3_ZERO" CHECK (ec3 > 0) ENABLE;
 
  ALTER TABLE "SUBSUBCLASSES" ADD CONSTRAINT "CK_SUBSUBCLASSES$NAME_WS" CHECK (name = TRIM(TRIM(chr(9)  FROM TRIM(chr(10) FROM TRIM(chr(13) FROM name))))) ENABLE;
 
  ALTER TABLE "SUBSUBCLASSES" ADD CONSTRAINT "PK_SUBSUBCLASSES" PRIMARY KEY ("EC1", "EC2", "EC3") ENABLE;
 
  ALTER TABLE "SUBSUBCLASSES" MODIFY ("EC1" NOT NULL ENABLE);
 
  ALTER TABLE "SUBSUBCLASSES" MODIFY ("EC2" NOT NULL ENABLE);
 
  ALTER TABLE "SUBSUBCLASSES" MODIFY ("EC3" NOT NULL ENABLE);
 
  ALTER TABLE "SUBSUBCLASSES" MODIFY ("ACTIVE" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table CATALYTIC_ACTIVITY_RHEA_ID
--------------------------------------------------------

  ALTER TABLE "CATALYTIC_ACTIVITY_RHEA_ID" ADD CONSTRAINT "FK_CA_RHEA_ID$REACTION_ID" FOREIGN KEY ("REACTION_ID")
	  REFERENCES "INTENZ_REACTIONS" ("REACTION_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CITATIONS
--------------------------------------------------------

  ALTER TABLE "CITATIONS" ADD CONSTRAINT "FK_CITATIONS$STATUS" FOREIGN KEY ("STATUS")
	  REFERENCES "CV_STATUS" ("CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COFACTORS
--------------------------------------------------------

  ALTER TABLE "COFACTORS" ADD CONSTRAINT "FK_COFACTORS$COMPOUND_ID" FOREIGN KEY ("COMPOUND_ID")
	  REFERENCES "COMPOUND_DATA" ("COMPOUND_ID") ON DELETE SET NULL ENABLE;
 
  ALTER TABLE "COFACTORS" ADD CONSTRAINT "FK_COFACTORS$ENZYME_ID" FOREIGN KEY ("ENZYME_ID")
	  REFERENCES "ENZYMES" ("ENZYME_ID") ON DELETE CASCADE ENABLE;
 
  ALTER TABLE "COFACTORS" ADD CONSTRAINT "FK_COFACTORS$OPERATOR" FOREIGN KEY ("OPERATOR")
	  REFERENCES "CV_OPERATORS" ("CODE") ENABLE;
 
  ALTER TABLE "COFACTORS" ADD CONSTRAINT "FK_COFACTORS$STATUS" FOREIGN KEY ("STATUS")
	  REFERENCES "CV_STATUS" ("CODE") ENABLE;
 
  ALTER TABLE "COFACTORS" ADD CONSTRAINT "FK_COFACTORS$WEB_VIEW" FOREIGN KEY ("WEB_VIEW")
	  REFERENCES "CV_VIEW" ("CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "COMMENTS" ADD CONSTRAINT "FK_COMMENTS$ENZYME_ID" FOREIGN KEY ("ENZYME_ID")
	  REFERENCES "ENZYMES" ("ENZYME_ID") ON DELETE CASCADE ENABLE;
 
  ALTER TABLE "COMMENTS" ADD CONSTRAINT "FK_COMMENTS$STATUS" FOREIGN KEY ("STATUS")
	  REFERENCES "CV_STATUS" ("CODE") ENABLE;
 
  ALTER TABLE "COMMENTS" ADD CONSTRAINT "FK_COMMENTS$WEB_VIEW" FOREIGN KEY ("WEB_VIEW")
	  REFERENCES "CV_VIEW" ("CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMPLEX_REACTIONS
--------------------------------------------------------

  ALTER TABLE "COMPLEX_REACTIONS" ADD CONSTRAINT "COMPLEX_REACTIONS_FK$CHILD" FOREIGN KEY ("CHILD_ID")
	  REFERENCES "INTENZ_REACTIONS" ("REACTION_ID") ENABLE;
 
  ALTER TABLE "COMPLEX_REACTIONS" ADD CONSTRAINT "COMPLEX_REACTIONS_FK$PARENT" FOREIGN KEY ("PARENT_ID")
	  REFERENCES "INTENZ_REACTIONS" ("REACTION_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMPOUND_DATA
--------------------------------------------------------

  ALTER TABLE "COMPOUND_DATA" ADD CONSTRAINT "FK_COMPOUND_DATA$PUB" FOREIGN KEY ("PUBLISHED")
	  REFERENCES "CV_COMP_PUB_AVAIL" ("CODE") ENABLE;
 
  ALTER TABLE "COMPOUND_DATA" ADD CONSTRAINT "FK_COMPOUND_DATA$SOURCE" FOREIGN KEY ("SOURCE")
	  REFERENCES "CV_DATABASES" ("CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMPOUND_DATA_UPDATES
--------------------------------------------------------

  ALTER TABLE "COMPOUND_DATA_UPDATES" ADD CONSTRAINT "FK_COMPOUND_DATA_UPDATES$CID" FOREIGN KEY ("COMPOUND_ID")
	  REFERENCES "COMPOUND_DATA" ("COMPOUND_ID") ENABLE;
 
  ALTER TABLE "COMPOUND_DATA_UPDATES" ADD CONSTRAINT "FK_COMPOUND_DATA_UPDATES$PUB" FOREIGN KEY ("PUBLISHED")
	  REFERENCES "CV_COMP_PUB_AVAIL" ("CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ENZYMES
--------------------------------------------------------

  ALTER TABLE "ENZYMES" ADD CONSTRAINT "FK_ENZYMES$EC1$EC2$EC3" FOREIGN KEY ("EC1", "EC2", "EC3")
	  REFERENCES "SUBSUBCLASSES" ("EC1", "EC2", "EC3") ENABLE;
 
  ALTER TABLE "ENZYMES" ADD CONSTRAINT "FK_ENZYMES$SOURCE" FOREIGN KEY ("SOURCE")
	  REFERENCES "CV_DATABASES" ("CODE") ENABLE;
 
  ALTER TABLE "ENZYMES" ADD CONSTRAINT "FK_ENZYMES$STATUS" FOREIGN KEY ("STATUS")
	  REFERENCES "CV_STATUS" ("CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FUTURE_EVENTS
--------------------------------------------------------

  ALTER TABLE "FUTURE_EVENTS" ADD CONSTRAINT "FK_FUTURE_EVENTS$AFTER_ID" FOREIGN KEY ("AFTER_ID")
	  REFERENCES "ENZYMES" ("ENZYME_ID") ENABLE;
 
  ALTER TABLE "FUTURE_EVENTS" ADD CONSTRAINT "FK_FUTURE_EVENTS$BEFORE_ID" FOREIGN KEY ("BEFORE_ID")
	  REFERENCES "ENZYMES" ("ENZYME_ID") ENABLE;
 
  ALTER TABLE "FUTURE_EVENTS" ADD CONSTRAINT "FK_FUTURE_EVENTS$TIMEOUT_ID" FOREIGN KEY ("TIMEOUT_ID")
	  REFERENCES "TIMEOUTS" ("TIMEOUT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table HISTORY_EVENTS
--------------------------------------------------------

  ALTER TABLE "HISTORY_EVENTS" ADD CONSTRAINT "FK_HISTORY_EVENTS$AFTER_ID" FOREIGN KEY ("AFTER_ID")
	  REFERENCES "ENZYMES" ("ENZYME_ID") ENABLE;
 
  ALTER TABLE "HISTORY_EVENTS" ADD CONSTRAINT "FK_HISTORY_EVENTS$BEFORE_ID" FOREIGN KEY ("BEFORE_ID")
	  REFERENCES "ENZYMES" ("ENZYME_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table INTENZ_REACTIONS
--------------------------------------------------------

  ALTER TABLE "INTENZ_REACTIONS" ADD CONSTRAINT "INTENZ_REACTIONS_FK$DIR" FOREIGN KEY ("DIRECTION")
	  REFERENCES "CV_REACTION_DIRECTIONS" ("CODE") ENABLE;
 
  ALTER TABLE "INTENZ_REACTIONS" ADD CONSTRAINT "INTENZ_REACTIONS_FK$SRC" FOREIGN KEY ("SOURCE")
	  REFERENCES "CV_DATABASES" ("CODE") ENABLE;
 
  ALTER TABLE "INTENZ_REACTIONS" ADD CONSTRAINT "INTENZ_REACTIONS_FK$STA" FOREIGN KEY ("STATUS")
	  REFERENCES "CV_STATUS" ("CODE") ENABLE;
 
  ALTER TABLE "INTENZ_REACTIONS" ADD CONSTRAINT "INTENZ_REACTIONS_FK$UN" FOREIGN KEY ("UN_REACTION")
	  REFERENCES "INTENZ_REACTIONS" ("REACTION_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LINKS
--------------------------------------------------------

  ALTER TABLE "LINKS" ADD CONSTRAINT "FK_LINKS$ENZYME_ID" FOREIGN KEY ("ENZYME_ID")
	  REFERENCES "ENZYMES" ("ENZYME_ID") ON DELETE CASCADE ENABLE;
 
  ALTER TABLE "LINKS" ADD CONSTRAINT "FK_LINKS$STATUS" FOREIGN KEY ("STATUS")
	  REFERENCES "CV_STATUS" ("CODE") ENABLE;
 
  ALTER TABLE "LINKS" ADD CONSTRAINT "FK_LINKS$WEB_VIEW" FOREIGN KEY ("WEB_VIEW")
	  REFERENCES "CV_VIEW" ("CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NAMES
--------------------------------------------------------

  ALTER TABLE "NAMES" ADD CONSTRAINT "FK_NAMES$ENZYME_ID" FOREIGN KEY ("ENZYME_ID")
	  REFERENCES "ENZYMES" ("ENZYME_ID") ON DELETE CASCADE ENABLE;
 
  ALTER TABLE "NAMES" ADD CONSTRAINT "FK_NAMES$NAME_CLASS" FOREIGN KEY ("NAME_CLASS")
	  REFERENCES "CV_NAME_CLASSES" ("CODE") ENABLE;
 
  ALTER TABLE "NAMES" ADD CONSTRAINT "FK_NAMES$STATUS" FOREIGN KEY ("STATUS")
	  REFERENCES "CV_STATUS" ("CODE") ENABLE;
 
  ALTER TABLE "NAMES" ADD CONSTRAINT "FK_NAMES$WARNING" FOREIGN KEY ("WARNING")
	  REFERENCES "CV_WARNINGS" ("CODE") ENABLE;
 
  ALTER TABLE "NAMES" ADD CONSTRAINT "FK_NAMES$WEB_VIEW" FOREIGN KEY ("WEB_VIEW")
	  REFERENCES "CV_VIEW" ("CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PUBLICATIONS
--------------------------------------------------------

  ALTER TABLE "PUBLICATIONS" ADD CONSTRAINT "FK_PUBLICATIONS$SOURCE" FOREIGN KEY ("SOURCE")
	  REFERENCES "CV_DATABASES" ("CODE") ENABLE;
 
  ALTER TABLE "PUBLICATIONS" ADD CONSTRAINT "FK_PUBLICATIONS$WEB_VIEW" FOREIGN KEY ("WEB_VIEW")
	  REFERENCES "CV_VIEW" ("CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REACTIONS
--------------------------------------------------------

  ALTER TABLE "REACTIONS" ADD CONSTRAINT "FK_REACTIONS$ENZYME_ID" FOREIGN KEY ("ENZYME_ID")
	  REFERENCES "ENZYMES" ("ENZYME_ID") ON DELETE CASCADE ENABLE;
 
  ALTER TABLE "REACTIONS" ADD CONSTRAINT "FK_REACTIONS$STATUS" FOREIGN KEY ("STATUS")
	  REFERENCES "CV_STATUS" ("CODE") ENABLE;
 
  ALTER TABLE "REACTIONS" ADD CONSTRAINT "FK_REACTIONS$WEB_VIEW" FOREIGN KEY ("WEB_VIEW")
	  REFERENCES "CV_VIEW" ("CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REACTIONS_MAP
--------------------------------------------------------

  ALTER TABLE "REACTIONS_MAP" ADD CONSTRAINT "FK_REACTIONS_MAP$ENZYME_ID" FOREIGN KEY ("ENZYME_ID")
	  REFERENCES "ENZYMES" ("ENZYME_ID") ON DELETE CASCADE ENABLE;
 
  ALTER TABLE "REACTIONS_MAP" ADD CONSTRAINT "FK_REACTIONS_MAP$RID" FOREIGN KEY ("REACTION_ID")
	  REFERENCES "INTENZ_REACTIONS" ("REACTION_ID") ENABLE;
 
  ALTER TABLE "REACTIONS_MAP" ADD CONSTRAINT "FK_REACTIONS_MAP$WEB_VIEW" FOREIGN KEY ("WEB_VIEW")
	  REFERENCES "CV_VIEW" ("CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REACTION_CITATIONS
--------------------------------------------------------

  ALTER TABLE "REACTION_CITATIONS" ADD CONSTRAINT "FK_REACTION_CITATIONS$RID" FOREIGN KEY ("REACTION_ID")
	  REFERENCES "INTENZ_REACTIONS" ("REACTION_ID") ENABLE;
 
  ALTER TABLE "REACTION_CITATIONS" ADD CONSTRAINT "FK_REACTION_CITATIONS$SO" FOREIGN KEY ("SOURCE")
	  REFERENCES "CV_DATABASES" ("CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REACTION_MERGINGS
--------------------------------------------------------

  ALTER TABLE "REACTION_MERGINGS" ADD CONSTRAINT "REACTION_MERGINGS_FK$TO" FOREIGN KEY ("TO_ID")
	  REFERENCES "INTENZ_REACTIONS" ("REACTION_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REACTION_PARTICIPANTS
--------------------------------------------------------

  ALTER TABLE "REACTION_PARTICIPANTS" ADD CONSTRAINT "FK_REACTION_PARTICIPANTS$COMP" FOREIGN KEY ("COMPOUND_ID")
	  REFERENCES "COMPOUND_DATA" ("COMPOUND_ID") ENABLE;
 
  ALTER TABLE "REACTION_PARTICIPANTS" ADD CONSTRAINT "FK_REACTION_PARTICIPANTS$CT" FOREIGN KEY ("COEFF_TYPE")
	  REFERENCES "CV_COEFF_TYPES" ("CODE") ENABLE;
 
  ALTER TABLE "REACTION_PARTICIPANTS" ADD CONSTRAINT "FK_REACTION_PARTICIPANTS$RID" FOREIGN KEY ("REACTION_ID")
	  REFERENCES "INTENZ_REACTIONS" ("REACTION_ID") ENABLE;
 
  ALTER TABLE "REACTION_PARTICIPANTS" ADD CONSTRAINT "FK_REACTION_PARTICIPANTS$SIDE" FOREIGN KEY ("SIDE")
	  REFERENCES "CV_REACTION_SIDES" ("CODE") ENABLE;
 
  ALTER TABLE "REACTION_PARTICIPANTS" ADD FOREIGN KEY ("LOCATION")
	  REFERENCES "CV_LOCATION" ("CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REACTION_PARTICIPANTS_AUDIT
--------------------------------------------------------

  ALTER TABLE "REACTION_PARTICIPANTS_AUDIT" ADD FOREIGN KEY ("LOCATION")
	  REFERENCES "CV_LOCATION" ("CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REACTION_XREFS
--------------------------------------------------------

  ALTER TABLE "REACTION_XREFS" ADD CONSTRAINT "FK_REACTION_XREFS$DBC" FOREIGN KEY ("DB_CODE")
	  REFERENCES "CV_DATABASES" ("CODE") ENABLE;
 
  ALTER TABLE "REACTION_XREFS" ADD CONSTRAINT "FK_REACTION_XREFS$RID" FOREIGN KEY ("REACTION_ID")
	  REFERENCES "INTENZ_REACTIONS" ("REACTION_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ROLES
--------------------------------------------------------

  ALTER TABLE "ROLES" ADD CONSTRAINT "FK_ROLES$UN" FOREIGN KEY ("USERNAME")
	  REFERENCES "USERS" ("USERNAME") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SUBCLASSES
--------------------------------------------------------

  ALTER TABLE "SUBCLASSES" ADD CONSTRAINT "FK_SUBCLASSES$EC1" FOREIGN KEY ("EC1")
	  REFERENCES "CLASSES" ("EC1") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SUBSUBCLASSES
--------------------------------------------------------

  ALTER TABLE "SUBSUBCLASSES" ADD CONSTRAINT "FK_SUBSUBCLASSES$EC1$EC2" FOREIGN KEY ("EC1", "EC2")
	  REFERENCES "SUBCLASSES" ("EC1", "EC2") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TIMEOUTS
--------------------------------------------------------

  ALTER TABLE "TIMEOUTS" ADD CONSTRAINT "FK_TIMEOUTS$ENZYME_ID" FOREIGN KEY ("ENZYME_ID")
	  REFERENCES "ENZYMES" ("ENZYME_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table XREFS
--------------------------------------------------------

  ALTER TABLE "XREFS" ADD CONSTRAINT "FK_XREFS$DATABASE_CODE" FOREIGN KEY ("DATABASE_CODE")
	  REFERENCES "CV_DATABASES" ("CODE") ENABLE;
 
  ALTER TABLE "XREFS" ADD CONSTRAINT "FK_XREFS$ENZYME_ID" FOREIGN KEY ("ENZYME_ID")
	  REFERENCES "ENZYMES" ("ENZYME_ID") ON DELETE CASCADE ENABLE;
 
  ALTER TABLE "XREFS" ADD CONSTRAINT "FK_XREFS$STATUS" FOREIGN KEY ("STATUS")
	  REFERENCES "CV_STATUS" ("CODE") ENABLE;
 
  ALTER TABLE "XREFS" ADD CONSTRAINT "FK_XREFS$WEB_VIEW" FOREIGN KEY ("WEB_VIEW")
	  REFERENCES "CV_VIEW" ("CODE") ENABLE;
--------------------------------------------------------
--  DDL for Trigger TD_CITATIONS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TD_CITATIONS" 
  AFTER DELETE ON citations FOR EACH ROW



BEGIN
  INSERT INTO citations_audit (
    enzyme_id,pub_id,order_in,status,source,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :old.enzyme_id,:old.pub_id,:old.order_in,:old.status,:old.source,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'D');
END;

/
ALTER TRIGGER "TD_CITATIONS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TD_CLASSES
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TD_CLASSES" 
  AFTER DELETE ON classes FOR EACH ROW



BEGIN
  INSERT INTO classes_audit (
    ec1,name,description,active,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :old.ec1,:old.name,:old.description,:old.active,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'D');
END;
/
ALTER TRIGGER "TD_CLASSES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TD_COFACTORS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TD_COFACTORS" 
  AFTER DELETE ON cofactors FOR EACH ROW
BEGIN
  insert into cofactors_audit (
    enzyme_id,source,status,order_in,cofactor_text,web_view,
    timestamp,audit_id,dbuser,osuser,remark,action,
    compound_id,operator,op_grp)
  values (
    :old.enzyme_id,:old.source,:old.status,:new.order_in,:old.cofactor_text,:old.web_view,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'D',
    :new.compound_id,:new.operator,:new.op_grp);
END;
/
ALTER TRIGGER "TD_COFACTORS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TD_COMMENTS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TD_COMMENTS" 
  AFTER DELETE ON comments FOR EACH ROW
BEGIN
  INSERT INTO comments_audit (
    enzyme_id,comment_text,order_in,status,source,web_view,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :old.enzyme_id,:old.comment_text,:old.order_in,:old.status,:old.source,:old.web_view,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'D');
END;
/
ALTER TRIGGER "TD_COMMENTS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TD_COMPLEX_REACTIONS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TD_COMPLEX_REACTIONS" 
  AFTER DELETE ON complex_reactions FOR EACH ROW
BEGIN
  INSERT INTO complex_reactions_audit (
    parent_id,child_id,order_in,coefficient,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :old.parent_id,:old.child_id,:old.order_in,:old.coefficient,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'D');
END;
/
ALTER TRIGGER "TD_COMPLEX_REACTIONS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TD_COMPOUND_DATA
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TD_COMPOUND_DATA" 
  AFTER DELETE ON compound_data FOR EACH ROW
BEGIN
  INSERT INTO compound_data_audit (
    compound_id,name,formula,charge,source,accession,child_accession,published,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :old.compound_id,:old.name,:old.formula,:old.charge,:old.source,:old.accession,:old.child_accession,:old.published,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'D');
END;
/
ALTER TRIGGER "TD_COMPOUND_DATA" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TD_CV_DATABASES
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TD_CV_DATABASES" 
  AFTER DELETE ON cv_databases FOR EACH ROW



BEGIN
  INSERT INTO cv_databases_audit (
    code,name,display_name,sort_order,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :old.code,:old.name,:old.display_name,:old.sort_order,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'D');
END;
/
ALTER TRIGGER "TD_CV_DATABASES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TD_CV_NAME_CLASSES
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TD_CV_NAME_CLASSES" 
  AFTER DELETE ON cv_name_classes FOR EACH ROW



BEGIN
  INSERT INTO cv_name_classes_audit (
    code,name,display_name,sort_order,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :old.code,:old.name,:old.display_name,:old.sort_order,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'D');
END;
/
ALTER TRIGGER "TD_CV_NAME_CLASSES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TD_CV_STATUS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TD_CV_STATUS" 
  AFTER DELETE ON cv_status FOR EACH ROW



BEGIN
  INSERT INTO cv_status_audit (
    code,name,display_name,sort_order,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :old.code,:old.name,:old.display_name,:old.sort_order,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'D');
END;
/
ALTER TRIGGER "TD_CV_STATUS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TD_CV_VIEW
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TD_CV_VIEW" 
  AFTER DELETE ON cv_view FOR EACH ROW
BEGIN
  INSERT INTO cv_view_audit (
    code,description,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :old.code,:old.description,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'D');
END;
/
ALTER TRIGGER "TD_CV_VIEW" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TD_CV_WARNINGS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TD_CV_WARNINGS" 
  AFTER DELETE ON cv_warnings FOR EACH ROW



BEGIN
  INSERT INTO cv_warnings_audit (
    code,name,display_name,sort_order,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :old.code,:old.name,:old.display_name,:old.sort_order,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'D');
END;
/
ALTER TRIGGER "TD_CV_WARNINGS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TD_ENZYMES
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TD_ENZYMES" 
  AFTER DELETE ON enzymes FOR EACH ROW



BEGIN
  INSERT INTO enzymes_audit (
    enzyme_id,ec1,ec2,ec3,ec4,history,status,note,source,active,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :old.enzyme_id,:old.ec1,:old.ec2,:old.ec3,:old.ec4,:old.history,:old.status,:old.note,:old.source,:old.active,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'D');
END;

/
ALTER TRIGGER "TD_ENZYMES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TD_FUTURE_EVENTS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TD_FUTURE_EVENTS" 
  AFTER DELETE ON future_events FOR EACH ROW


BEGIN
  INSERT INTO future_events_audit (
    group_id, event_id, before_id, after_id, event_year, event_note, event_class, status, timeout_id,
    timestamp, audit_id, dbuser, osuser, remark, action)
  VALUES (
    :new.group_id,:new.event_id,:new.before_id,:new.after_id,:new.event_year,:new.event_note,:new.event_class,:new.status,:new.timeout_id,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'D');
END;

/
ALTER TRIGGER "TD_FUTURE_EVENTS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TD_HISTORY_EVENTS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TD_HISTORY_EVENTS" 
  AFTER DELETE ON history_events FOR EACH ROW


BEGIN
  INSERT INTO history_events_audit (
    group_id, event_id, before_id, after_id, event_year, event_note, event_class,
    timestamp, audit_id, dbuser, osuser, remark, action)
  VALUES (
    :new.group_id,:new.event_id,:new.before_id,:new.after_id,:new.event_year,:new.event_note,:new.event_class,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'D');
END;

/
ALTER TRIGGER "TD_HISTORY_EVENTS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TD_INTENZ_REACTIONS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TD_INTENZ_REACTIONS" 
  AFTER DELETE ON intenz_reactions FOR EACH ROW
BEGIN
  INSERT INTO intenz_reactions_audit (
    reaction_id,intenz_accession,equation,fingerprint
    ,status,source,iubmb,direction,
    un_reaction,qualifiers,data_comment,reaction_comment,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :old.reaction_id,:old.intenz_accession,:old.equation,:old.fingerprint,
    :old.status,:old.source,:old.iubmb,:old.direction,
    :old.un_reaction,:old.qualifiers,:old.data_comment,:old.reaction_comment,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'D');
end;
/
ALTER TRIGGER "TD_INTENZ_REACTIONS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TD_LINKS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TD_LINKS" 
  AFTER DELETE ON links FOR EACH ROW
BEGIN
  insert into links_audit (
    enzyme_id,url,display_name,status,source,web_view,
    timestamp,audit_id,dbuser,osuser,remark,action,
    data_comment)
  values (
    :old.enzyme_id,:old.url,:old.display_name,:old.status,:old.source,:old.web_view,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'D',
    :new.data_comment);
END;
/
ALTER TRIGGER "TD_LINKS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TD_NAMES
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TD_NAMES" 
  AFTER DELETE ON names FOR EACH ROW
BEGIN
  INSERT INTO names_audit (
    enzyme_id,name,name_class,warning,status,source,note,order_in,web_view,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :old.enzyme_id,:old.name,:old.name_class,:old.warning,:old.status,:old.source,:old.note,:old.order_in,:old.web_view,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'D');
END;
/
ALTER TRIGGER "TD_NAMES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TD_PUBLICATIONS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TD_PUBLICATIONS" 
  AFTER DELETE ON publications FOR EACH ROW
BEGIN
  INSERT INTO publications_audit (
    pub_id,medline_id,pubmed_id,pub_type,author,pub_year,title,journal_book,volume,first_page,last_page,edition,editor,pub_company,pub_place,url,web_view,source,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :old.pub_id,:old.medline_id,:old.pubmed_id,:old.pub_type,:old.author,:old.pub_year,:old.title,:old.journal_book,:old.volume,:old.first_page,:old.last_page,:old.edition,:old.editor,:old.pub_company,:old.pub_place,:old.url,:old.web_view,:old.source,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'D');
END;
/
ALTER TRIGGER "TD_PUBLICATIONS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TD_REACTIONS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TD_REACTIONS" 
  AFTER DELETE ON reactions FOR EACH ROW
BEGIN
  INSERT INTO reactions_audit (
    enzyme_id,equation,order_in,status,source,web_view,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :old.enzyme_id,:old.equation,:old.order_in,:old.status,:old.source,:old.web_view,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'D');
END;
/
ALTER TRIGGER "TD_REACTIONS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TD_REACTIONS_MAP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TD_REACTIONS_MAP" 
AFTER DELETE ON REACTIONS_MAP FOR EACH ROW
BEGIN
    INSERT INTO reactions_map_audit (
    reaction_id,enzyme_id,web_view,order_in,iubmb,
    timestamp,audit_id,dbuser,osuser,remark,action)
    VALUES (
    :old.reaction_id,:old.enzyme_id,:old.web_view,:old.order_in,:old.iubmb,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'D'
    );
END;
/
ALTER TRIGGER "TD_REACTIONS_MAP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TD_REACTION_CITATIONS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TD_REACTION_CITATIONS" 
  AFTER DELETE ON reaction_citations FOR EACH ROW
BEGIN
  INSERT INTO reaction_citations_audit (
    reaction_id,pub_id,order_in,source,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :old.reaction_id,:old.pub_id,:old.order_in,:old.source,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'D');
END;
/
ALTER TRIGGER "TD_REACTION_CITATIONS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TD_REACTION_PARTICIPANTS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TD_REACTION_PARTICIPANTS" 
  AFTER DELETE ON reaction_participants FOR EACH ROW
BEGIN
  insert into reaction_participants_audit (
    reaction_id,compound_id,side,coefficient,coeff_type,location,
    timestamp,audit_id,dbuser,osuser,remark,action)
  values (
    :old.reaction_id,:old.compound_id,:old.side,:old.coefficient,:old.coeff_type,:old.location,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'D');
end;
/
ALTER TRIGGER "TD_REACTION_PARTICIPANTS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TD_REACTION_XREFS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TD_REACTION_XREFS" 
  AFTER DELETE ON reaction_xrefs FOR EACH ROW
BEGIN
  INSERT INTO reaction_xrefs_audit (
    reaction_id,db_code,db_accession,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :old.reaction_id,:old.db_code,:old.db_accession,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'D');
END;
/
ALTER TRIGGER "TD_REACTION_XREFS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TD_SUBCLASSES
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TD_SUBCLASSES" 
  AFTER DELETE ON subclasses FOR EACH ROW



BEGIN
  INSERT INTO subclasses_audit (
    ec1,ec2,name,description,active,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :old.ec1,:old.ec2,:old.name,:old.description,:old.active,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'D');
END;
/
ALTER TRIGGER "TD_SUBCLASSES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TD_SUBSUBCLASSES
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TD_SUBSUBCLASSES" 
  AFTER DELETE ON subsubclasses FOR EACH ROW



BEGIN
  INSERT INTO subsubclasses_audit (
    ec1,ec2,ec3,name,description,active,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :old.ec1,:old.ec2,:old.ec3,:old.name,:old.description,:old.active,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'D');
END;
/
ALTER TRIGGER "TD_SUBSUBCLASSES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TD_TIMEOUTS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TD_TIMEOUTS" 
  AFTER DELETE ON timeouts FOR EACH ROW


BEGIN
  INSERT INTO timeouts_audit (
    enzyme_id,start_date,due_date,timeout_id,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :old.enzyme_id,:old.start_date,:old.due_date,:new.timeout_id,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'D');
END;

/
ALTER TRIGGER "TD_TIMEOUTS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TD_XREFS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TD_XREFS" 
  AFTER DELETE ON xrefs FOR EACH ROW
  BEGIN
  INSERT INTO xrefs_audit (
    enzyme_id,database_code,database_ac,name,status,source,
    timestamp,audit_id,dbuser,osuser,remark,action,
    data_comment,web_view)
  VALUES (
    :old.enzyme_id,:old.database_code,:old.database_ac,:old.name,:old.status,:old.source,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'D',
    :new.data_comment,:new.web_view);
END;
/
ALTER TRIGGER "TD_XREFS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TI_CITATIONS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TI_CITATIONS" 
  AFTER INSERT ON citations FOR EACH ROW



BEGIN
  INSERT INTO citations_audit (
    enzyme_id,pub_id,order_in,status,source,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.enzyme_id,:new.pub_id,:new.order_in,:new.status,:new.source,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'I');
END;

/
ALTER TRIGGER "TI_CITATIONS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TI_CLASSES
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TI_CLASSES" 
  AFTER INSERT ON classes FOR EACH ROW



BEGIN
  INSERT INTO classes_audit (
    ec1,name,description,active,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.ec1,:new.name,:new.description,:new.active,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'I');
END;
/
ALTER TRIGGER "TI_CLASSES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TI_COFACTORS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TI_COFACTORS" 
  AFTER INSERT ON cofactors FOR EACH ROW
BEGIN
  insert into cofactors_audit (
    enzyme_id,source,status,order_in,cofactor_text,web_view,
    timestamp,audit_id,dbuser,osuser,remark,action,
    compound_id,operator,op_grp)
  values (
    :new.enzyme_id,:new.source,:new.status,:new.order_in,:new.cofactor_text,:new.web_view,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'I',
    :new.compound_id,:new.operator,:new.op_grp);
END;
/
ALTER TRIGGER "TI_COFACTORS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TI_COMMENTS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TI_COMMENTS" 
  AFTER INSERT ON comments FOR EACH ROW
BEGIN
  INSERT INTO comments_audit (
    enzyme_id,comment_text,order_in,status,source,web_view,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.enzyme_id,:new.comment_text,:new.order_in,:new.status,:new.source,:new.web_view,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'I');
END;
/
ALTER TRIGGER "TI_COMMENTS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TI_COMPLEX_REACTIONS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TI_COMPLEX_REACTIONS" 
  AFTER INSERT ON complex_reactions FOR EACH ROW
BEGIN
  INSERT INTO complex_reactions_audit (
    parent_id,child_id,order_in,coefficient,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.parent_id,:new.child_id,:new.order_in,:new.coefficient,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'I');
END;
/
ALTER TRIGGER "TI_COMPLEX_REACTIONS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TI_COMPOUND_DATA
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TI_COMPOUND_DATA" 
  AFTER INSERT ON compound_data FOR EACH ROW
BEGIN
  INSERT INTO compound_data_audit (
    compound_id,name,formula,charge,source,accession,child_accession,published,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.compound_id,:new.name,:new.formula,:new.charge,:new.source,:new.accession,:new.child_accession,:new.published,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'I');
END;
/
ALTER TRIGGER "TI_COMPOUND_DATA" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TI_CV_DATABASES
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TI_CV_DATABASES" 
  AFTER INSERT ON cv_databases FOR EACH ROW



BEGIN
  INSERT INTO cv_databases_audit (
    code,name,display_name,sort_order,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.code,:new.name,:new.display_name,:new.sort_order,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'I');
END;
/
ALTER TRIGGER "TI_CV_DATABASES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TI_CV_NAME_CLASSES
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TI_CV_NAME_CLASSES" 
  AFTER INSERT ON cv_name_classes FOR EACH ROW



BEGIN
  INSERT INTO cv_name_classes_audit (
    code,name,display_name,sort_order,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.code,:new.name,:new.display_name,:new.sort_order,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'I');
END;
/
ALTER TRIGGER "TI_CV_NAME_CLASSES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TI_CV_STATUS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TI_CV_STATUS" 
  AFTER INSERT ON cv_status FOR EACH ROW



BEGIN
  INSERT INTO cv_status_audit (
    code,name,display_name,sort_order,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.code,:new.name,:new.display_name,:new.sort_order,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'I');
END;
/
ALTER TRIGGER "TI_CV_STATUS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TI_CV_VIEW
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TI_CV_VIEW" 
  AFTER INSERT ON cv_view FOR EACH ROW
BEGIN
  INSERT INTO cv_view_audit (
    code,description,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.code,:new.description,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'I');
END;
/
ALTER TRIGGER "TI_CV_VIEW" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TI_CV_WARNINGS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TI_CV_WARNINGS" 
  AFTER INSERT ON cv_warnings FOR EACH ROW



BEGIN
  INSERT INTO cv_warnings_audit (
    code,name,display_name,sort_order,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.code,:new.name,:new.display_name,:new.sort_order,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'I');
END;
/
ALTER TRIGGER "TI_CV_WARNINGS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TI_ENZYMES
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TI_ENZYMES" 
  AFTER INSERT ON enzymes FOR EACH ROW



BEGIN
  INSERT INTO enzymes_audit (
    enzyme_id,ec1,ec2,ec3,ec4,history,status,note,source,active,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.enzyme_id,:new.ec1,:new.ec2,:new.ec3,:new.ec4,:new.history,:new.status,:new.note,:new.source,:new.active,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'I');
END;

/
ALTER TRIGGER "TI_ENZYMES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TI_FUTURE_EVENTS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TI_FUTURE_EVENTS" 
  AFTER INSERT ON future_events FOR EACH ROW


BEGIN
  INSERT INTO future_events_audit (
    group_id, event_id, before_id, after_id, event_year, event_note, event_class, status, timeout_id,
    timestamp, audit_id, dbuser, osuser, remark, action)
  VALUES (
    :new.group_id,:new.event_id,:new.before_id,:new.after_id,:new.event_year,:new.event_note,:new.event_class,:new.status,:new.timeout_id,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'I');
END;

/
ALTER TRIGGER "TI_FUTURE_EVENTS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TI_HISTORY_EVENTS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TI_HISTORY_EVENTS" 
  AFTER INSERT ON history_events FOR EACH ROW


BEGIN
  INSERT INTO history_events_audit (
    group_id, event_id, before_id, after_id, event_year, event_note, event_class,
    timestamp, audit_id, dbuser, osuser, remark, action)
  VALUES (
    :new.group_id,:new.event_id,:new.before_id,:new.after_id,:new.event_year,:new.event_note,:new.event_class,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'I');
END;

/
ALTER TRIGGER "TI_HISTORY_EVENTS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TI_INTENZ_REACTIONS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TI_INTENZ_REACTIONS" 
  AFTER INSERT ON intenz_reactions FOR EACH ROW
BEGIN
  insert into intenz_reactions_audit (
    reaction_id,intenz_accession,equation,fingerprint,
    status,source,iubmb,direction,un_reaction,
    qualifiers,data_comment,reaction_comment,
    timestamp,audit_id,dbuser,osuser,remark,action)
  values (
    :new.reaction_id,:new.intenz_accession,:new.equation,:new.fingerprint,
    :new.status,:new.source,:new.iubmb,:new.direction,:new.un_reaction,
    :new.qualifiers,:new.data_comment,:new.reaction_comment,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'I');
end;
/
ALTER TRIGGER "TI_INTENZ_REACTIONS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TI_LINKS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TI_LINKS" 
  AFTER INSERT ON links FOR EACH ROW
BEGIN
  insert into links_audit (
    enzyme_id,url,display_name,status,source,web_view,
    timestamp,audit_id,dbuser,osuser,remark,action,
    data_comment)
  values (
    :new.enzyme_id,:new.url,:new.display_name,:new.status,:new.source,:new.web_view,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'I',
    :new.data_comment);
END;
/
ALTER TRIGGER "TI_LINKS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TI_NAMES
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TI_NAMES" 
  AFTER INSERT ON names FOR EACH ROW
BEGIN
  INSERT INTO names_audit (
    enzyme_id,name,name_class,warning,status,source,note,order_in,web_view,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.enzyme_id,:new.name,:new.name_class,:new.warning,:new.status,:new.source,:new.note,:new.order_in,:new.web_view,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'I');
END;
/
ALTER TRIGGER "TI_NAMES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TI_PUBLICATIONS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TI_PUBLICATIONS" 
  AFTER INSERT ON publications FOR EACH ROW
BEGIN
  INSERT INTO publications_audit (
    pub_id,medline_id,pubmed_id,pub_type,author,pub_year,title,journal_book,volume,first_page,last_page,edition,editor,pub_company,pub_place,url,web_view,source,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.pub_id,:new.medline_id,:new.pubmed_id,:new.pub_type,:new.author,:new.pub_year,:new.title,:new.journal_book,:new.volume,:new.first_page,:new.last_page,:new.edition,:new.editor,:new.pub_company,:new.pub_place,:new.url,:new.web_view,:new.source,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'I');
END;
/
ALTER TRIGGER "TI_PUBLICATIONS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TI_REACTIONS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TI_REACTIONS" 
  AFTER INSERT ON reactions FOR EACH ROW
BEGIN
  INSERT INTO reactions_audit (
    enzyme_id,equation,order_in,status,source,web_view,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.enzyme_id,:new.equation,:new.order_in,:new.status,:new.source,:new.web_view,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'I');
END;
/
ALTER TRIGGER "TI_REACTIONS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TI_REACTIONS_MAP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TI_REACTIONS_MAP" 
AFTER INSERT ON REACTIONS_MAP FOR EACH ROW
BEGIN
    INSERT INTO reactions_map_audit (
    reaction_id,enzyme_id,web_view,order_in,iubmb,
    timestamp,audit_id,dbuser,osuser,remark,action)
    VALUES (
    :new.reaction_id,:new.enzyme_id,:new.web_view,:new.order_in,:new.iubmb,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'I'
    );
END;
/
ALTER TRIGGER "TI_REACTIONS_MAP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TI_REACTION_CITATIONS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TI_REACTION_CITATIONS" 
  AFTER INSERT ON reaction_citations FOR EACH ROW
BEGIN
  INSERT INTO reaction_citations_audit (
    reaction_id,pub_id,order_in,source,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.reaction_id,:new.pub_id,:new.order_in,:new.source,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'I');
END;
/
ALTER TRIGGER "TI_REACTION_CITATIONS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TI_REACTION_PARTICIPANTS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TI_REACTION_PARTICIPANTS" 
  AFTER INSERT ON reaction_participants FOR EACH ROW
BEGIN
  insert into reaction_participants_audit (
    reaction_id,compound_id,side,coefficient,coeff_type,location,
    timestamp,audit_id,dbuser,osuser,remark,action)
  values (
    :new.reaction_id,:new.compound_id,:new.side,:new.coefficient,:new.coeff_type,:new.location,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'I');
end;
/
ALTER TRIGGER "TI_REACTION_PARTICIPANTS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TI_REACTION_QUALIFIERS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TI_REACTION_QUALIFIERS" 
BEFORE INSERT ON intenz_reactions FOR EACH ROW
BEGIN
	IF check_reaction_qualifiers(:NEW.qualifiers) > 0
	THEN
		RAISE_APPLICATION_ERROR(-20000, 'Bad reaction qualifiers');
	end if;
end;
/
ALTER TRIGGER "TI_REACTION_QUALIFIERS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TI_REACTION_XREFS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TI_REACTION_XREFS" 
  AFTER INSERT ON reaction_xrefs FOR EACH ROW
BEGIN
  INSERT INTO reaction_xrefs_audit (
    reaction_id,db_code,db_accession,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.reaction_id,:new.db_code,:new.db_accession,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'I');
END;
/
ALTER TRIGGER "TI_REACTION_XREFS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TI_SUBCLASSES
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TI_SUBCLASSES" 
  AFTER INSERT ON subclasses FOR EACH ROW



BEGIN
  INSERT INTO subclasses_audit (
    ec1,ec2,name,description,active,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.ec1,:new.ec2,:new.name,:new.description,:new.active,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'I');
END;

/
ALTER TRIGGER "TI_SUBCLASSES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TI_SUBSUBCLASSES
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TI_SUBSUBCLASSES" 
  AFTER INSERT ON subsubclasses FOR EACH ROW



BEGIN
  INSERT INTO subsubclasses_audit (
    ec1,ec2,ec3,name,description,active,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.ec1,:new.ec2,:new.ec3,:new.name,:new.description,:new.active,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'I');
END;

/
ALTER TRIGGER "TI_SUBSUBCLASSES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TI_TIMEOUTS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TI_TIMEOUTS" 
  AFTER INSERT ON timeouts FOR EACH ROW


BEGIN
  INSERT INTO timeouts_audit (
    enzyme_id,start_date,due_date,timeout_id,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.enzyme_id,:new.start_date,:new.due_date,:new.timeout_id,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'I');
END;

/
ALTER TRIGGER "TI_TIMEOUTS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TI_XREFS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TI_XREFS" 
  AFTER INSERT ON xrefs FOR EACH ROW
  BEGIN
  INSERT INTO xrefs_audit (
    enzyme_id,database_code,database_ac,name,status,source,
    timestamp,audit_id,dbuser,osuser,remark,action,
    data_comment,web_view)
  VALUES (
    :new.enzyme_id,:new.database_code,:new.database_ac,:new.name,:new.status,:new.source,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'I',
    :new.data_comment,:new.web_view);
END;
/
ALTER TRIGGER "TI_XREFS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_CITATIONS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TU_CITATIONS" 
  AFTER UPDATE ON citations FOR EACH ROW



BEGIN
  INSERT INTO citations_audit (
    enzyme_id,pub_id,order_in,status,source,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.enzyme_id,:new.pub_id,:new.order_in,:new.status,:new.source,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'U');
END;
/
ALTER TRIGGER "TU_CITATIONS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_CLASSES
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TU_CLASSES" 
  AFTER UPDATE ON classes FOR EACH ROW



BEGIN
  INSERT INTO classes_audit (
    ec1,name,description,active,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.ec1,:new.name,:new.description,:new.active,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'U');
END;
/
ALTER TRIGGER "TU_CLASSES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_COFACTORS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TU_COFACTORS" 
  AFTER UPDATE ON cofactors FOR EACH ROW
BEGIN
  insert into cofactors_audit (
    enzyme_id,source,status,order_in,cofactor_text,web_view,
    timestamp,audit_id,dbuser,osuser,remark,action,
    compound_id,operator,op_grp)
  values (
    :new.enzyme_id,:new.source,:new.status,:new.order_in,:new.cofactor_text,:new.web_view,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'U',
    :new.compound_id,:new.operator,:new.op_grp);
END;
/
ALTER TRIGGER "TU_COFACTORS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_COMMENTS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TU_COMMENTS" 
  AFTER UPDATE ON comments FOR EACH ROW
BEGIN
  INSERT INTO comments_audit (
    enzyme_id,comment_text,order_in,status,source,web_view,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.enzyme_id,:new.comment_text,:new.order_in,:new.status,:new.source,:new.web_view,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'U');
END;
/
ALTER TRIGGER "TU_COMMENTS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_COMPLEX_REACTIONS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TU_COMPLEX_REACTIONS" 
  AFTER UPDATE ON complex_reactions FOR EACH ROW
BEGIN
  INSERT INTO complex_reactions_audit (
    parent_id,child_id,order_in,coefficient,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.parent_id,:new.child_id,:new.order_in,:new.coefficient,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'U');
END;
/
ALTER TRIGGER "TU_COMPLEX_REACTIONS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_COMPOUND_DATA
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TU_COMPOUND_DATA" 
  AFTER UPDATE ON compound_data FOR EACH ROW
BEGIN
  INSERT INTO compound_data_audit (
    compound_id,name,formula,charge,source,accession,child_accession,published,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.compound_id,:new.name,:new.formula,:new.charge,:new.source,:new.accession,:new.child_accession,:new.published,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'U');
END;
/
ALTER TRIGGER "TU_COMPOUND_DATA" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_CV_DATABASES
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TU_CV_DATABASES" 
  AFTER UPDATE ON cv_databases FOR EACH ROW



BEGIN
  INSERT INTO cv_databases_audit (
    code,name,display_name,sort_order,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.code,:new.name,:new.display_name,:new.sort_order,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'U');
END;
/
ALTER TRIGGER "TU_CV_DATABASES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_CV_NAME_CLASSES
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TU_CV_NAME_CLASSES" 
  AFTER UPDATE ON cv_name_classes FOR EACH ROW



BEGIN
  INSERT INTO cv_name_classes_audit (
    code,name,display_name,sort_order,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.code,:new.name,:new.display_name,:new.sort_order,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'U');
END;
/
ALTER TRIGGER "TU_CV_NAME_CLASSES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_CV_STATUS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TU_CV_STATUS" 
  AFTER UPDATE ON cv_status FOR EACH ROW



BEGIN
  INSERT INTO cv_status_audit (
    code,name,display_name,sort_order,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.code,:new.name,:new.display_name,:new.sort_order,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'U');
END;
/
ALTER TRIGGER "TU_CV_STATUS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_CV_VIEW
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TU_CV_VIEW" 
  AFTER UPDATE ON cv_view FOR EACH ROW
BEGIN
  INSERT INTO cv_view_audit (
    code,description,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.code,:new.description,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'U');
END;
/
ALTER TRIGGER "TU_CV_VIEW" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_CV_WARNINGS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TU_CV_WARNINGS" 
  AFTER UPDATE ON cv_warnings FOR EACH ROW



BEGIN
  INSERT INTO cv_warnings_audit (
    code,name,display_name,sort_order,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.code,:new.name,:new.display_name,:new.sort_order,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'U');
END;
/
ALTER TRIGGER "TU_CV_WARNINGS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_ENZYMES
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TU_ENZYMES" 
  AFTER UPDATE ON enzymes FOR EACH ROW



BEGIN
  INSERT INTO enzymes_audit (
    enzyme_id,ec1,ec2,ec3,ec4,history,status,note,source,active,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.enzyme_id,:new.ec1,:new.ec2,:new.ec3,:new.ec4,:new.history,:new.status,:new.note,:new.source,:new.active,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'U');
END;

/
ALTER TRIGGER "TU_ENZYMES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_FUTURE_EVENTS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TU_FUTURE_EVENTS" 
  AFTER UPDATE ON future_events FOR EACH ROW


BEGIN
  INSERT INTO future_events_audit (
    group_id, event_id, before_id, after_id, event_year, event_note, event_class, status, timeout_id,
    timestamp, audit_id, dbuser, osuser, remark, action)
  VALUES (
    :new.group_id,:new.event_id,:new.before_id,:new.after_id,:new.event_year,:new.event_note,:new.event_class,:new.status,:new.timeout_id,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'U');
END;

/
ALTER TRIGGER "TU_FUTURE_EVENTS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_HISTORY_EVENTS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TU_HISTORY_EVENTS" 
  AFTER UPDATE ON history_events FOR EACH ROW


BEGIN
  INSERT INTO history_events_audit (
    group_id, event_id, before_id, after_id, event_year, event_note, event_class,
    timestamp, audit_id, dbuser, osuser, remark, action)
  VALUES (
    :new.group_id,:new.event_id,:new.before_id,:new.after_id,:new.event_year,:new.event_note,:new.event_class,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'U');
END;

/
ALTER TRIGGER "TU_HISTORY_EVENTS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_INTENZ_REACTIONS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TU_INTENZ_REACTIONS" 
  AFTER UPDATE ON intenz_reactions FOR EACH ROW
BEGIN
  insert into intenz_reactions_audit (
    reaction_id,intenz_accession,equation,fingerprint,
    status,source,iubmb,direction,un_reaction,
    qualifiers,data_comment,reaction_comment,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.reaction_id,:new.intenz_accession,:new.equation,:new.fingerprint,
    :new.status,:new.source,:new.iubmb,:new.direction,:new.un_reaction,
    :new.qualifiers,:new.data_comment,:new.reaction_comment,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'U');
end;
/
ALTER TRIGGER "TU_INTENZ_REACTIONS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_LINKS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TU_LINKS" 
  AFTER UPDATE ON links FOR EACH ROW
BEGIN
  insert into links_audit (
    enzyme_id,url,display_name,status,source,web_view,
    timestamp,audit_id,dbuser,osuser,remark,action,
    data_comment)
  values (
    :new.enzyme_id,:new.url,:new.display_name,:new.status,:new.source,:new.web_view,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'U',
    :new.data_comment);
END;
/
ALTER TRIGGER "TU_LINKS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_NAMES
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TU_NAMES" 
  AFTER UPDATE ON names FOR EACH ROW
BEGIN
  INSERT INTO names_audit (
    enzyme_id,name,name_class,warning,status,source,note,order_in,web_view,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.enzyme_id,:new.name,:new.name_class,:new.warning,:new.status,:new.source,:new.note,:new.order_in,:new.web_view,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'U');
END;
/
ALTER TRIGGER "TU_NAMES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_PUBLICATIONS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TU_PUBLICATIONS" 
  AFTER UPDATE ON publications FOR EACH ROW
BEGIN
  INSERT INTO publications_audit (
    pub_id,medline_id,pubmed_id,pub_type,author,pub_year,title,journal_book,volume,first_page,last_page,edition,editor,pub_company,pub_place,url,web_view,source,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.pub_id,:new.medline_id,:new.pubmed_id,:new.pub_type,:new.author,:new.pub_year,:new.title,:new.journal_book,:new.volume,:new.first_page,:new.last_page,:new.edition,:new.editor,:new.pub_company,:new.pub_place,:new.url,:new.web_view,:new.source,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'U');
END;
/
ALTER TRIGGER "TU_PUBLICATIONS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_REACTIONS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TU_REACTIONS" 
  AFTER UPDATE ON reactions FOR EACH ROW
BEGIN
  INSERT INTO reactions_audit (
    enzyme_id,equation,order_in,status,source,web_view,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.enzyme_id,:new.equation,:new.order_in,:new.status,:new.source,:new.web_view,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'U');
END;
/
ALTER TRIGGER "TU_REACTIONS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_REACTIONS_MAP
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TU_REACTIONS_MAP" 
AFTER UPDATE ON REACTIONS_MAP FOR EACH ROW
BEGIN
    INSERT INTO reactions_map_audit (
    reaction_id,enzyme_id,web_view,order_in,iubmb,
    timestamp,audit_id,dbuser,osuser,remark,action)
    VALUES (
    :new.reaction_id,:new.enzyme_id,:new.web_view,:new.order_in,:new.iubmb,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'U'
    );
end;
/
ALTER TRIGGER "TU_REACTIONS_MAP" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_REACTION_CITATIONS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TU_REACTION_CITATIONS" 
  AFTER UPDATE ON reaction_citations FOR EACH ROW
BEGIN
  INSERT INTO reaction_citations_audit (
    reaction_id,pub_id,order_in,source,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.reaction_id,:new.pub_id,:new.order_in,:new.source,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'U');
END;
/
ALTER TRIGGER "TU_REACTION_CITATIONS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_REACTION_PARTICIPANTS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TU_REACTION_PARTICIPANTS" 
  AFTER UPDATE ON reaction_participants FOR EACH ROW
BEGIN
  insert into reaction_participants_audit (
    reaction_id,compound_id,side,coefficient,coeff_type,location,
    timestamp,audit_id,dbuser,osuser,remark,action)
  values (
    :new.reaction_id,:new.compound_id,:new.side,:new.coefficient,:new.coeff_type,:new.location,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'U');
end;
/
ALTER TRIGGER "TU_REACTION_PARTICIPANTS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_REACTION_QUALIFIERS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TU_REACTION_QUALIFIERS" 
BEFORE UPDATE ON intenz_reactions FOR EACH ROW
BEGIN
	IF check_reaction_qualifiers(:NEW.qualifiers) > 0
	THEN
		RAISE_APPLICATION_ERROR(-20000, 'Bad reaction qualifiers');
	end if;
end;
/
ALTER TRIGGER "TU_REACTION_QUALIFIERS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_REACTION_XREFS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TU_REACTION_XREFS" 
  AFTER UPDATE ON reaction_xrefs FOR EACH ROW
BEGIN
  INSERT INTO reaction_xrefs_audit (
    reaction_id,db_code,db_accession,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.reaction_id,:new.db_code,:new.db_accession,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'U');
END;
/
ALTER TRIGGER "TU_REACTION_XREFS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_SUBCLASSES
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TU_SUBCLASSES" 
  AFTER UPDATE ON subclasses FOR EACH ROW



BEGIN
  INSERT INTO subclasses_audit (
    ec1,ec2,name,description,active,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.ec1,:new.ec2,:new.name,:new.description,:new.active,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'U');
END;
/
ALTER TRIGGER "TU_SUBCLASSES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_SUBSUBCLASSES
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TU_SUBSUBCLASSES" 
  AFTER UPDATE ON subsubclasses FOR EACH ROW



BEGIN
  INSERT INTO subsubclasses_audit (
    ec1,ec2,ec3,name,description,active,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.ec1,:new.ec2,:new.ec3,:new.name,:new.description,:new.active,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'U');
END;
/
ALTER TRIGGER "TU_SUBSUBCLASSES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_TIMEOUTS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TU_TIMEOUTS" 
  AFTER UPDATE ON timeouts FOR EACH ROW


BEGIN
  INSERT INTO timeouts_audit (
    enzyme_id,start_date,due_date,timeout_id,
    timestamp,audit_id,dbuser,osuser,remark,action)
  VALUES (
    :new.enzyme_id,:new.start_date,:new.due_date,:new.timeout_id,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'U');
END;

/
ALTER TRIGGER "TU_TIMEOUTS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_XREFS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TU_XREFS" 
  AFTER UPDATE ON xrefs FOR EACH ROW
BEGIN
  INSERT INTO xrefs_audit (
    enzyme_id,database_code,database_ac,name,status,source,
    timestamp,audit_id,dbuser,osuser,remark,action,
    data_comment,web_view)
  VALUES (
    :new.enzyme_id,:new.database_code,:new.database_ac,:new.name,:new.status,:new.source,
    sysdate,s_audit_id.nextval,user,auditpackage.osuser,auditpackage.remark,'U',
    :new.data_comment,:new.web_view);
END;
/
ALTER TRIGGER "TU_XREFS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger T_COMPOUND_DATA$AUTOINC
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "T_COMPOUND_DATA$AUTOINC" 
BEFORE INSERT ON compound_data
FOR EACH ROW
 WHEN (new.compound_id IS NULL) BEGIN
    SELECT s_compound_id.nextval INTO :new.compound_id FROM DUAL;
END;
/
ALTER TRIGGER "T_COMPOUND_DATA$AUTOINC" ENABLE;
--------------------------------------------------------
--  DDL for Trigger T_ENZYMES$SOURCE_CHANGE
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "T_ENZYMES$SOURCE_CHANGE" 
  BEFORE UPDATE OF source ON enzymes
  FOR EACH ROW
   WHEN (new.source != old.source) BEGIN
  RAISE_APPLICATION_ERROR(-20000, 'enzyme.source must not be changed', TRUE);
END;
/
ALTER TRIGGER "T_ENZYMES$SOURCE_CHANGE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger T_INTENZ_REACTIONS$AUTOINC
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "T_INTENZ_REACTIONS$AUTOINC" 
BEFORE INSERT ON intenz_reactions
FOR EACH ROW
 WHEN (new.reaction_id IS NULL) BEGIN
    select s_reaction_id.nextval into :new.reaction_id from dual;
end;
/
ALTER TRIGGER "T_INTENZ_REACTIONS$AUTOINC" ENABLE;
--------------------------------------------------------
--  DDL for Function CHECK_REACTION_QUALIFIERS
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "CHECK_REACTION_QUALIFIERS" (qq IN reaction_qualifiers)
RETURN INTEGER AS
  tmp CV_REACTION_QUALIFIERS.CODE%type;
BEGIN
	IF qq IS NOT NULL
	THEN
		FOR i IN qq.FIRST .. qq.LAST
		LOOP
			SELECT code INTO tmp FROM cv_reaction_qualifiers WHERE qq(i) = code;
	    END LOOP;
    END IF;
	RETURN 0;

	EXCEPTION
		WHEN NO_DATA_FOUND THEN RETURN 1;
END;

/
--------------------------------------------------------
--  DDL for Function F_CLASSES
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "F_CLASSES" (p_ec1 subsubclasses.ec1%type, p_ec2 subsubclasses.ec2%type, p_ec3 subsubclasses.ec3%type)
return varchar2
as
  separator char(1) := ',';
  output    varchar2(32000) :='';
begin

  if p_ec2 is null and p_ec3 is null then
    for r_classes in (select ec1, name, description from classes where ec1 = p_ec1) loop
       if r_classes.NAME        is not null then output := output || r_classes.NAME          ||separator ; end if;
       if r_classes.DESCRIPTION is not null then output := output || r_classes.DESCRIPTION   ||separator; end if;
    end loop;
    if length(output) > 4000 then
       return ('ERROR !' );
    else
       output := substr(output, 1, 4000);
       return output;
    end if;
  elsif p_ec3 is null then
    for r_subclasses in (select ec1, ec2, name, description from subclasses where ec1 = p_ec1 and ec2 = p_ec2) loop
       if r_subclasses.NAME        is not null then output := substr(output || r_subclasses.NAME          ||separator,1,4000); end if;
       if r_subclasses.DESCRIPTION is not null then output := substr(output || r_subclasses.DESCRIPTION   ||separator,1,4000); end if;
    end loop;
    if length(output) > 4000 then
       return ('ERROR !' );
    else
       output := substr(output, 1, 4000);
       return output;
    end if;
  else
    for r_subsubclasses in (select ec1, ec2, ec3, name, description from subsubclasses where ec1 = p_ec1 and ec2 = p_ec2 and ec3 = p_ec3) loop
       if r_subsubclasses.NAME        is not null then output := substr(output || r_subsubclasses.NAME          ||separator,1,4000); end if;
       if r_subsubclasses.DESCRIPTION is not null then output := substr(output || r_subsubclasses.DESCRIPTION   ||separator,1,4000); end if;
       if length(output) = 4000 then exit; end if;
    end loop;
    if length(output) > 4000 then
       return ('ERROR !' );
    else
       output := substr(output, 1, 4000);
       return output;
    end if;
  end if;
end;

/
--------------------------------------------------------
--  DDL for Function F_LINKS
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "F_LINKS" (p_enzyme_id enzymes.enzyme_id%type)
return varchar2
as
  separator char(1) := ',';
  output    varchar2(4000) :='';
begin
  for r_lx in (select url from links where enzyme_id = p_enzyme_id and display_name = 'CAS' ) loop
     output := output||r_lx.url||separator;
  end loop;
  output := substr (output,1,(length(output)-1)) ; -- get rid of last comma
  return output;
end;

/
--------------------------------------------------------
--  DDL for Function F_OTHER_NAMES
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "F_OTHER_NAMES" (p_enzyme_id enzymes.enzyme_id%type)
return varchar2
as
  separator char(1) := ',';
  output    varchar2(4000) :='';
begin
  for r_com_names in (select name from names where enzyme_id = p_enzyme_id and name_class='OTH') loop
     output := output||r_com_names.name||separator;
  end loop;

  output := substr (output,1,(length(output)-1)) ; -- get rid of last comma

  return output;
end;

/
--------------------------------------------------------
--  DDL for Function F_OVERALL_REACTION_ID
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "F_OVERALL_REACTION_ID" (
  complex_id intenz_reactions.reaction_id%type
) return intenz_reactions.reaction_id%type
as
  the_id intenz_reactions.reaction_id%type;
begin
  select ir2.reaction_id into the_id
    from intenz_reactions ir1, intenz_reactions ir2
    where ir1.reaction_id = complex_id
    and exists (select 1 from complex_reactions where parent_id = ir1.reaction_id)
    and regexp_replace(ir1.fingerprint,'\|.*$') = ir2.fingerprint;
    return the_id;
	EXCEPTION
		when no_data_found then return null;
end;

/
--------------------------------------------------------
--  DDL for Function F_PUBDATA
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "F_PUBDATA" (p_enzyme_id enzymes.enzyme_id%type)
return varchar2
as
  separator char(1) := ';';
  output    varchar2(4000) :='';
begin
  for r_pub in (select pub.* from publications pub, citations cit where cit.enzyme_id = p_enzyme_id and cit.pub_id = pub.pub_id) loop
     if r_pub.PUB_ID       is not null then output := substr(output || ' PUB_ID= '      || r_pub.PUB_ID       ||separator,1,4000); end if;
     if r_pub.MEDLINE_ID   is not null then output := substr(output || ' MEDLINE_ID= '  || r_pub.MEDLINE_ID   ||separator,1,4000); end if;
     if r_pub.PUBMED_ID    is not null then output := substr(output || ' PUBMED_ID= '   || r_pub.PUBMED_ID    ||separator,1,4000); end if;
     if r_pub.PUB_TYPE     is not null then output := substr(output || ' PUB_TYPE= '    || r_pub.PUB_TYPE     ||separator,1,4000); end if;
     if r_pub.AUTHOR       is not null then output := substr(output || ' AUTHOR= '      || r_pub.AUTHOR       ||separator,1,4000); end if;
     if r_pub.PUB_YEAR     is not null then output := substr(output || ' PUB_YEAR= '    || r_pub.PUB_YEAR     ||separator,1,4000); end if;
     if r_pub.TITLE        is not null then output := substr(output || ' TITLE= '       || r_pub.TITLE        ||separator,1,4000); end if;
     if r_pub.JOURNAL_BOOK is not null then output := substr(output || ' JOURNAL_BOOK= '|| r_pub.JOURNAL_BOOK ||separator,1,4000); end if;
     if r_pub.VOLUME       is not null then output := substr(output || ' VOLUME= '      || r_pub.VOLUME       ||separator,1,4000); end if;
     if r_pub.FIRST_PAGE   is not null then output := substr(output || ' FIRST_PAGE= '  || r_pub.FIRST_PAGE   ||separator,1,4000); end if;
     if r_pub.LAST_PAGE    is not null then output := substr(output || ' LAST_PAGE= '   || r_pub.LAST_PAGE    ||separator,1,4000); end if;
     if r_pub.EDITION      is not null then output := substr(output || ' EDITION= '     || r_pub.EDITION      ||separator,1,4000); end if;
     if r_pub.EDITOR       is not null then output := substr(output || ' EDITOR= '      || r_pub.EDITOR       ||separator,1,4000); end if;
     if r_pub.PUB_COMPANY  is not null then output := substr(output || ' PUB_COMPANY= ' || r_pub.PUB_COMPANY  ||separator,1,4000); end if;
     if r_pub.PUB_PLACE    is not null then output := substr(output || ' PUB_PLACE= '   || r_pub.PUB_PLACE    ||separator,1,4000); end if;
     if r_pub.URL          is not null then output := substr(output || ' URL = '        || r_pub.URL                     ,1,4000);  end if;
     if length(output) = 4000 then exit; end if;
  end loop;
  return output;
end;

/
--------------------------------------------------------
--  DDL for Function F_QUAD2STRING
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "F_QUAD2STRING" (
  ec1 IN NUMBER DEFAULT NULL,
  ec2 IN NUMBER DEFAULT NULL,
  ec3 IN NUMBER DEFAULT NULL,
  ec4 IN NUMBER DEFAULT NULL)
RETURN CHAR
IS
  result VARCHAR2(255) := '';
BEGIN
  IF ec1 IS NOT NULL THEN
    result := TO_CHAR(ec1);
    IF ec2 IS NOT NULL THEN
      result := result || '.' || TO_CHAR(ec2);
      IF ec3 IS NOT NULL THEN
        result := result || '.' || TO_CHAR(ec3);
        IF ec4 IS NOT NULL THEN
          result := result || '.' || TO_CHAR(ec4);
        END IF;
      END IF;
    END IF;
  END IF;
  RETURN result;
END f_quad2string;

/

  GRANT EXECUTE ON "F_QUAD2STRING" TO "ENZYME_COMMITTEE";
 
  GRANT EXECUTE ON "F_QUAD2STRING" TO "ENZYME_CURATOR";
 
  GRANT EXECUTE ON "F_QUAD2STRING" TO "ENZYME_PRODUCTION";
 
  GRANT EXECUTE ON "F_QUAD2STRING" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Function F_REACTION
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "F_REACTION" (p_enzyme_id enzymes.enzyme_id%type)
return varchar2
as
  separator char(1) := ',';
  output    varchar2(4000) :='';
begin
  for r_reac in (select equation from reactions where enzyme_id = p_enzyme_id ) loop
     output := output||r_reac.equation||separator;
  end loop;
  output := substr (output,1,(length(output)-1)) ; -- get rid of last comma
  return output;
end;

/
--------------------------------------------------------
--  DDL for Function F_REACTION_DIR_ID
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "F_REACTION_DIR_ID" (
    anId in intenz_reactions.reaction_id%type,
    aDir in intenz_reactions.direction%type
    ) return NUMBER as
    dirId intenz_reactions.reaction_id%type;
begin
    select reaction_id
        into dirId
        from intenz_reactions
        where un_reaction = f_rhea_family_id(anId)
        and direction = adir;
    return dirId;
end f_reaction_dir_id;

/
--------------------------------------------------------
--  DDL for Function F_RHEA_FAMILY_ID
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "F_RHEA_FAMILY_ID" 
( r_id IN intenz_reactions.reaction_id%type
) RETURN NUMBER AS
  family_id intenz_reactions.reaction_id%type;
BEGIN
  select case
      when un_reaction is null then reaction_id
      else un_reaction
      end
  into family_id
  from intenz_reactions
  where reaction_id = r_id;
  RETURN family_id;
END F_RHEA_FAMILY_ID;

/

  GRANT EXECUTE ON "F_RHEA_FAMILY_ID" TO "ENZYME_COMMITTEE";
 
  GRANT EXECUTE ON "F_RHEA_FAMILY_ID" TO "ENZYME_CURATOR";
 
  GRANT EXECUTE ON "F_RHEA_FAMILY_ID" TO "ENZYME_PRODUCTION";
 
  GRANT EXECUTE ON "F_RHEA_FAMILY_ID" TO "ENZYME_SELECT";
--------------------------------------------------------
--  DDL for Function F_XML_DISPLAY_SP_CODE
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "F_XML_DISPLAY_SP_CODE" (p_name IN names.name%type)
RETURN VARCHAR2
DETERMINISTIC
AS
BEGIN
    RETURN CHEBI_DEV10.xml_display_sp_code ('/transport/downloads/special_characters/', 'specialCharacters.xml', p_name);
END;

/

  GRANT EXECUTE ON "F_XML_DISPLAY_SP_CODE" TO "ENZYME_SELECT";
 
  GRANT EXECUTE ON "F_XML_DISPLAY_SP_CODE" TO "INTERPRO";
--------------------------------------------------------
--  DDL for Package AUDITPACKAGE
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "AUDITPACKAGE" AS
  osuser    varchar2(30);
  remark    VARCHAR2(4000);

  /* set session wide remark for all audit actions */
  PROCEDURE setremark (s IN VARCHAR2);

  /* shortcut for procedure setremark */
  PROCEDURE put       (s IN VARCHAR2);

  /* reset any remark to null */
  PROCEDURE clrremark;

  /* shortcut for clrremark */
  procedure clr;
  
  procedure setosuser(s IN VARCHAR2);

end auditpackage;

/

  GRANT EXECUTE ON "AUDITPACKAGE" TO "ENZYME_COMMITTEE";
 
  GRANT EXECUTE ON "AUDITPACKAGE" TO "ENZYME_CURATOR";
 
  GRANT EXECUTE ON "AUDITPACKAGE" TO "ENZYME_PRODUCTION";
--------------------------------------------------------
--  DDL for Package EVENT
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "EVENT" 
AS
  /* transit_class value for created enzymes */
  const_create      CONSTANT future_events.event_class%type := 'NEW';

  /* transit_class value for modified enzymes */
  const_modify      CONSTANT future_events.event_class%type := 'MOD';

  /* event_class value for enzymes to be transferred */
  const_transfer    CONSTANT future_events.event_class%type := 'TRA';

  /* event_class value for enzymes to be deleted */
  const_delete      CONSTANT future_events.event_class%type := 'DEL';



  /*------------------------------------ INTERFACE ------------------------------------*/

  /* TIMER PROCEDURE INTERFACES */

  /*
    Start a timeout for a certain enzyme.

    Usage:
      exec enzyme.event.p_start_timeout (<timeout_id>, <enzyme_id>);
  */
  PROCEDURE p_start_timeout (
    the_timeout_id IN timeouts.timeout_id%type,
    the_enzyme_id  IN enzymes.enzyme_id%type
  );

  /*
    Restart a timeout for a certain enzyme.

    Usage:
      exec enzyme.event.p_restart_timeout (<timeout_id>);
  */
  PROCEDURE p_restart_timeout (
    the_timeout_id IN timeouts.timeout_id%type
  );

  /*
    Stop a timeout for a certain enzyme.

    Usage:
      exec enzyme.event.p_stop_timeout (<timeout_id>);
  */
  PROCEDURE p_stop_timeout (
    the_timeout_id IN timeouts.timeout_id%type
  );


  /* FUTURE_GRAPH PROCEDURES INTERFACES */

  /*
    Notify the future_history table that a new enzyme has been suggested.
    Usage:
      exec enzyme.event.p_insert_future_creation (<enzyme_id>);
    Optional parameters:
      the_event_year: date of creation
  */
  PROCEDURE p_insert_future_creation (
    the_enzyme_id    IN enzymes.enzyme_id%type,
    the_event_year   IN date DEFAULT SYSDATE
  );

  /*
    Notify the future_history table that a new enzyme's status has been updated.
    Usage:
      exec enzyme.event.p_update_future_creation (<enzyme_id>);
  */
  PROCEDURE p_update_future_creation (
    the_group_id       IN future_events.group_id%type,
    the_event_id       IN future_events.event_id%type,
    the_new_status     IN future_events.status%type
  );

  /*
    Notify the future_history table that an enzyme has been modified.
    Usage:
      exec enzyme.event.p_insert_future_modification (<from_enzyme_id>, <to_enzyme_id>);
    Optional parameters:
      the_event_year: date of transition
      the_status    : necessary for intial update only
  */
  PROCEDURE p_insert_future_modification (
    the_before_id    IN enzymes.enzyme_id%type,
    the_after_id     IN enzymes.enzyme_id%type,
    the_event_year   IN date DEFAULT SYSDATE,
    the_status       IN future_events.status%type DEFAULT 'SU'
  );

  /*
    Notify the future_history table that a modified enzyme's status has been updated.
    Usage:
      exec enzyme.event.p_update_future_modification (<group_id>, <event_id>, <new_status>);
  */
  PROCEDURE p_update_future_modification (
    the_group_id       IN future_events.group_id%type,
    the_event_id       IN future_events.event_id%type,
    the_new_status     IN future_events.status%type
  );

  /*
    Notify the future_history table that an enzyme is inofficially transferred.
    Usage:
      exec enzyme.event.p_insert_future_transfer (<from_enzyme_id>, <to_enzyme_id>);
    Optional parameters:
      the_event_year: date of transition
      the_event_note: optional note about the transition
      the_status    : necessary for intial update only
  */
  PROCEDURE p_insert_future_transfer (
    the_before_id    IN enzymes.enzyme_id%type,
    the_after_id     IN enzymes.enzyme_id%type,
    the_event_year   IN date DEFAULT SYSDATE,
    the_event_note   IN future_events.event_note%type DEFAULT NULL,
    the_status       IN future_events.status%type DEFAULT 'SU'
  );

  /*
    Updates a transfer event. In case of an approval all necessary steps of updating the history_events table will be performed.
    Usage:
      exec enzyme.event.p_update_future_transfer(<group_id>, <event_id>, <new_status>, <new_note>);
  */
  PROCEDURE p_update_future_transfer (
    the_group_id       IN future_events.group_id%type,
    the_event_id       IN future_events.event_id%type,
    the_new_status     IN future_events.status%type,
    the_new_note       IN future_events.event_note%type,
    the_history_line   IN enzymes.history%type
  );


  /*
    Notify the future_history table that an enzyme is inofficially deleted.
    Usage:
      exec enzyme.event.p_insert_future_deletion (<enzyme_id>, <to_enzyme_id>);
    Optional parameters:
      the_event_year: date of deletion
      the_event_note: optional note about the deletion
      the_status    : necessary for intial update only
  */
  PROCEDURE p_insert_future_deletion (
    the_before_id    IN enzymes.enzyme_id%type,
    the_after_id     IN enzymes.enzyme_id%type,
    the_event_year   IN date DEFAULT SYSDATE,
    the_event_note   IN future_events.event_note%type DEFAULT NULL,
    the_status       IN future_events.status%type DEFAULT 'SU'
  );

  /*
    Updates a deletion event. In case of an approval all necessary steps of updating the history_events table will be performed.
    Usage:
      exec enzyme.event.p_update_future_deletion(<group_id>, <event_id>, <new_status>, <new_note>);
  */
  PROCEDURE p_update_future_deletion (
    the_group_id       IN future_events.group_id%type,
    the_event_id       IN future_events.event_id%type,
    the_new_status     IN future_events.status%type,
    the_new_note       IN future_events.event_note%type
  );

END event;

/

  GRANT EXECUTE ON "EVENT" TO "ENZYME_COMMITTEE";
 
  GRANT EXECUTE ON "EVENT" TO "ENZYME_CURATOR";
 
  GRANT EXECUTE ON "EVENT" TO "ENZYME_PRODUCTION";
--------------------------------------------------------
--  DDL for Package Body AUDITPACKAGE
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "AUDITPACKAGE" AS

  PROCEDURE setremark (s IN VARCHAR2) IS
  BEGIN
    remark := s;
    DBMS_APPLICATION_INFO.SET_ACTION(remark);
  END setremark;

  PROCEDURE put (s IN VARCHAR2) IS
  BEGIN
    setremark(s);
  END put;

  PROCEDURE clrremark IS
  BEGIN
    setremark(NULL);
  END clrremark;

  PROCEDURE clr IS
  BEGIN
    clrremark;
  END clr;
  
  procedure setosuser(s IN varchar2) is
  begin
    osuser := s;
  END setosuser;

--BEGIN
--  SELECT MAX(osuser) INTO osuser
--    FROM V$SESSION
--   WHERE audsid = userenv('sessionid');
END auditpackage;

/

  GRANT EXECUTE ON "AUDITPACKAGE" TO "ENZYME_COMMITTEE";
 
  GRANT EXECUTE ON "AUDITPACKAGE" TO "ENZYME_CURATOR";
 
  GRANT EXECUTE ON "AUDITPACKAGE" TO "ENZYME_PRODUCTION";
--------------------------------------------------------
--  DDL for Package Body EVENT
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "EVENT" 
AS

  /* TIMER PROCEDURES BODIES */

  PROCEDURE p_start_timeout (
    the_timeout_id IN timeouts.timeout_id%type,
    the_enzyme_id  IN enzymes.enzyme_id%type
    )
  IS
  BEGIN
    INSERT INTO timeouts (timeout_id, enzyme_id, start_date, due_date)
      VALUES (the_timeout_id, the_enzyme_id, sysdate, add_months(sysdate, 2));
  END;

  /* Restart the timeout for a certain enzyme */
  PROCEDURE p_restart_timeout (
    the_timeout_id IN timeouts.timeout_id%type
    )
  IS
  BEGIN
    UPDATE timeouts
       SET start_date = sysdate,
           due_date   = add_months(sysdate,2)
     WHERE timeout_id = the_timeout_id;
  END;

  /* Stop a timeout for a certain enzyme */
  PROCEDURE p_stop_timeout (
    the_timeout_id IN timeouts.timeout_id%type
    )
  IS
  BEGIN
    DELETE
      FROM timeouts
     WHERE timeout_id = the_timeout_id;
  END;


  /* FUTURE_GRAPH PROCEDURES BODIES */

  PROCEDURE p_insert_future_creation (
    the_enzyme_id    IN enzymes.enzyme_id%type,
    the_event_year   IN date DEFAULT SYSDATE
    )
  IS
    future_event_group_id   NUMBER(7);
    future_event_id         NUMBER(7);
    future_event_timeout_id NUMBER(7);
  BEGIN
    SELECT enzyme.s_future_group_id.nextval INTO future_event_group_id FROM DUAL;
    SELECT enzyme.s_future_event_id.nextval INTO future_event_id FROM DUAL;
    SELECT enzyme.s_timeout_id.nextval INTO future_event_timeout_id FROM DUAL;

    p_start_timeout(future_event_timeout_id, the_enzyme_id);

    INSERT INTO future_events(group_id, event_id, after_id, event_year, event_class, status, timeout_id)
      VALUES (future_event_group_id, future_event_id, the_enzyme_id, the_event_year, const_create, 'SU', future_event_timeout_id);
  END p_insert_future_creation;

  PROCEDURE p_insert_future_modification (
    the_before_id    IN enzymes.enzyme_id%type,
    the_after_id     IN enzymes.enzyme_id%type,
    the_event_year   IN date DEFAULT SYSDATE,
    the_status       IN future_events.status%type DEFAULT 'SU'
    )
  IS
    future_event_group_id   NUMBER(7);
    future_event_id         NUMBER(7);
    future_event_timeout_id NUMBER(7);
  BEGIN
    SELECT enzyme.s_future_group_id.nextval INTO future_event_group_id FROM DUAL;
    SELECT enzyme.s_future_event_id.nextval INTO future_event_id FROM DUAL;
    SELECT enzyme.s_timeout_id.nextval INTO future_event_timeout_id FROM DUAL;

    p_start_timeout(future_event_timeout_id, the_after_id);

    INSERT INTO future_events(group_id, event_id, before_id, after_id, event_year, event_class, status, timeout_id)
      VALUES (future_event_group_id, future_event_id, the_before_id, the_after_id, the_event_year, const_modify, 'SU', future_event_timeout_id);
  END p_insert_future_modification;

  PROCEDURE p_insert_future_transfer (
    the_before_id    IN enzymes.enzyme_id%type,
    the_after_id     IN enzymes.enzyme_id%type,
    the_event_year   IN date DEFAULT SYSDATE,
    the_event_note   IN future_events.event_note%type DEFAULT NULL,
    the_status       IN future_events.status%type DEFAULT 'SU'
    )
  IS
    future_event_group_id   NUMBER(7);
    future_event_id         NUMBER(7);
    future_event_timeout_id NUMBER(7);
  BEGIN
    SELECT enzyme.s_future_group_id.nextval INTO future_event_group_id FROM DUAL;
    SELECT enzyme.s_future_event_id.nextval INTO future_event_id FROM DUAL;
    SELECT enzyme.s_timeout_id.nextval INTO future_event_timeout_id FROM DUAL;

    p_start_timeout(future_event_timeout_id, the_after_id);

    INSERT INTO future_events(group_id, event_id, before_id, after_id, event_year, event_note, event_class, status, timeout_id)
      VALUES (future_event_group_id, future_event_id, the_before_id, the_after_id, the_event_year, the_event_note, const_transfer, the_status, future_event_timeout_id);
  END p_insert_future_transfer;

  PROCEDURE p_insert_future_deletion (
    the_before_id    IN enzymes.enzyme_id%type,
    the_after_id     IN enzymes.enzyme_id%type,
    the_event_year   IN date DEFAULT SYSDATE,
    the_event_note   IN future_events.event_note%type DEFAULT NULL,
    the_status       IN future_events.status%type DEFAULT 'SU'
    )
  IS
    future_event_group_id   NUMBER(7);
    future_event_id         NUMBER(7);
    future_event_timeout_id NUMBER(7);
  BEGIN
    SELECT enzyme.s_future_group_id.nextval INTO future_event_group_id FROM DUAL;
    SELECT enzyme.s_future_event_id.nextval INTO future_event_id FROM DUAL;
    SELECT enzyme.s_timeout_id.nextval INTO future_event_timeout_id FROM DUAL;

    p_start_timeout(future_event_timeout_id, the_after_id);

    INSERT INTO future_events(group_id, event_id, before_id, after_id, event_year, event_note, event_class, status, timeout_id)
      VALUES (future_event_group_id, future_event_id, the_before_id, the_after_id, the_event_year, the_event_note, const_delete, the_status, future_event_timeout_id);
  END p_insert_future_deletion;

  PROCEDURE p_update_future_creation (
    the_group_id       IN future_events.group_id%type,
    the_event_id       IN future_events.event_id%type,
    the_new_status     IN future_events.status%type
    )
  IS
    history_event_group_id    NUMBER(7);
    history_event_id          NUMBER(7);
    history_event_before_id   NUMBER(7);
    history_event_after_id    NUMBER(7);
    history_event_year        DATE;
    history_event_note        VARCHAR2(2000);
    history_event_class       VARCHAR2(20);
    future_event_timeout_id   NUMBER(7);
  BEGIN

    IF the_new_status = 'OK' THEN

      /* Get ids for the history event. */
      SELECT enzyme.s_history_group_id.nextval INTO history_event_group_id FROM DUAL;
      SELECT enzyme.s_history_event_id.nextval INTO history_event_id FROM DUAL;

      SELECT before_id, after_id, event_year, event_note, event_class, timeout_id
        INTO history_event_before_id, history_event_after_id, history_event_year, history_event_note, history_event_class, future_event_timeout_id
        FROM enzyme.future_events
        WHERE group_id = the_group_id AND event_id = the_event_id;

      INSERT INTO enzyme.history_events(group_id, event_id, after_id, event_year, event_note, event_class)
        VALUES(history_event_group_id, history_event_id, history_event_after_id, history_event_year, history_event_note, history_event_class);

      UPDATE enzyme.enzymes SET status = the_new_status, active = 'Y' WHERE enzyme_id = history_event_after_id;

      DELETE FROM enzyme.future_events WHERE group_id = the_group_id AND event_id = the_event_id;

      p_stop_timeout(future_event_timeout_id);

    ELSE

      UPDATE enzyme.future_events SET status = the_new_status
        WHERE group_id = the_group_id AND event_id = the_event_id;

      SELECT after_id, timeout_id
        INTO history_event_after_id, future_event_timeout_id
        FROM enzyme.future_events
        WHERE group_id = the_group_id AND event_id = the_event_id;

      UPDATE enzyme.enzymes SET status = the_new_status
        WHERE enzyme_id = history_event_after_id;

      IF the_new_status = 'PR' THEN
        p_restart_timeout(future_event_timeout_id);
      END IF;

    END IF;

  END p_update_future_creation;

  PROCEDURE p_update_future_modification (
    the_group_id       IN future_events.group_id%type,
    the_event_id       IN future_events.event_id%type,
    the_new_status     IN future_events.status%type
    )
  IS
    history_event_group_id    NUMBER(7);
    history_event_id          NUMBER(7);
    history_event_before_id   NUMBER(7);
    history_event_after_id    NUMBER(7);
    history_event_year        DATE;
    history_event_note        VARCHAR2(2000);
    history_event_class       VARCHAR2(20);
    future_event_timeout_id   NUMBER(7);
  BEGIN

    IF the_new_status = 'OK' THEN

      SELECT before_id, after_id, event_year, event_note, event_class, timeout_id
        INTO history_event_before_id, history_event_after_id, history_event_year, history_event_note, history_event_class, future_event_timeout_id
        FROM enzyme.future_events
        WHERE group_id = the_group_id AND event_id = the_event_id;

      /* Get ids for the history event. */
      SELECT enzyme.s_history_group_id.nextval INTO history_event_group_id FROM DUAL;
      SELECT enzyme.s_history_event_id.nextval INTO history_event_id FROM DUAL;

      INSERT INTO enzyme.history_events(group_id, event_id, before_id, after_id, event_year, event_note, event_class)
        VALUES(history_event_group_id, history_event_id, history_event_before_id, history_event_after_id, history_event_year, history_event_note, history_event_class);

      /* Get ids for the history event. */
      SELECT enzyme.s_history_group_id.nextval INTO history_event_group_id FROM DUAL;
      SELECT enzyme.s_history_event_id.nextval INTO history_event_id FROM DUAL;

      INSERT INTO enzyme.history_events(group_id, event_id, after_id, event_year, event_class)
        VALUES(history_event_group_id, history_event_id, history_event_after_id, history_event_year, 'NEW');

      UPDATE enzyme.enzymes SET status = the_new_status, active = 'Y' WHERE enzyme_id = history_event_after_id;

      UPDATE enzyme.enzymes SET active = 'N' WHERE enzyme_id = history_event_before_id;

      DELETE FROM enzyme.future_events WHERE group_id = the_group_id AND event_id = the_event_id;

      p_stop_timeout(future_event_timeout_id);

    ELSE

      UPDATE enzyme.future_events SET status = the_new_status
        WHERE group_id = the_group_id AND event_id = the_event_id;

      SELECT after_id, timeout_id
        INTO history_event_after_id, future_event_timeout_id
        FROM enzyme.future_events
        WHERE group_id = the_group_id AND event_id = the_event_id;

      UPDATE enzyme.enzymes SET status = the_new_status
        WHERE enzyme_id = history_event_after_id;

      IF the_new_status = 'PR' THEN
        p_restart_timeout(future_event_timeout_id);
      END IF;

    END IF;

  END p_update_future_modification;

  PROCEDURE p_update_future_transfer (
    the_group_id       IN future_events.group_id%type,
    the_event_id       IN future_events.event_id%type,
    the_new_status     IN future_events.status%type,
    the_new_note       IN future_events.event_note%type,
    the_history_line   IN enzymes.history%type
    )
  IS
    history_event_group_id    NUMBER(7);
    history_event_id          NUMBER(7);
    history_event_before_id   NUMBER(7);
    history_event_after_id    NUMBER(7);
    history_event_year        DATE;
    history_event_note        VARCHAR2(2000);
    history_event_class       VARCHAR2(20);
    future_event_timeout_id   NUMBER(7);
  BEGIN

    IF the_new_status = 'OK' THEN

      SELECT before_id, after_id, event_year, event_note, event_class, timeout_id
        INTO history_event_before_id, history_event_after_id, history_event_year, history_event_note, history_event_class, future_event_timeout_id
        FROM enzyme.future_events
        WHERE group_id = the_group_id AND event_id = the_event_id;

      /* Get ids for the history event. */
      SELECT enzyme.s_history_group_id.nextval INTO history_event_group_id FROM DUAL;
      SELECT enzyme.s_history_event_id.nextval INTO history_event_id FROM DUAL;

      /* Add event to old enzyme. */
      INSERT INTO enzyme.history_events(group_id, event_id, before_id, after_id, event_year, event_note, event_class)
        VALUES(history_event_group_id, history_event_id, history_event_before_id, history_event_after_id, history_event_year, the_new_note, history_event_class);

      /* Get ids for the history event. */
      SELECT enzyme.s_history_group_id.nextval INTO history_event_group_id FROM DUAL;
      SELECT enzyme.s_history_event_id.nextval INTO history_event_id FROM DUAL;

      /* Create new event for new enzymes. */
      INSERT INTO enzyme.history_events(group_id, event_id, after_id, event_year, event_class)
        VALUES(history_event_group_id, history_event_id, history_event_after_id, history_event_year, 'NEW');

      UPDATE enzyme.enzymes SET history = the_history_line, active = 'N' WHERE enzyme_id = history_event_before_id;

      UPDATE enzyme.enzymes SET status = the_new_status, active = 'Y' WHERE enzyme_id = history_event_after_id;

      DELETE FROM enzyme.future_events WHERE group_id = the_group_id AND event_id = the_event_id;

      p_stop_timeout(future_event_timeout_id);

    ELSE

      UPDATE enzyme.future_events SET status = the_new_status, event_note = the_new_note
        WHERE group_id = the_group_id AND event_id = the_event_id;

      SELECT after_id, timeout_id
        INTO history_event_after_id, future_event_timeout_id
        FROM enzyme.future_events
        WHERE group_id = the_group_id AND event_id = the_event_id;

      UPDATE enzyme.enzymes SET status = the_new_status
        WHERE enzyme_id = history_event_after_id;

      IF the_new_status = 'PR' THEN
        p_restart_timeout(future_event_timeout_id);
      END IF;

    END IF;

  END p_update_future_transfer;

  PROCEDURE p_update_future_deletion (
    the_group_id       IN future_events.group_id%type,
    the_event_id       IN future_events.event_id%type,
    the_new_status     IN future_events.status%type,
    the_new_note       IN future_events.event_note%type
    )
  IS
    history_event_group_id    NUMBER(7);
    history_event_id          NUMBER(7);
    history_event_before_id   NUMBER(7);
    history_event_after_id    NUMBER(7);
    history_event_year        DATE;
    history_event_note        VARCHAR2(2000);
    history_event_class       VARCHAR2(20);
    enzyme_history_line       VARCHAR2(1000);
    future_event_timeout_id   NUMBER(7);
  BEGIN

    IF the_new_status = 'OK' THEN

      /* Get ids for the history event. */
      SELECT enzyme.s_history_group_id.nextval INTO history_event_group_id FROM DUAL;
      SELECT enzyme.s_history_event_id.nextval INTO history_event_id FROM DUAL;

      SELECT before_id, after_id, event_year, event_note, event_class, timeout_id
        INTO history_event_before_id, history_event_after_id, history_event_year, history_event_note, history_event_class, future_event_timeout_id
        FROM enzyme.future_events
        WHERE group_id = the_group_id AND event_id = the_event_id;

      SELECT history INTO enzyme_history_line
        FROM enzyme.enzymes
        WHERE enzyme_id = history_event_after_id;

      INSERT INTO enzyme.history_events(group_id, event_id, before_id, event_year, event_note, event_class)
        VALUES(history_event_group_id, history_event_id, history_event_before_id, history_event_year, the_new_note, history_event_class);

      UPDATE enzyme.enzymes SET history = enzyme_history_line, active = 'N' WHERE enzyme_id = history_event_before_id;

      DELETE FROM enzyme.future_events WHERE group_id = the_group_id AND event_id = the_event_id;

      DELETE FROM enzyme.enzymes WHERE enzyme_id = history_event_after_id;

      p_stop_timeout(future_event_timeout_id);

    ELSE

      UPDATE enzyme.future_events SET status = the_new_status, event_note = the_new_note
        WHERE group_id = the_group_id AND event_id = the_event_id;

      SELECT after_id, timeout_id
        INTO history_event_after_id, future_event_timeout_id
        FROM enzyme.future_events
        WHERE group_id = the_group_id AND event_id = the_event_id;

      UPDATE enzyme.enzymes SET status = the_new_status
        WHERE enzyme_id = history_event_after_id;

      IF the_new_status = 'PR' THEN
        p_restart_timeout(future_event_timeout_id);
      END IF;

    END IF;

  END p_update_future_deletion;

END event;

/

  GRANT EXECUTE ON "EVENT" TO "ENZYME_COMMITTEE";
 
  GRANT EXECUTE ON "EVENT" TO "ENZYME_CURATOR";
 
  GRANT EXECUTE ON "EVENT" TO "ENZYME_PRODUCTION";
--------------------------------------------------------
--  DDL for Procedure P_CHANGE_STATUS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "P_CHANGE_STATUS" (
  the_enzyme_id IN enzymes.enzyme_id%type,
  the_status    IN enzymes.status%type
)
AS
  CURSOR lockcursor IS
  SELECT 1
    FROM enzymes e1,
         names n1,
         comments c1,
         xrefs x1,
         links l1
   WHERE e1.enzyme_id = the_enzyme_id
     AND e1.enzyme_id = n1.enzyme_id (+)
     AND e1.enzyme_id = c1.enzyme_id (+)
     AND e1.enzyme_id = x1.enzyme_id (+)
     AND e1.enzyme_id = l1.enzyme_id (+)
         FOR UPDATE;
  lockrec lockcursor%rowtype;
BEGIN
  /* check the_enzyme_id is not null */
  IF the_enzyme_id IS NULL THEN
    RAISE_APPLICATION_ERROR(-20000, 'the_enzyme_id is null');
  END IF;
  /* check the_status is not null */
  IF the_status IS NULL THEN
    RAISE_APPLICATION_ERROR(-20000, 'the_status is null');
  END IF;
  /* lock affected rows */
  OPEN lockcursor;
  /* check if the enzyme exists */
  DECLARE
    tmp_id enzymes.enzyme_id%type;
  BEGIN
    SELECT enzyme_id INTO tmp_id
      FROM enzymes
     WHERE enzyme_id = the_enzyme_id;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
    RAISE_APPLICATION_ERROR(-20000, 'the_enzyme_id not found');
  END;
  /* do table enzymes */
  UPDATE enzymes
     SET status = the_status
   WHERE enzyme_id = the_enzyme_id
     AND status != 'NO'
     AND status != the_status;
  /* do table names */
  UPDATE names
     SET status = the_status
   WHERE enzyme_id = the_enzyme_id
     AND status != 'NO'
     AND status != the_status;
  /* do table comments */
  UPDATE comments
     SET status = the_status
   WHERE enzyme_id = the_enzyme_id
     AND status != 'NO'
     AND status != the_status;
  /* do table xrefs */
  UPDATE xrefs
     SET status = the_status
   WHERE enzyme_id = the_enzyme_id
     AND status != 'NO'
     AND status != the_status;
  /* do table links */
  UPDATE links
     SET status = the_status
   WHERE enzyme_id = the_enzyme_id
     AND status != 'NO'
     AND status != the_status;
  CLOSE lockcursor;
END;

/
--------------------------------------------------------
--  DDL for Procedure P_CLONE_ENZYME
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "P_CLONE_ENZYME" (
  old_enzyme_id IN  enzymes.enzyme_id%type,
  new_enzyme_id OUT enzymes.enzyme_id%type,
  new_status    IN  enzymes.status%type DEFAULT 'SC',
  new_active    IN  enzymes.active%type DEFAULT 'N'
)
AS
  enz_a enzymes%rowtype;
BEGIN
  /* lock affected tables to be transaction save */
  LOCK TABLE enzymes   		IN EXCLUSIVE MODE;
  LOCK TABLE names     		IN EXCLUSIVE MODE;
  LOCK TABLE reactions_map	IN EXCLUSIVE MODE;
  LOCK TABLE comments  		IN EXCLUSIVE MODE;
  LOCK TABLE xrefs     		IN EXCLUSIVE MODE;
  LOCK TABLE links     		IN EXCLUSIVE MODE;

  /* get source enzyme */
  BEGIN
    SELECT *
      INTO enz_a
      FROM enzymes
     WHERE enzyme_id = old_enzyme_id;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
    RAISE_APPLICATION_ERROR(-20000, 'source enzyme not found');
  END;

  /* get new enzyme_id */
  SELECT s_enzyme_id.nextval
    INTO new_enzyme_id
    FROM DUAL;
  --DBMS_OUTPUT.PUT_LINE('got new enzyme_id='||new_enzyme_id);

  /*  clone enzyme */
  INSERT INTO enzymes
         (enzyme_id, status, active,
          ec1, ec2, ec3, ec4,
          history, note, source)
  VALUES (new_enzyme_id, new_status, new_active,
          enz_a.ec1, enz_a.ec2, enz_a.ec3, enz_a.ec4,
          enz_a.history, enz_a.note, enz_a.source);
  --DBMS_OUTPUT.PUT_LINE('Done enzymes');

  /* clone names*/
  INSERT INTO names (
         enzyme_id, status,
         name, name_class, warning, source, note, order_in, web_view)
  SELECT new_enzyme_id, new_status,
         name, name_class, warning, source, note, order_in, web_view
    FROM names
   WHERE enzyme_id = old_enzyme_id;
  --DBMS_OUTPUT.PUT_LINE('Done names');

  /* clone reactions mapping */
  INSERT INTO reactions_map (enzyme_id, reaction_id, web_view, order_in)
  SELECT new_enzyme_id, reaction_id, web_view, order_in
    FROM reactions_map
   WHERE enzyme_id = old_enzyme_id;

  /* clone abstract (free text) reactions */
  INSERT INTO reactions (enzyme_id, equation, order_in, status, source, web_view)
  SELECT new_enzyme_id, equation, order_in, status, source, web_view
    FROM reactions
   WHERE enzyme_id = old_enzyme_id;
  --DBMS_OUTPUT.PUT_LINE('Done reactions');

  /* clone comments */
  INSERT INTO comments (
         enzyme_id, status,
         comment_text, order_in, source, web_view)
  SELECT new_enzyme_id, new_status,
         comment_text, order_in, source, web_view
    FROM comments
   WHERE enzyme_id = old_enzyme_id;
  --DBMS_OUTPUT.PUT_LINE('Done comments');

  /* clone xrefs */
  INSERT INTO xrefs (
         enzyme_id, status,
         database_code, database_ac, name, source, data_comment, web_view)
  SELECT new_enzyme_id, new_status,
         database_code, database_ac, name, source, data_comment, web_view
    FROM xrefs
   WHERE enzyme_id = old_enzyme_id;
  --DBMS_OUTPUT.PUT_LINE('Done xrefs');

  /* clone links */
  INSERT INTO links (
         enzyme_id, status,
         url, display_name, source, data_comment, web_view)
  SELECT new_enzyme_id, new_status,
         url, display_name, source, data_comment, web_view
    FROM links
   WHERE enzyme_id = old_enzyme_id;
  --DBMS_OUTPUT.PUT_LINE('Done links');

  /* clone citations */
  INSERT INTO citations (
         enzyme_id, status,
         pub_id, order_in, source)
  SELECT new_enzyme_id, new_status,
         pub_id, order_in, source
    FROM citations
   WHERE enzyme_id = old_enzyme_id;
  --DBMS_OUTPUT.PUT_LINE('Done citations');

END;

/

  GRANT EXECUTE ON "P_CLONE_ENZYME" TO "ENZYME_COMMITTEE";
 
  GRANT EXECUTE ON "P_CLONE_ENZYME" TO "ENZYME_CURATOR";
 
  GRANT EXECUTE ON "P_CLONE_ENZYME" TO "ENZYME_PRODUCTION";
--------------------------------------------------------
--  DDL for Procedure P_INSERT_COMPOUND_DATA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "P_INSERT_COMPOUND_DATA" (
	new_id				IN OUT	compound_data.compound_id%type,
	new_name			IN		compound_data.name%type,
	new_formula			IN		compound_data.formula%type,
	new_charge			IN		compound_data.charge%type,
	new_source			IN		compound_data.source%type,
	new_accession		IN		compound_data.accession%type,
	new_child_accession	IN		compound_data.child_accession%type,
	new_published		IN		compound_data.published%type
)
AS
	existing_id		compound_data.compound_id%type;
BEGIN
	SELECT compound_id INTO existing_id
		FROM compound_data
		WHERE name = new_name OR (source = new_source AND accession = new_accession);
	IF existing_id IS NOT NULL THEN
		new_id := -existing_id;
	END IF;
	EXCEPTION
		WHEN NO_DATA_FOUND
			THEN
				IF new_id IS NULL THEN
				    SELECT s_compound_id.nextval INTO new_id FROM DUAL;
				END IF;
				INSERT INTO compound_data (compound_id, name, formula, charge, source, accession, child_accession, published)
				VALUES (new_id, new_name, new_formula, new_charge, new_source, new_accession, new_child_accession, new_published);
END;

/

  GRANT EXECUTE ON "P_INSERT_COMPOUND_DATA" TO "ENZYME_COMMITTEE";
 
  GRANT EXECUTE ON "P_INSERT_COMPOUND_DATA" TO "ENZYME_CURATOR";
 
  GRANT EXECUTE ON "P_INSERT_COMPOUND_DATA" TO "ENZYME_PRODUCTION";
--------------------------------------------------------
--  DDL for Procedure P_INSERT_REACTION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "P_INSERT_REACTION" 
  (
    new_id               IN OUT intenz_reactions.reaction_id%type,
    new_accession        IN intenz_reactions.intenz_accession%type,
    new_equation         IN intenz_reactions.equation%type,
    new_fp               IN intenz_reactions.fingerprint%type,
    new_status           IN intenz_reactions.status%type,
    new_source           IN intenz_reactions.source%type,
    new_qualifiers       IN intenz_reactions.qualifiers%type,
    new_data_comment     IN intenz_reactions.data_comment%type,
    new_reaction_comment IN intenz_reactions.reaction_comment%type,
    new_direction        IN intenz_reactions.direction%type,
    new_un_reaction      in intenz_reactions.un_reaction%type,
    new_iubmb            IN intenz_reactions.iubmb%type)
AS
  existing_id intenz_reactions.reaction_id%type;
BEGIN
   SELECT reaction_id
     INTO existing_id
     FROM intenz_reactions
    WHERE equation = new_equation
  AND fingerprint  = new_fp;
  IF existing_id  IS NOT NULL THEN
    new_id        := -existing_id;
  END IF;
EXCEPTION
WHEN NO_DATA_FOUND THEN
  IF new_id IS NULL THEN
     SELECT s_reaction_id.nextval INTO new_id FROM DUAL;
  END IF;
   INSERT
     INTO intenz_reactions
    (
      reaction_id     ,
      intenz_accession,
      equation        ,
      fingerprint     ,
      status          ,
      source          ,
      qualifiers      ,
      data_comment    ,
      reaction_comment,
      direction       ,
      un_reaction,
      iubmb
    )
    VALUES
    (
      new_id              ,
      new_accession       ,
      new_equation        ,
      new_fp              ,
      new_status          ,
      new_source          ,
      new_qualifiers      ,
      new_data_comment    ,
      new_reaction_comment,
      new_direction       ,
      new_un_reaction,
      new_iubmb
    );
END;

/
--------------------------------------------------------
--  DDL for Procedure P_MERGE_PUBLICATIONS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "P_MERGE_PUBLICATIONS" (
  the_pub_id_from IN publications.pub_id%type,
  the_pub_id_to   IN publications.pub_id%type
)
AS
  CURSOR cit_cur IS
  SELECT *
    FROM citations
   WHERE pub_id = the_pub_id_from
     FOR UPDATE OF pub_id;
  CURSOR lock_work IS
  SELECT 1
    FROM citations c,
         publications p
   WHERE c.pub_id = p.pub_id
     AND (p.pub_id = the_pub_id_from OR p.pub_id = the_pub_id_to)
    FOR UPDATE;
  cit_a cit_cur%ROWTYPE;      -- cursor record for old citations
  pub_a publications%ROWTYPE; -- local var for old publications
  pub_b publications%ROWTYPE; -- local var for new publications
  old_audit_remark VARCHAR2(200);
BEGIN
  /* check a != b */
  IF the_pub_id_from = the_pub_id_to THEN
    RAISE_APPLICATION_ERROR(-20000, 'Cant merge publication to itself');
  END IF;
  /* check a not null */
  IF the_pub_id_from IS NULL THEN
    RAISE_APPLICATION_ERROR(-20000, 'the_pub_id_from is null');
  END IF;
  /* check b not null */
  IF the_pub_id_to IS NULL THEN
    RAISE_APPLICATION_ERROR(-20000, 'the_pub_id_to is null');
  END IF;
  /* lock rows for a and b in citations and publications */
  OPEN lock_work;
  /* fetch pub a and b and check they exists*/
  BEGIN
    SELECT * INTO pub_a
      FROM publications
     WHERE pub_id = the_pub_id_from;
  EXCEPTION WHEN NO_DATA_FOUND THEN
    CLOSE lock_work;
    RAISE_APPLICATION_ERROR(-20000, 'the_pub_id_from doesnt exist');
  END;
  BEGIN
    SELECT * INTO pub_b
      FROM publications
     WHERE pub_id = the_pub_id_to;
  EXCEPTION WHEN NO_DATA_FOUND THEN
    CLOSE lock_work;
    RAISE_APPLICATION_ERROR(-20000, 'the_pub_id_to doesnt exist');
  END;
  /* set audit remark (and save old remark for restoring it later) */
  old_audit_remark := auditpackage.remark;
  auditpackage.setremark('merge publication ' || the_pub_id_from ||
    ' to ' || the_pub_id_to);
  /* change citations with the_pub_id_from to the_pub_id_to, if any */
  FOR cit_a IN cit_cur LOOP
    DBMS_OUTPUT.PUT_LINE('Changing citatation of enzyme_id='||cit_a.enzyme_id||
      ' from pub_id='||cit_a.pub_id||' to '||the_pub_id_to);
    UPDATE citations
       SET pub_id = the_pub_id_to
     WHERE CURRENT OF cit_cur;
  END LOOP;
  /* delete publication the_pub_id_from */
  DELETE
    FROM publications
   WHERE pub_id = the_pub_id_from;
  /* restore auditremark as it was before calling this procedure */
  auditpackage.setremark(old_audit_remark);
  /* close locking cursor, note: rows will be unlocked by next commit */
  CLOSE lock_work;
  /* final debug remark */
  DBMS_OUTPUT.PUT_LINE('publication '|| the_pub_id_from ||
    ' merged to ' || the_pub_id_to);
END;

/

  GRANT EXECUTE ON "P_MERGE_PUBLICATIONS" TO "ENZYME_CURATOR";
 
  GRANT EXECUTE ON "P_MERGE_PUBLICATIONS" TO "ENZYME_PRODUCTION";
--------------------------------------------------------
--  DDL for Procedure P_PRINT_PUBLICATION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "P_PRINT_PUBLICATION" (
  the_pub_id IN publications.pub_id%type
)
AS
  r publications%rowtype;
BEGIN
  -- fetch record
  SELECT * INTO r
    FROM publications
   WHERE pub_id = the_pub_id;
  -- RN line with pub_id
  DBMS_OUTPUT.PUT_LINE('RN   ['||r.pub_id||']');
  -- RX line with medline_id and pubmed_id
  IF (r.medline_id IS NOT NULL OR r.pubmed_id IS NOT NULL) THEN
    DBMS_OUTPUT.PUT( 'RX   ');
    IF r.medline_id IS NOT NULL THEN
      DBMS_OUTPUT.PUT('MEDLINE=' || r.medline_id || ';');
    END IF;
    IF r.pubmed_id IS NOT NULL THEN
      DBMS_OUTPUT.PUT('PubMed=' || r.pubmed_id || ';');
    END IF;
    DBMS_OUTPUT.PUT_LINE('');
  END IF;
  -- RA line with author
  DBMS_OUTPUT.PUT_LINE('RA   ' || r.author || ';');
  -- RT line with title
  DBMS_OUTPUT.PUT_LINE('RT   "' || r.title || '";');
  -- RL line
  DBMS_OUTPUT.PUT('RL   ');
  IF r.pub_type = 'J' THEN
    DBMS_OUTPUT.PUT(r.journal_book||' '||NVL(r.volume,'???')||':');
    DBMS_OUTPUT.PUT(NVL(r.first_page,'???')||'-'||NVL(r.last_page,'???'));
    DBMS_OUTPUT.PUT('('||r.pub_year||').');
  ELSE
    DBMS_OUTPUT.PUT('*** NYI pub_type '||r.pub_type);
  END IF;
  DBMS_OUTPUT.PUT_LINE('');
END p_print_publication;

/

  GRANT EXECUTE ON "P_PRINT_PUBLICATION" TO "ENZYME_CURATOR";
 
  GRANT EXECUTE ON "P_PRINT_PUBLICATION" TO "ENZYME_PRODUCTION";
--------------------------------------------------------
--  DDL for Procedure P_RESTART_TIMEOUT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "P_RESTART_TIMEOUT" (
  the_enzyme_id IN enzymes.enzyme_id%type
  )
AS
BEGIN
  UPDATE timeouts
     SET start_date = sysdate,
         due_date   = add_months(sysdate,2)
   WHERE enzyme_id = the_enzyme_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure P_START_TIMEOUT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "P_START_TIMEOUT" (
  the_enzyme_id IN enzymes.enzyme_id%type
  )
AS
BEGIN
  INSERT INTO timeouts (enzyme_id, start_date, due_date)
  VALUES (the_enzyme_id, sysdate, add_months(sysdate, 2));
END;

/
--------------------------------------------------------
--  DDL for Procedure P_STOP_TIMEOUT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "P_STOP_TIMEOUT" (
  the_enzyme_id IN enzymes.enzyme_id%type
  )
AS
BEGIN
  DELETE
    FROM timeouts
   WHERE enzyme_id = the_enzyme_id;
END;

/
--------------------------------------------------------
--  DDL for Procedure P_STRING2QUAD
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "P_STRING2QUAD" (
  ec IN CHAR,
  ec1 OUT NUMBER,
  ec2 OUT NUMBER,
  ec3 OUT NUMBER,
  ec4 OUT NUMBER)
IS
  pos INTEGER;
  s VARCHAR2(100) := ec; -- local working copy of ec string
  p VARCHAR2(10);
BEGIN
  s := trim(s);

  -- just to be graceful, ignore any 'EC ' prefix
  IF (SUBSTR(s, 1, 2) = 'EC') THEN
    s := SUBSTR(s, 3);
    s := TRIM(s);
    --DBMS_OUTPUT.PUT_LINE('s='||s);
  END IF;

  -- ec1 vulgo class
  pos := INSTR(s, '.', 1);
  IF pos=0 THEN
    IF s != '-' THEN ec1 := TO_NUMBER(s); END IF;
    RETURN;
  ELSE
    p := SUBSTR(s, 1, pos-1);  s := SUBSTR(s, pos+1);
    --DBMS_OUTPUT.PUT_LINE('s1='||p||',s='||s);
    IF p != '-' THEN ec1 := TO_NUMBER(p); END IF;
  END IF;

  -- ec2 vulgo subclass
  pos := INSTR(s, '.', 1);
  IF pos=0 THEN
    IF s != '-' THEN ec2 := TO_NUMBER(s); END IF;
    RETURN;
  ELSE
    p := SUBSTR(s, 1, pos-1);  s := SUBSTR(s, pos+1);
    --DBMS_OUTPUT.PUT_LINE('s2='||p||',s='||s);
    IF p != '-' THEN ec2 := TO_NUMBER(p); END IF;
  END IF;

  -- ec3 vulgo subsubclass
  pos := INSTR(s, '.', 1);
  IF pos=0 THEN
    IF s != '-' THEN ec3 := TO_NUMBER(s); END IF;
    RETURN;
  ELSE
    p := SUBSTR(s, 1, pos-1);  s := SUBSTR(s, pos+1);
    --DBMS_OUTPUT.PUT_LINE('s3='||p||',s='||s);
    IF p != '-' THEN ec3 := TO_NUMBER(p); END IF;
  END IF;

  -- ec4 vulgo forth number
  IF s != '-' THEN ec4 := TO_NUMBER(s); END IF;
END;

/

  GRANT EXECUTE ON "P_STRING2QUAD" TO "ENZYME_COMMITTEE";
 
  GRANT EXECUTE ON "P_STRING2QUAD" TO "ENZYME_CURATOR";
 
  GRANT EXECUTE ON "P_STRING2QUAD" TO "ENZYME_PRODUCTION";
 
  GRANT EXECUTE ON "P_STRING2QUAD" TO "ENZYME_SELECT";
