
-- =============================================
-- Author:		S TURNER @ PSFINANCIALS
-- Create date: 18 June 2019
-- Description:	Script to create system flags that will be used to either show or hide bank details on the supplier listing reports. 
-- One flag will be an Account userfield for Academy Ledger for location based reports (standard Reports\Supplier Listing
-- Another flag will be an Account into parameter ledger for global hook reports 					 
-- =============================================
-- Version:		EDU VERSION 6 BUILD 003.7
-- =============================================


-- Insert Account userfield for Academy Ledger for location based reports


IF (select count(ID) from M_USERFIELDS WHERE TITLE = 'Show Bank Details on Reports') = 0 
	BEGIN

	insert into M_USERFIELDS (TITLE,DATA_TYPE,KEYLIST,DESCRIPTION,LEDGER_ID) VALUES ('Show Bank Details on Reports',	6,	NULL,	'Show Bank Details on Supplier List Report', NULL)

	insert into M_LEDGERUSERFIELDS (LEDGER_ID,USERFIELD_ID,MANDATORY,USERFIELD_POSITION) Values ((select ID from M_LEDGER WHERE LEDGER = 'ACADEMY') , (select id from M_USERFIELDS where title = 'Show Bank Details on Reports'), 0 , 0 )
	
	insert into D_ACCOUNTUSERFIELDS
	select ID,(select ID from M_USERFIELDS where title = 'Show Bank Details on Reports'),'No' 
	from M_ACCOUNT WHERE LEDGER = 'ACADEMY' 
	
	SELECT 'Userfield Added' [Message] 

	END 
ELSE 
	BEGIN
	SELECT 'Userfield already exists' [Message] 
	END 



if (select count(id) from M_ACCOUNT where LEDGER = 'parameters' and ACCOUNT = 'Showbank') = 0

	BEGIN 

	insert into M_ACCOUNT (LEDGER,ACCOUNT,TITLE,TYPE,ALLOCATION,DETAILSTATUS,EXTERNALALLOC,ACCESS,COMMID,INPUTALLOWED,LEDGER_ID)
	values ('PARAMETERS','SHOWBANK','Show Bank Details in Gobal Hook Reports','Y',	0,	'O',	'N',	3,	0,	'Y',(select id from M_LEDGER where LEDGER ='PARAMETERS'))


--	Insert BankShow Account into parameter ledger for global hook reports

	insert into D_ACCOUNTUSERFIELDS (ACCOUNT_ID,USERFIELD_ID,USERFIELD_VALUE) 
	values ((select id FROM M_ACCOUNT where LEDGER = 'PARAMETERS' and ACCOUNT  = 'SHOWBANK'), (select id from M_USERFIELDS WHERE TITLE = 'Element Text'), 'No')
	
	SELECT 'SHOWBANK Account added to PARAMETERS Ledger' [Message] 
	
	END

ELSE 
	BEGIN 
	SELECT 'SHOWBANK Account already exists to PARAMETERS Ledger ' [Message] 
	END 