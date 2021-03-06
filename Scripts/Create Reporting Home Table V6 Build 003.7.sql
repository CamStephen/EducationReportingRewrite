-- =============================================
-- Author:		S TURNER @ PSFINANCIALS
-- Create date: 22 MAY 2015
-- Description:	RPT QRY TO CREATE THE REPORTING HOME TABLES
-- =============================================
-- Education Reporting Suite Version: Version 4 Build 003
-- =============================================
-- Modified by:			S TURNER @ PSFINANCIALS
-- Modification Date:	11 April 2016	
-- Modification:		Remove Budget Holder Master Report
--						Remove Budget Holder Period Select Report
--						Changed "Account Index Reporting" to be "Ledger Account Reporting"
--						Add Cost Centre Trend Report
--						Add Document History Report  
--						Add Directories Budget holder
--						Changed "Academy Dashboard" links to be "Dashboard Home"
--						Add Hub Management to Federation Home 
--						Add Hub Management Trend to Federation Home 
-- =============================================
-- Education Reporting Suite Version: Version 6 Build 001
-- =============================================
-- Modified by:			S TURNER @ PSFINANCIALS
-- Modification Date:	2 August 2016	
-- Modification:		Add New Purchase Order Discrepancies GRN to INV 
--						Add New Intra Company Transactions Report
--						Add New Federation Budget Holder Report
--						Add New Cash Flow Statement Report
-- =============================================
-- Education Reporting Suite Version: V6 Build 002
-- =============================================
-- Modified by:			S TURNER @ PSFINANCIALS
-- Modification Date:	16 November 2017	
-- Modification:		Add New KPI Annualised dashboard with Benchmark Report
--						Amended EFA Budget Forecast Return to be latest report 

-- Modification Date:	10 July 2018	
-- Modification:		Renamed all federation reports to trust
-- =============================================
-- Education Reporting Suite Version: V6 Build 003
-- =============================================
-- Modification Date:	8 March 2019	
-- Modification:		Added WorkFlow Reports
--						Added Account Audit Report
--						Added new Dashboard home Reports 	
--						Added Purchase Order Compliance Report
--						Removed apostrophe from GRNs titles
-- =============================================
-- Education Reporting Suite Version: V6 Build 003.5
-- =============================================
-- Modification Date:	29 April 2019	
-- Modification:		Amended EFA Budget Forecast Return Report 
--						Added EFA Budget Forecast Outurn Report 
-- =============================================
-- Education Reporting Suite Version: V6 Build 003.6
-- =============================================
-- Modification Date:	27 June 2019	
-- Modification:		Added Report Showing Why a Document is not Appearing on a Pay list
					--	Added New Management Accounts by Cost Centre Report  
					--	Added New Aged Debtors/Creditors Discrepancies Reports
					--	Added New Vat Calculation Checking Report
					--	Added New Standalone Supplier Listing Report
					--	Added New Chart of Accounts for Ledger Accounts 
					--	Added New Supplier Spend Report
					--	Added New Report to show purchase ledger Items without Attachments
					--	Added New Trial Balance by Period
					--	Added New Approval Report
					--	Added New User Security list 
-- =============================================
-- Education Reporting Suite Version: V6 Build 003.7
-- =============================================


/****** Object:  Table [dbo].[X_RPT_REPORT_GROUP]    Script Date: 01/13/2011 17:04:44 ******/
IF object_id('X_RPT_REPORT_GROUP') IS NOT NULL

	BEGIN
		DROP TABLE X_RPT_REPORT_GROUP
	

		CREATE TABLE [dbo].[X_RPT_REPORT_GROUP](
			[ID] [int] IDENTITY(1,1) NOT NULL,
			[GROUP_NAME] [nvarchar](50) NULL
		) ON [PRIMARY]

 	END

ELSE 
	BEGIN
		CREATE TABLE [dbo].[X_RPT_REPORT_GROUP](
			[ID] [int] IDENTITY(1,1) NOT NULL,
			[GROUP_NAME] [nvarchar](50) NULL
		) ON [PRIMARY]

	END
GO

/****** Object:  Table [dbo].[X_RPT_REPORTINGLIST]    Script Date: 01/13/2011 17:04:44 ******/

