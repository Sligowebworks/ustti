USE [USTTI2]
GO

CREATE TABLE [dbo].[student](
	[studentid] [int] NOT NULL,
	[honorific] [nvarchar](15) NULL,
	[firstname] [nvarchar](20)  NOT NULL,
	[middlename] [nvarchar](15)  NULL,
	[lastname] [nvarchar](30)  NOT NULL,
	[suffix] [nvarchar](15)  NULL,
	[dob] [datetime] NOT NULL,
	[sex] [nvarchar](10)  NULL,
	[org] [nvarchar](100)  NULL,
	[org2] [nvarchar](40)  NULL,
	[title] [nvarchar](60)  NULL,
	[address1] [nvarchar](100)  NULL,
	[address2] [nvarchar](60)  NULL,
	[city] [nvarchar](60)  NULL,
	[zipcode] [nvarchar](20)  NULL,
	[busphone] [nvarchar](20)  NULL,
	[homephone] [nvarchar](20)  NULL,
	[fax] [nvarchar](20)  NULL,
	[cellphone] [nvarchar](20)  NULL,
	[busemail] [nvarchar](60)  NULL,
	[homeemail] [nvarchar](60)  NULL,
	[supername] [nvarchar](60)  NULL,
	[supertitle] [nvarchar](60)  NULL,
	[superemail] [nvarchar](60)  NULL,
	[invalidadd] [nvarchar](10)  NULL,
	[png] [nvarchar](10)  NULL,
	[memo] [nvarchar](100)  NULL,
	[homeaddress1] [nvarchar](100)  NULL,
	[homeaddress2] [nvarchar](60)  NULL,
	[homecity] [nvarchar](60)  NULL,
	[countryid] [int] NULL,
	[homezipcode] [nvarchar](20)  NULL,
	[passportnum] [nvarchar](20)  NULL,
	[passexpdate] [datetime] NULL,
	[passportcountryid] [int] NOT NULL,
	[lastupdatetime] [datetime] NULL,
	[readingskill] [nvarchar](20)  NULL,
	[writingskill] [nvarchar](20)  NULL,
	[speakingskill] [nvarchar](20)  NULL,
	[comprehensionskill] [nvarchar](20)  NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[application](
	[applicationid] [int] NOT NULL,
	[year] [nvarchar](4)  NULL,
	[applicdate] [datetime] NULL,
	[arriveus] [datetime] NULL,
	[departus] [datetime] NULL,
	[hoteldc] [nvarchar](1)  NULL,
	[checkoutdc] [datetime] NULL,
	[needsfunds] [nvarchar](10)  NULL,
	[supersign] [nvarchar](10)  NULL,
	[studentid] [int] NULL,
	[orientid] [int] NULL,
	[memo] [nvarchar](100)  NULL
) ON [PRIMARY]


CREATE TABLE [dbo].[country](
	[countryid] [int] NOT NULL,
	[countryname] [nvarchar](40)  NULL,
	[printablename] [nvarchar](40)  NULL,
	[countryabbr] [nvarchar](3)  NULL,
	[mailcode] [nvarchar](2)  NULL,
	[independent] [nvarchar](10)  NULL,
	[trainingel] [nvarchar](10)  NULL,
	[aid_eligib] [nvarchar](10)  NULL,
	[regionid] [int] NULL
) ON [PRIMARY]

GO


CREATE TABLE [dbo].[courses](
	[courseid] [int] NOT NULL,
	[coursecode] [nvarchar](10)  NULL,
	[crsetitle1] [nvarchar](100)  NULL,
	[crsetitle2] [nvarchar](60)  NULL,
	[location] [nvarchar](60)  NULL,
	[coordinator] [nvarchar](60)  NULL,
	[trainfrom] [datetime] NULL,
	[trainto] [datetime] NULL,
	[comments] [nvarchar](60)  NULL,
	[slots] [int] NULL,
	[prisponsid] [int] NULL,
	[morespons] [nvarchar](10)  NULL,
	[courseyear] [nvarchar](4)  NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[funders](
	[funderid] [int] NOT NULL,
	[fundertypid] [int] NULL,
	[fundername] [nvarchar](60)  NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[fundertype](
	[fundertypid] [int] NOT NULL,
	[fundertypdes] [nvarchar](60)  NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[orientation](
	[orientid] [int] NOT NULL,
	[orientation_year] [nvarchar](4)  NULL,
	[date_from] [datetime] NULL,
	[date_to] [datetime] NULL,
	[daterange] [nvarchar](40)  NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[region](
	[regionid] [int] NOT NULL,
	[regionabbr] [nvarchar](2)  NULL,
	[regionname] [nvarchar](40)  NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[sponsorcrse](
	[sponcrseid] [int] NOT NULL,
	[courseid] [int] NULL,
	[sponsid] [int] NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[sponsors](
	[sponsid] [int] NOT NULL,
	[sponsname] [nvarchar](60)  NULL,
	[sponsabbr] [nvarchar](12)  NULL,
	[contact] [nvarchar](60)  NULL,
	[address1] [nvarchar](60)  NULL,
	[address2] [nvarchar](60)  NULL,
	[city] [nvarchar](60)  NULL,
	[state] [nvarchar](60)  NULL,
	[phone1] [nvarchar](20)  NULL,
	[phone2] [nvarchar](20)  NULL,
	[fax] [nvarchar](20)  NULL,
	[email] [nvarchar](60)  NULL,
	[comments] [nvarchar](60)  NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[studentcourse](
	[studentcrseid] [int] NULL,
	[studentid] [int] NULL,
	[applicationid] [int] NULL,
	[courseid] [int] NULL,
	[accepted] [nvarchar](10)  NULL,
	[confirmed] [nvarchar](10)  NULL,
	[participat] [nvarchar](10)  NULL,
	[faxsent] [nvarchar](10)  NULL,
	[preference] [int] NULL,
	[hotel] [nvarchar](1)  NULL,
	[year] [nvarchar](10)  NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[studentmemofield](
	[studentid] [int] NULL,
	[memo] [nvarchar](100)  NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[text_search](
	[firstname] [nvarchar](20)  NOT NULL,
	[lastname] [nvarchar](30)  NOT NULL,
	[dob] [datetime] NOT NULL,
	[applicationid] [int] NOT NULL,
	[countryname] [nvarchar](40)  NULL,
	[date_from] [datetime] NULL,
	[coursecode] [nvarchar](10)  NULL,
	[crsetitle1] [nvarchar](100)  NULL,
	[trainfrom] [datetime] NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[funding](
	[fundid] [int] NOT NULL,
	[applicationid] [int] NULL,
	[studentid] [int] NULL,
	[fundtypid] [int] NULL,
	[funderid] [int] NULL,
	[begindate] [datetime] NULL,
	[enddate] [datetime] NULL,
	[year] [nvarchar](4) NULL,
	[description] [nvarchar](60) NULL,
	[amount] [decimal](18, 0) NULL,
	[pio_p_no] [nvarchar](30) NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[fundtype](
	[fundtypid] [int] NOT NULL,
	[fundtypdes] [nvarchar](60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]

GO
