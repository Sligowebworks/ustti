/****** Object:  Table [dbo].[Option]    Script Date: 7/25/2006 11:34:51 AM ******/
CREATE TABLE [dbo].[Option] (
	[Option] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[application]    Script Date: 7/25/2006 11:34:51 AM ******/
CREATE TABLE [dbo].[application] (
	[applicationid] [int] NOT NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[applicdate] [datetime] NULL ,
	[arriveus] [datetime] NULL ,
	[departus] [datetime] NULL ,
	[hoteldc] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[checkoutdc] [datetime] NULL ,
	[needsfunds] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[supersign] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[studentid] [int] NULL ,
	[orientid] [int] NULL ,
	[memo] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[application_staging]    Script Date: 7/25/2006 11:34:51 AM ******/
CREATE TABLE [dbo].[application_staging] (
	[studyrkey] [int] NULL ,
	[aplicantid] [int] NULL ,
	[year] [datetime] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[country]    Script Date: 7/25/2006 11:34:51 AM ******/
CREATE TABLE [dbo].[country] (
	[countryid] [int] NOT NULL ,
	[countryname] [char] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[printablename] [char] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[countryabbr] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[mailcode] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[independent] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[trainingel] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[aid_eligib] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[regionid] [int] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[courses]    Script Date: 7/25/2006 11:34:51 AM ******/
CREATE TABLE [dbo].[courses] (
	[courseid] [int] NOT NULL ,
	[coursecode] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[crsetitle1] [char] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[crsetitle2] [char] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[location] [char] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[coordinator] [char] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[trainfrom] [datetime] NULL ,
	[trainto] [datetime] NULL ,
	[comments] [char] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[slots] [int] NULL ,
	[prisponsid] [int] NULL ,
	[morespons] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[courseyear] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[funders]    Script Date: 7/25/2006 11:34:51 AM ******/
CREATE TABLE [dbo].[funders] (
	[funderid] [int] NOT NULL ,
	[fundertypid] [int] NULL ,
	[fundername] [char] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[fundertype]    Script Date: 7/25/2006 11:34:51 AM ******/
CREATE TABLE [dbo].[fundertype] (
	[fundertypid] [int] NOT NULL ,
	[fundertypdes] [char] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[funding]    Script Date: 7/25/2006 11:34:51 AM ******/
CREATE TABLE [dbo].[funding] (
	[fundid] [int] NOT NULL ,
	[applicationid] [int] NULL ,
	[studentid] [int] NULL ,
	[fundtypid] [int] NULL ,
	[funderid] [int] NULL ,
	[begindate] [datetime] NULL ,
	[enddate] [datetime] NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[description] [char] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[amount] [decimal](18, 0) NULL ,
	[pio_p_no] [char] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[fundtype]    Script Date: 7/25/2006 11:34:51 AM ******/
CREATE TABLE [dbo].[fundtype] (
	[fundtypid] [int] NOT NULL ,
	[fundtypdes] [char] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[orientation]    Script Date: 7/25/2006 11:34:51 AM ******/
CREATE TABLE [dbo].[orientation] (
	[orientid] [int] NOT NULL ,
	[orientation_year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[date_from] [datetime] NULL ,
	[date_to] [datetime] NULL ,
	[daterange] [char] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[region]    Script Date: 7/25/2006 11:34:51 AM ******/
CREATE TABLE [dbo].[region] (
	[regionid] [int] NOT NULL ,
	[regionabbr] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[regionname] [char] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[sponsorcrse]    Script Date: 7/25/2006 11:34:51 AM ******/
CREATE TABLE [dbo].[sponsorcrse] (
	[sponcrseid] [int] NOT NULL ,
	[courseid] [int] NULL ,
	[sponsid] [int] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[sponsors]    Script Date: 7/25/2006 11:34:51 AM ******/
CREATE TABLE [dbo].[sponsors] (
	[sponsid] [int] NOT NULL ,
	[sponsname] [char] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[sponsabbr] [char] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[contact] [char] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[address1] [char] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[address2] [char] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[city] [char] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[state] [char] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[phone1] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[phone2] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[fax] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[email] [char] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[comments] [char] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[student]    Script Date: 7/25/2006 11:34:51 AM ******/
CREATE TABLE [dbo].[student] (
	[studentid] [int] NOT NULL ,
	[honorific] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[firstname] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[middlename] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[lastname] [char] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[suffix] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dob] [datetime] NOT NULL ,
	[sex] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[org] [char] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[org2] [char] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[title] [char] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[address1] [char] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[address2] [char] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[city] [char] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[zipcode] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[busphone] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[homephone] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[fax] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[cellphone] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[busemail] [char] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[homeemail] [char] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[supername] [char] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[supertitle] [char] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[superemail] [char] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[invalidadd] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[png] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[memo] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[homeaddress1] [char] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[homeaddress2] [char] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[homecity] [char] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[countryid] [int] NULL ,
	[homezipcode] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[passportnum] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[passexpdate] [datetime] NULL ,
	[passportcountryid] [int] NOT NULL ,
	[lastupdatetime] [datetime] NULL ,
	[readingskill] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[writingskill] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[speakingskill] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[comprehensionskill] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[studentcourse]    Script Date: 7/25/2006 11:34:51 AM ******/
CREATE TABLE [dbo].[studentcourse] (
	[studentcrseid] [int] NULL ,
	[studentid] [int] NULL ,
	[applicationid] [int] NULL ,
	[courseid] [int] NULL ,
	[accepted] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[confirmed] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[participat] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[faxsent] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[preference] [int] NULL ,
	[hotel] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[studentmemofield]    Script Date: 7/25/2006 11:34:51 AM ******/
CREATE TABLE [dbo].[studentmemofield] (
	[studentid] [int] NULL ,
	[memo] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