IF object_id('X_RPT_REPORTINGLIST') IS NOT NULL

	BEGIN
		DROP TABLE X_RPT_REPORTINGLIST
	
	

		CREATE TABLE [dbo].[X_RPT_REPORTINGLIST](
			[ID] [int] IDENTITY(1,1) NOT NULL,
			[GROUP_ID] [int] NULL,
			[REPORT_NAME] [nvarchar](max) NULL,
			[REPORT_DISPLAY_NAME] [nvarchar](max) NULL,
			[STANDARD_REPORT] [bit] NULL,
			[REPORT_PACK_VERSION] [nvarchar](50) NULL
		) ON [PRIMARY]

 	END
 
ELSE 

		CREATE TABLE [dbo].[X_RPT_REPORTINGLIST](
			[ID] [int] IDENTITY(1,1) NOT NULL,
			[GROUP_ID] [int] NULL,
			[REPORT_NAME] [nvarchar](max) NULL,
			[REPORT_DISPLAY_NAME] [nvarchar](max) NULL,
			[STANDARD_REPORT] [bit] NULL,
			[REPORT_PACK_VERSION] [nvarchar](50) NULL
		) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[X_RPT_REPORT_GROUP_STYLE]    Script Date: 06/08/2012 14:09:02 ******/

IF object_id('X_RPT_REPORT_GROUP_STYLE') IS NOT NULL

	BEGIN
		DROP TABLE X_RPT_REPORT_GROUP_STYLE
	
	

CREATE TABLE [dbo].[X_RPT_REPORT_GROUP_STYLE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GROUP_ID] [int] NULL,
	[GROUP_STYLE] [int] NULL,
	[GROUP_COLOUR] [varchar](10) NULL,
	[GROUP_TEXT_COLOUR] [varchar](10) NULL,
	[TEXT_COLOUR] [varchar](50) NULL,
	[BACKGROUND_COLOUR] [varchar](50) NULL
) ON [PRIMARY]

 	END
 
ELSE 

CREATE TABLE [dbo].[X_RPT_REPORT_GROUP_STYLE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GROUP_ID] [int] NULL,
	[GROUP_STYLE] [int] NULL,
	[GROUP_COLOUR] [varchar](10) NULL,
	[GROUP_TEXT_COLOUR] [varchar](10) NULL,
	[TEXT_COLOUR] [varchar](50) NULL,
	[BACKGROUND_COLOUR] [varchar](50) NULL
) ON [PRIMARY]

GO




/****** Object:  Table [dbo].[X_RPT_REPORT_GROUP]    Script Date: 01/23/2012 13:38:29 ******/

INSERT [dbo].[X_RPT_REPORT_GROUP] ([GROUP_NAME]) VALUES ( N'Management\Strategy Reporting')
INSERT [dbo].[X_RPT_REPORT_GROUP] ([GROUP_NAME]) VALUES ( N'Purchase Ordering')
INSERT [dbo].[X_RPT_REPORT_GROUP] ([GROUP_NAME]) VALUES ( N'Creditors\Debtors')
INSERT [dbo].[X_RPT_REPORT_GROUP] ([GROUP_NAME]) VALUES ( N'Ledger Account Reporting')
INSERT [dbo].[X_RPT_REPORT_GROUP] ([GROUP_NAME]) VALUES ( N'General Reports')
INSERT [dbo].[X_RPT_REPORT_GROUP] ([GROUP_NAME]) VALUES ( N'Account Index Reporting')
INSERT [dbo].[X_RPT_REPORT_GROUP] ([GROUP_NAME]) VALUES ( N'Nominal Reporting')
INSERT [dbo].[X_RPT_REPORT_GROUP] ([GROUP_NAME]) VALUES ( N'Budget Holder Reporting')
INSERT [dbo].[X_RPT_REPORT_GROUP] ([GROUP_NAME]) VALUES ( N'Budgeting')
INSERT [dbo].[X_RPT_REPORT_GROUP] ([GROUP_NAME]) VALUES ( N'Additional Reports')
INSERT [dbo].[X_RPT_REPORT_GROUP] ([GROUP_NAME]) VALUES ( N'User Guides')
INSERT [dbo].[X_RPT_REPORT_GROUP] ([GROUP_NAME]) VALUES ( N'Trust Management\Strategy Reporting')
INSERT [dbo].[X_RPT_REPORT_GROUP] ([GROUP_NAME]) VALUES ( N'Trust Purchase Ordering')
INSERT [dbo].[X_RPT_REPORT_GROUP] ([GROUP_NAME]) VALUES ( N'Trust General Reports')
INSERT [dbo].[X_RPT_REPORT_GROUP] ([GROUP_NAME]) VALUES ( N'Trust User Guides')
INSERT [dbo].[X_RPT_REPORT_GROUP] ([GROUP_NAME]) VALUES ( N'Additional Reports')
INSERT [dbo].[X_RPT_REPORT_GROUP] ([GROUP_NAME]) VALUES ( N'Dashboards')


/****** Object:  Table [dbo].[X_RPT_REPORTINGLIST]    Script Date: 01/23/2012 13:38:29 ******/


------ REPORT HOME LINKS -----------------

INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 1, N'Management Accounts', N'Management Accounts', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 1, N'CFR Report', N'CFR', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 1, N'SOFA IE Report', N'SoFA', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 1, N'Balance Sheet', N'Balance Sheet', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 2, N'Outstanding Purchase Orders By Supplier', N'Outstanding Purchase Orders by Supplier', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 2, N'Outstanding Purchase Orders By Document', N'Outstanding Purchase Orders by Document', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 2, N'Outstanding Goods Received Notes by Supplier', N'Outstanding GRNs by Supplier', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 2, N'Outstanding Goods Received Notes by Document', N'Outstanding GRNs by Document', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 2, N'Order Search by Description', N'Search by Description', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 2, N'Current Commitments', N'Current Commitments', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 2, N'Unauthorised Purchase Orders', N'Unauthorised Purchase Orders', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 3, N'Aged Creditors', N'Aged Creditors', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 3, N'Aged Debtors', N'Aged Debtors', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 4, N'Account Index Analysis', N'Account Index Analysis', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 4, N'Account Index IE Report', N'Account Index Income / Expenditure', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 5, N'Document Enquiry Report', N'Document Enquiry', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 5, N'Chart of Accounts', N'Chart of Accounts', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 5, N'Paylist Listing', N'Paylist', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 5, N'Sales Statement', N'Sales Statement', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 4, N'Account summary Report', N'Account Summary', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 4, N'Account Summary with Nominal Details Report', N'Account Summary with Nominal Details', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 4, N'Ledger Income Expenditure Summary', N'Ledger Income / Expenditure Summary', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 7, N'Nominal Summary Report', N'Nominal Summary', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 7, N'Nominal Transactions Report', N'Nominal Transactions', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 7, N'Nominal Transactions Detailed Report', N'Nominal Transactions (Detailed)', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 8, N'../Budget Holders/Budget Holder', N'Budget Holder', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 8, N'../Budget Holders/Budget Holder (Document Detailed)', N'Budget Holder (Document Detailed)', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 8, N'../Budget Holders/Budget Holder (Nominal Summary)', N'Budget Holder (Nominal Summary)', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 8, N'../Budget Holders/Nominal Budget Holder', N'Nominal Budget Holder', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 5, N'Budget by Nominal', N'Budget by Nominals', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 5, N'Budget by Account', N'Budget by Account', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 5, N'Budget Report Matrix', N'Budget Matrix', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 4, N'Fund Analysis', N'Fund Analysis', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 3, N'Creditors List', N'Creditors List ', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 3, N'Debtors List', N'Debtors List ', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 10, N'../VAT Reports/VAT 100', N'VAT 100 ', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 10, N'../VAT Reports/VAT 126', N'VAT 126 ', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 10, N'../Trust Suite/TrustHome', N'Trust Reporting Suite', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 10, N'../Academy Dashboard/Dashboard Home', N'Dashboard Home', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES (10, N'../Security Reports/Security Dashboard', N'Security Reports Dashboard', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 2, N'Unauthorised Requisitions', N'Unauthorised Requisitions', 1, N'Edu Version 6 Build 003.7')

---- Trust SUITE HOME LINKS --------

INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 12, N'Trust Balance Sheet', N'Balance Sheet', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 12, N'Trust CFR Report', N'CFR', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 12, N'Trust Management Accounts', N'Management Accounts', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 12, N'Trust SOFA IE', N'SoFA', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 13, N'Trust Current Commitments', N'Current Commitments by Nominal', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 13, N'Trust Unauthorised Purchase Orders', N'Unauthorised Purchase Orders', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 13, N'Trust Outstanding GRN''S', N'Outstanding GRNs', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 13, N'Trust Outstanding Purchase Orders', N' Outstanding Purchase Orders', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 14, N'Trust Budget Matrix', N'Budget Matrix', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 15, N'Reconciling Trust reports with PSF.pdf', N'Matching Reports with Accounting', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 16, N'../Standard Reports/ReportHome', N'Academy Reporting Suite', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 16, N'../Academy Dashboard/Dashboard Home', N'Dashboard Home', 1, N'Edu Version 6 Build 003.7')


---	Reporting Suite Version 4 Reports -------
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 8, N'../Budget Holders/Budget Holder Statement', N'Budget Holder Statement', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 8, N'../Budget Holders/Budget Holder (Transactions Summary)', N'Budget Holder (Nominal Summary Transactions)', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 1, N'Management Accounts Trend', N'Management Accounts Trend', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 1, N'EFA Benchmarking Return', N'EFA Benchmarking Return', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 10, N'Bank Reconciliation Report', N'Bank Reconciliation Report', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 2, N'Purchase Order Invoice Discrepancies', N'Purchase Order Invoice Discrepancies (INV to POIN)', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 12, N'KPI Dashboard', N'KPI Dashboard', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES (10, N'../Bespoke Reports/Bespoke Dashboard', N'Bespoke Reports Dashboard', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 1, N'Cashflow Forecast', N'Cash Flow Forecast', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 10, N'Counterparty Supplier Report', N'Counterparty Supplier Report', 1, N'Edu Version 6 Build 003.7')

---	Reporting Suite Version 4-Build 002 Reports -------
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 5, N'Paylist Listing (discount)', N'Paylist with Discount', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 10, N'../VAT Reports/Vat Summary Report', N'Vat Summary Report', 1, N'Edu Version 6 Build 003.7')


-- Reporting Suite Version 6 Reports ---
-- Cost Centre Trend Report 
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 4, N'Cost Centre Trend Report', N'Cost Centre Trend Report', 1, N'Edu Version 6 Build 003.7')
-- Document History Report  
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 5, N'Document History Report', N'Document History Report', 1, N'Edu Version 6 Build 003.7')
-- Directories Budget Holder 
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 8, N'../Budget Holders/Directorate Budget Holder', N'Directorate Budget Holder', 1, N'Edu Version 6 Build 003.7')
-- Hub Management to Trust Home 
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 12, N'Hub Management Accounts', N'Hub Management Accounts', 1, N'Edu Version 6 Build 003.7')
-- Hub Management Trend to Trust Home 
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 12, N'Hub Management Accounts Trend', N'Hub Management Accounts Trend', 1, N'Edu Version 6 Build 003.7')


-- Reporting Suite Version 6 Build 002 Reports ---
-- Purchase Order Discrepancies GRN to INV 
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 2, N'Purchase Order Discrepancies', N'Purchase Order Discrepancies (PORD to INV)', 1, N'Edu Version 6 Build 003.7')
-- Intercompany Document Report
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 10, N'Intra Company Transactions Report', N'Intra Company Transactions Report', 1, N'Edu Version 6 Build 003.7')
-- Trust Budget Holder Report
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 14, N'Trust Budget Holder Statement', N'Trust Budget Holder Statement', 1, N'Edu Version 6 Build 003.7')
-- Cash Flow Statement
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 1, N'Cash Flow Statement', N'Cash Flow Statement', 1, N'Edu Version 6 Build 003.7')


-- Reporting Suite Version 6 Build 003 Reports ---
-- KPI Annualised dashboard with Benchmark 
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 12, N'KPI Dashboard (Annualised Benchmark)', N'KPI Dashboard (Annualised Benchmarking)', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 2, N'Purchase Document Enquiry Report', N'Purchase Document Enquiry Report', 1, N'Edu Version 6 Build 003.7')


-- Reporting Suite Version 6 Build 003.5 Reports ---
-- WorkFlow Reports
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 5, N'../WorkFlow Reports/WorkFlow Account Matrix', N'Work Flow Account Matrix', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 5, N'../WorkFlow Reports/WorkFlow User Matrix', N'Work Flow User Matrix ', 1, N'Edu Version 6 Build 003.7')
-- Account Audit Report 
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 10, N'../Audit Reports/Account Audit Report', N'Account Audit Report', 1, N'Edu Version 6 Build 003.7')
-- Dashboard Home 
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 17, N'../Academy Dashboard/Payment Dashboard', N'Payment Dashboard', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 17, N'../Academy Dashboard/Purchasing Dashboard', N'Purchasing Dashboard', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 17, N'../Academy Dashboard/Academy Dashboard', N'Academy Dashboard', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 17, N'../Academy Dashboard/Governor Dashboard', N'Governor Dashboard', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 17, N'../Academy Dashboard/Management Dashboard', N'Management Dashboard', 1, N'Edu Version 6 Build 003.7')
-- Purchase Order Compliance Report
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES ( 2, N'Po Compliance Report', N'Purchase Order Compliance Report', 1, N'Edu Version 6 Build 003.7')

-- Reporting Suite Version 6 Build 003.7 Reports ---
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES (1, N'EFA Budget Forecast Return', N'EFA Budget Forecast Return', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES (1, N'EFA Budget Forecast Outturn', N'EFA Budget Forecast Outturn', 1, N'Edu Version 6 Build 003.7')


-- Reporting Suite Version 6 Build 003.7 Reprots 
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES (5, N'Document Approval Report', N'Document Approval Report', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES (5, N'Documents not showing on Paylist', N'Documents not showing on Paylist', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES (4, N'Ledger Chart of Accounts', N'Ledger Chart of Accounts', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES (2, N'Purchase Items without Attachments', N'Purchase Items without Attachments', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES (1, N'Management Accounts by Cost Centre', N'Management Accounts by Cost Centre', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES (10, N'Supplier List', N'Supplier List', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES (10, N'Supplier Spend Report', N'Supplier Spend Report', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES (1, N'Trial Balance by Period', N'Trial Balance by Period', 1, N'Edu Version 6 Build 003.7')
INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES (10, N'../VAT Reports/Vat Discrepancies Report', N'Vat Discrepancies Report', 1, N'Edu Version 6 Build 003.7')


--INSERT [dbo].[X_RPT_REPORTINGLIST] ([GROUP_ID], [REPORT_NAME], [REPORT_DISPLAY_NAME], [STANDARD_REPORT], [REPORT_PACK_VERSION]) VALUES (1, N'Trial Balance by Period', N'Trial Balance by Period', 1, N'Edu Version 6 Build 003.7')

--	New Vat Calculation Checking Report

--	New User Security list 


/****** Object:  Table [dbo].[X_RPT_REPORT_GROUP_STYLE]    Script Date: 01/23/2012 13:38:29 ******/
INSERT [dbo].[X_RPT_REPORT_GROUP_STYLE] ([GROUP_ID], [GROUP_STYLE], [GROUP_COLOUR], [GROUP_TEXT_COLOUR], [TEXT_COLOUR], [BACKGROUND_COLOUR]) VALUES ( 1, 1, N'#228B22', N'#FFFFFF', N'#228B22', N'#C6EFCE')
INSERT [dbo].[X_RPT_REPORT_GROUP_STYLE] ([GROUP_ID], [GROUP_STYLE], [GROUP_COLOUR], [GROUP_TEXT_COLOUR], [TEXT_COLOUR], [BACKGROUND_COLOUR]) VALUES ( 2, 1, N'#00A7D7', N'#FFFFFF', N'#00A7D7', N'#D4FFFF')
INSERT [dbo].[X_RPT_REPORT_GROUP_STYLE] ([GROUP_ID], [GROUP_STYLE], [GROUP_COLOUR], [GROUP_TEXT_COLOUR], [TEXT_COLOUR], [BACKGROUND_COLOUR]) VALUES ( 3, 1, N'#CD3A81', N'#FFFFFF', N'#CD3A81', N'#E8D6E2')
INSERT [dbo].[X_RPT_REPORT_GROUP_STYLE] ([GROUP_ID], [GROUP_STYLE], [GROUP_COLOUR], [GROUP_TEXT_COLOUR], [TEXT_COLOUR], [BACKGROUND_COLOUR]) VALUES ( 4, 1, N'#FFA500', N'#FFFFFF', N'#FFA500', N'#FAFAD2')
INSERT [dbo].[X_RPT_REPORT_GROUP_STYLE] ([GROUP_ID], [GROUP_STYLE], [GROUP_COLOUR], [GROUP_TEXT_COLOUR], [TEXT_COLOUR], [BACKGROUND_COLOUR]) VALUES ( 5, 1, N'#000080', N'#FFFFFF', N'#000080', N'#DCE6F1')
INSERT [dbo].[X_RPT_REPORT_GROUP_STYLE] ([GROUP_ID], [GROUP_STYLE], [GROUP_COLOUR], [GROUP_TEXT_COLOUR], [TEXT_COLOUR], [BACKGROUND_COLOUR]) VALUES ( 7, 1, N'#F08080', N'#FFFFFF', N'#F08080', N'#FFF7EF')
INSERT [dbo].[X_RPT_REPORT_GROUP_STYLE] ([GROUP_ID], [GROUP_STYLE], [GROUP_COLOUR], [GROUP_TEXT_COLOUR], [TEXT_COLOUR], [BACKGROUND_COLOUR]) VALUES ( 8, 1, N'#6A5ACD', N'#FFFFFF', N'#6A5ACD', N'#E4DFEC')
INSERT [dbo].[X_RPT_REPORT_GROUP_STYLE] ([GROUP_ID], [GROUP_STYLE], [GROUP_COLOUR], [GROUP_TEXT_COLOUR], [TEXT_COLOUR], [BACKGROUND_COLOUR]) VALUES ( 10, 1, N'#4682B4', N'#FFFFFF', N'#4682B4', N'#DAEEF3')
INSERT [dbo].[X_RPT_REPORT_GROUP_STYLE] ([GROUP_ID], [GROUP_STYLE], [GROUP_COLOUR], [GROUP_TEXT_COLOUR], [TEXT_COLOUR], [BACKGROUND_COLOUR]) VALUES ( 12, 1, N'#228B22', N'#FFFFFF', N'#228B22', N'#C6EFCE')
INSERT [dbo].[X_RPT_REPORT_GROUP_STYLE] ([GROUP_ID], [GROUP_STYLE], [GROUP_COLOUR], [GROUP_TEXT_COLOUR], [TEXT_COLOUR], [BACKGROUND_COLOUR]) VALUES ( 13, 1, N'#FFA500', N'#FFFFFF', N'#FFA500', N'#FAFAD2')
INSERT [dbo].[X_RPT_REPORT_GROUP_STYLE] ([GROUP_ID], [GROUP_STYLE], [GROUP_COLOUR], [GROUP_TEXT_COLOUR], [TEXT_COLOUR], [BACKGROUND_COLOUR]) VALUES ( 14, 1, N'#CD3A81', N'#FFFFFF', N'#CD3A81', N'#E8D6E2')
INSERT [dbo].[X_RPT_REPORT_GROUP_STYLE] ([GROUP_ID], [GROUP_STYLE], [GROUP_COLOUR], [GROUP_TEXT_COLOUR], [TEXT_COLOUR], [BACKGROUND_COLOUR]) VALUES ( 15, 1, N'#6A5ACD', N'#FFFFFF', N'#6A5ACD', N'#E4DFEC')
INSERT [dbo].[X_RPT_REPORT_GROUP_STYLE] ([GROUP_ID], [GROUP_STYLE], [GROUP_COLOUR], [GROUP_TEXT_COLOUR], [TEXT_COLOUR], [BACKGROUND_COLOUR]) VALUES ( 16, 1, N'#000080', N'#FFFFFF', N'#000080', N'#DCE6F1')
INSERT [dbo].[X_RPT_REPORT_GROUP_STYLE] ([GROUP_ID], [GROUP_STYLE], [GROUP_COLOUR], [GROUP_TEXT_COLOUR], [TEXT_COLOUR], [BACKGROUND_COLOUR]) VALUES ( 17, 1, N'#FFA500', N'#FFFFFF', N'#FFA500', N'#FAFAD2')


