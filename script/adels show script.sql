USE [miniproject]
GO
/****** Object:  StoredProcedure [dbo].[BookingInsert]    Script Date: 4/15/2021 3:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[BookingInsert]
(

@userid as int,
@movieid as int,
@seatid as int,

@Date as DateTime
)
as
begin
begin transaction
declare @result as varchar(30), @exist as int,@count as int

begin
set @count=(select count (*) from bookingcnfrmn where seatid=@seatid and movieid=@movieid and Date=@Date and status ='B')
if(@count=0)
begin
insert into bookingcnfrmn([userid],[movieid],[seatid],[Date],[status])
 values                (@userid,@movieid,@seatid,@Date,'B')
 end
 else
 begin
 set @result='already exist'
 commit transaction
select @result
 end
 if (@@error>0)
 begin
			set @result='Error'
			rollback transaction
		end
		else
		begin
			set @result='Success'
		end
	end
commit transaction
select @result

end
GO
/****** Object:  StoredProcedure [dbo].[login]    Script Date: 4/15/2021 3:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure[dbo].[login]
(
@email as varchar(50),
@password as varchar(50)
)
as
begin
begin transaction
declare @result as varchar(30),@exist as int,@id as int,@role as varchar(30)
set @exist=(select count(*) from register where email=@email and status='v' and password=@password)
if(@exist>0)
begin
set @role=(select role from register where email=@email)
set @id=(select id from register where email=@email)
set @result='Success,'+convert (varchar(20),@id)+','+@role
end
else
begin
set @id=0
set @result='Failed,'+convert(varchar(20),@id)
end
commit transaction
select @result
end
GO
/****** Object:  StoredProcedure [dbo].[movie_insert]    Script Date: 4/15/2021 3:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[movie_insert]
(
@moviename as varchar(50),
@moviedesc as varchar(50),

@moviedirector as varchar(50),
@movieimage as varchar(50)


)
as
begin
begin transaction
declare @result as varchar(30), @exist as int
set @exist = (select count (*) from moviecollection where moviename= @moviename and status ='A')

if (@exist>0)
begin 
set @result ='Already Exist'
end
else
begin
insert into moviecollection (moviename,moviedesc,moviedirector,movieimage,status)
 values                (@moviename,@moviedesc,@moviedirector,@movieimage,'A')
 if (@@error>0)
 begin
			set @result='Error'
			rollback transaction
		end
		else
		begin
			set @result='Success'
		end
	end
commit transaction
select @result
end
GO
/****** Object:  StoredProcedure [dbo].[msg_delete]    Script Date: 4/15/2021 3:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[msg_delete]
( 
@id as int
)
as
begin
begin transaction
declare @result as varchar(30)
update [dbo].[msginsert] set Status='D' where id=@id
if (@@ERROR>0)
begin
set @result='Error'
rollback transaction
end
else
begin
set @result= 'Success'
end
commit transaction
select @result
end
GO
/****** Object:  StoredProcedure [dbo].[msginserted]    Script Date: 4/15/2021 3:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[msginserted]
(

@name as varchar(50),

@email as varchar(50),

@mob as varchar(50),
@msg as varchar(50)


)
as
begin
begin transaction
declare @result as varchar(30), @exist as int
begin

insert into [dbo].[msginsert]  ([name],[email],[mob],[msg],[status])
 values                (@name,@email,@mob,@msg,'A')

 if (@@error>0)
 begin
			set @result='Error'
			rollback transaction
		end
		else
		begin
			set @result='Success'
		end
	end
commit transaction
select @result
end
GO
/****** Object:  StoredProcedure [dbo].[seatfill]    Script Date: 4/15/2021 3:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[seatfill]
( 
@id as int

)
as
begin
begin transaction
declare @seatstatus as varchar(30)
update [dbo].[seatbooking] set status='B' where id=@id and status='A'
if (@@ERROR>0)
begin
set @seatstatus='Error'
rollback transaction
end
else
begin
set @seatstatus= 'Success'
end
commit transaction
select @seatstatus
end
GO
/****** Object:  StoredProcedure [dbo].[seatfille]    Script Date: 4/15/2021 3:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[seatfille]
( 
@id as int
)
as
begin
begin transaction
declare @seatstatus as varchar(30),@count as int
set @count=(select count (*) from seatbooking where id=@id and status='A' )
if(@count=1)
begin
update [dbo].[seatbooking] set status='A' where id=@id

end
else
 begin
 set @seatstatus='already exist'
 commit transaction
 select @seatstatus
 end
if (@@ERROR>0)
begin
set @seatstatus='Error'
rollback transaction
end
else
begin
set @seatstatus= 'Success'
end
commit transaction
select @seatstatus
end
GO
/****** Object:  StoredProcedure [dbo].[seatfilled]    Script Date: 4/15/2021 3:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[seatfilled]
(

@userid as int,
@movieid as int,
@seatid as int,

@Date as DateTime,

@id as int

)
as
begin
begin transaction
declare @seatstatus as varchar(30), @exist as int,@count as int

begin
set @count=(select count (*) from seatbooking where  id=@id and status ='B')
if(@count=0)
begin

 update [dbo].[seatbooking] set status='B' where id=@id
 end
 else
 begin
 set @seatstatus='already exist'
 commit transaction
select @seatstatus
 end
 if (@@error>0)
 begin
			set @seatstatus='Error'
			rollback transaction
		end
		else
		begin
			set @seatstatus='Success'
		end
	end
commit transaction
select @seatstatus

end


GO
/****** Object:  StoredProcedure [dbo].[selectallbookings]    Script Date: 4/15/2021 3:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[selectallbookings]
as
begin


SELECT bookingcnfrmn.bookingid,bookingcnfrmn.Date,moviecollection.moviename,register.name,seatbooking.seatno 
FROM bookingcnfrmn
INNER JOIN moviecollection ON moviecollection.id = bookingcnfrmn.movieid
INNER JOIN register ON register.id = bookingcnfrmn.userid
INNER JOIN seatbooking ON seatbooking.id = bookingcnfrmn.seatid
where bookingcnfrmn.Status='B'

end
GO
/****** Object:  StoredProcedure [dbo].[selectmoviebyid]    Script Date: 4/15/2021 3:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[selectmoviebyid]
(@id as int)
as
begin
select  [moviename],[moviedirector],[moviedesc],[movieimage] from [dbo].[moviecollection] where id=@id and status='A'
end
GO
/****** Object:  StoredProcedure [dbo].[selectregmovie]    Script Date: 4/15/2021 3:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[selectregmovie]
as
begin
select id,moviename,moviedesc,moviedirector,movieimage,status from moviecollection 
end
GO
/****** Object:  StoredProcedure [dbo].[selectregmsg]    Script Date: 4/15/2021 3:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[selectregmsg]
as
begin
select id,name,email,mob,msg from [dbo].[msginsert] where status='A'
end
GO
/****** Object:  StoredProcedure [dbo].[selectregseat]    Script Date: 4/15/2021 3:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[selectregseat]
as
begin
select id,seatno,status from seatbooking
end
GO
/****** Object:  StoredProcedure [dbo].[selectregvisitor]    Script Date: 4/15/2021 3:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[selectregvisitor]
as
begin
select id,name,email,password,phone,image,status from register where  role='users'
end
GO
/****** Object:  StoredProcedure [dbo].[selectseatbyid]    Script Date: 4/15/2021 3:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[selectseatbyid]
(@id as int)
as
begin
select  [seatno],[status] from [dbo].[seatbooking] where id=@id and status='A'
end
GO
/****** Object:  StoredProcedure [dbo].[selectuserbyid]    Script Date: 4/15/2021 3:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[selectuserbyid]
(@id as int)
as
begin
select name,email,phone,image,password  from register where id=@id and status='v'
end
GO
/****** Object:  StoredProcedure [dbo].[selselectstudentbyid]    Script Date: 4/15/2021 3:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[selselectstudentbyid]
(@id as int)
as
begin
select  name,phone,email,image,password from [dbo].[register] where id=@id and status='A'
update [dbo].[register] set status='V' where id=@id
end

GO
/****** Object:  StoredProcedure [dbo].[UserUpdate]    Script Date: 4/15/2021 3:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UserUpdate]
(
@id as int,
@name as varchar(50),

@email as varchar(50),
@image as varchar(50),
@phone as varchar(50),
@password as varchar(50)


)
as
begin
begin transaction
declare @result as varchar(30)
begin


update register set name=@name , email=@email ,image=@image,phone=@phone,password=@password where id=@id 
 if (@@error>0)
 begin
			set @result='Error'
			rollback transaction
		end
		else
		begin
			set @result='Success'
		end
	end
commit transaction
select @result
end
GO
/****** Object:  StoredProcedure [dbo].[visitor_accept]    Script Date: 4/15/2021 3:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[visitor_accept]
( 
@id as int
)
as
begin
begin transaction
declare @result as varchar(30)
update [dbo].[register] set Status='v' where id=@id
if (@@ERROR>0)
begin
set @result='Error'
rollback transaction
end
else
begin
set @result= 'Success'
end
commit transaction
select @result
end
GO
/****** Object:  StoredProcedure [dbo].[visitor_insert]    Script Date: 4/15/2021 3:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[visitor_insert]
(
@name as varchar(50),

@email as varchar(50),

@password as varchar(50),

@image as varchar(100),

@phone as int


)
as
begin
begin transaction
declare @result as varchar(30), @exist as int
set @exist = (select count (*) from register where name=@name and status ='A' and role='users')

if (@exist>0)
begin 
set @result ='Already Exist'
end
else
begin
insert into register (name,email,password, status,role,image,phone)
 values                (@name,@email,@password,'A','users',@image,@phone)
 if (@@error>0)
 begin
			set @result='Error'
			rollback transaction
		end
		else
		begin
			set @result='Success'
		end
	end
commit transaction
select @result
end
GO
/****** Object:  StoredProcedure [dbo].[visitor_reject]    Script Date: 4/15/2021 3:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[visitor_reject]
( 
@id as int
)
as
begin
begin transaction
declare @result as varchar(30)
update [dbo].[register] set Status='R' where id=@id
if (@@ERROR>0)
begin
set @result='Error'
rollback transaction
end
else
begin
set @result= 'Success'
end
commit transaction
select @result
end
GO
/****** Object:  Table [dbo].[bookingcnfrm]    Script Date: 4/15/2021 3:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bookingcnfrm](
	[userid] [int] NULL,
	[movieid] [int] NULL,
	[seatid] [int] NULL,
	[Date] [datetime] NULL,
	[status] [char](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[bookingcnfrmation]    Script Date: 4/15/2021 3:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bookingcnfrmation](
	[userid] [int] NULL,
	[movieid] [int] NULL,
	[seatid] [int] NULL,
	[Date] [datetime] NULL,
	[status] [char](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[bookingcnfrmn]    Script Date: 4/15/2021 3:27:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bookingcnfrmn](
	[bookingid] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NULL,
	[movieid] [int] NULL,
	[seatid] [int] NULL,
	[Date] [datetime] NULL,
	[status] [char](10) NULL,
 CONSTRAINT [PK_bookingcnfrmn] PRIMARY KEY CLUSTERED 
(
	[bookingid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[moviecollection]    Script Date: 4/15/2021 3:27:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[moviecollection](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[moviename] [varchar](50) NULL,
	[moviedesc] [varchar](500) NULL,
	[moviedirector] [varchar](50) NULL,
	[movieimage] [varchar](1000) NULL,
	[status] [varchar](50) NULL,
 CONSTRAINT [PK_moviecollection] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[msginsert]    Script Date: 4/15/2021 3:27:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[msginsert](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[mob] [varchar](50) NULL,
	[msg] [varchar](50) NULL,
	[status] [char](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[register]    Script Date: 4/15/2021 3:27:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[register](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[role] [varchar](50) NULL,
	[image] [varchar](100) NULL,
	[phone] [int] NULL,
 CONSTRAINT [PK_register] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[seatbooking]    Script Date: 4/15/2021 3:27:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[seatbooking](
	[seatno] [varchar](50) NULL,
	[status] [nchar](10) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_seatbooking] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[bookingcnfrmation] ([userid], [movieid], [seatid], [Date], [status]) VALUES (0, 4, 6, CAST(0x0000AD3D00000000 AS DateTime), N'P         ')
INSERT [dbo].[bookingcnfrmation] ([userid], [movieid], [seatid], [Date], [status]) VALUES (0, 4, 6, CAST(0x0000AD3D00000000 AS DateTime), N'P         ')
INSERT [dbo].[bookingcnfrmation] ([userid], [movieid], [seatid], [Date], [status]) VALUES (0, 4, 4, CAST(0x0000AD1E00000000 AS DateTime), N'P         ')
INSERT [dbo].[bookingcnfrmation] ([userid], [movieid], [seatid], [Date], [status]) VALUES (0, 4, 2, CAST(0x0000ACA600000000 AS DateTime), N'P         ')
INSERT [dbo].[bookingcnfrmation] ([userid], [movieid], [seatid], [Date], [status]) VALUES (0, 5, 2, CAST(0x0000ACA600000000 AS DateTime), N'P         ')
INSERT [dbo].[bookingcnfrmation] ([userid], [movieid], [seatid], [Date], [status]) VALUES (0, 6, 0, CAST(0x0000ACA600000000 AS DateTime), N'P         ')
INSERT [dbo].[bookingcnfrmation] ([userid], [movieid], [seatid], [Date], [status]) VALUES (0, 4, 3, CAST(0x0000ACA600000000 AS DateTime), N'P         ')
INSERT [dbo].[bookingcnfrmation] ([userid], [movieid], [seatid], [Date], [status]) VALUES (0, 8, 2, CAST(0x0000ACA600000000 AS DateTime), N'P         ')
INSERT [dbo].[bookingcnfrmation] ([userid], [movieid], [seatid], [Date], [status]) VALUES (0, 4, 2, CAST(0x0000ACA600000000 AS DateTime), N'P         ')
INSERT [dbo].[bookingcnfrmation] ([userid], [movieid], [seatid], [Date], [status]) VALUES (0, 5, 2, CAST(0x0000ACA600000000 AS DateTime), N'P         ')
INSERT [dbo].[bookingcnfrmation] ([userid], [movieid], [seatid], [Date], [status]) VALUES (0, 4, 2, CAST(0x0000ACA600000000 AS DateTime), N'P         ')
INSERT [dbo].[bookingcnfrmation] ([userid], [movieid], [seatid], [Date], [status]) VALUES (0, 4, 2, CAST(0x0000ACA600000000 AS DateTime), N'P         ')
INSERT [dbo].[bookingcnfrmation] ([userid], [movieid], [seatid], [Date], [status]) VALUES (0, 7, 2, CAST(0x0000ACA600000000 AS DateTime), N'P         ')
INSERT [dbo].[bookingcnfrmation] ([userid], [movieid], [seatid], [Date], [status]) VALUES (0, 4, 7, CAST(0x0000ACA600000000 AS DateTime), N'P         ')
INSERT [dbo].[bookingcnfrmation] ([userid], [movieid], [seatid], [Date], [status]) VALUES (0, 6, 8, CAST(0x0000ACC500000000 AS DateTime), N'P         ')
INSERT [dbo].[bookingcnfrmation] ([userid], [movieid], [seatid], [Date], [status]) VALUES (0, 6, 15, CAST(0x0000ACA600000000 AS DateTime), N'P         ')
INSERT [dbo].[bookingcnfrmation] ([userid], [movieid], [seatid], [Date], [status]) VALUES (0, 7, 12, CAST(0x0000AD5B00000000 AS DateTime), N'P         ')
INSERT [dbo].[bookingcnfrmation] ([userid], [movieid], [seatid], [Date], [status]) VALUES (0, 4, 5, CAST(0x0000ACC500000000 AS DateTime), N'P         ')
INSERT [dbo].[bookingcnfrmation] ([userid], [movieid], [seatid], [Date], [status]) VALUES (0, 7, 16, CAST(0x0000ACA600000000 AS DateTime), N'P         ')
INSERT [dbo].[bookingcnfrmation] ([userid], [movieid], [seatid], [Date], [status]) VALUES (0, 5, 6, CAST(0x0000AD7A00000000 AS DateTime), N'P         ')
INSERT [dbo].[bookingcnfrmation] ([userid], [movieid], [seatid], [Date], [status]) VALUES (0, 5, 6, CAST(0x0000AD7A00000000 AS DateTime), N'P         ')
INSERT [dbo].[bookingcnfrmation] ([userid], [movieid], [seatid], [Date], [status]) VALUES (0, 4, 5, CAST(0x0000ACC500000000 AS DateTime), N'P         ')
INSERT [dbo].[bookingcnfrmation] ([userid], [movieid], [seatid], [Date], [status]) VALUES (0, 4, 2, CAST(0x0000ACA600000000 AS DateTime), N'P         ')
INSERT [dbo].[bookingcnfrmation] ([userid], [movieid], [seatid], [Date], [status]) VALUES (0, 4, 5, CAST(0x0000ACC500000000 AS DateTime), N'P         ')
INSERT [dbo].[bookingcnfrmation] ([userid], [movieid], [seatid], [Date], [status]) VALUES (0, 6, 2, CAST(0x0000ACA600000000 AS DateTime), N'P         ')
INSERT [dbo].[bookingcnfrmation] ([userid], [movieid], [seatid], [Date], [status]) VALUES (0, 6, 2, CAST(0x0000ACA600000000 AS DateTime), N'P         ')
INSERT [dbo].[bookingcnfrmation] ([userid], [movieid], [seatid], [Date], [status]) VALUES (0, 4, 4, CAST(0x0000AD9900000000 AS DateTime), N'P         ')
INSERT [dbo].[bookingcnfrmation] ([userid], [movieid], [seatid], [Date], [status]) VALUES (0, 6, 5, CAST(0x0000AD3D00000000 AS DateTime), N'P         ')
INSERT [dbo].[bookingcnfrmation] ([userid], [movieid], [seatid], [Date], [status]) VALUES (0, 6, 5, CAST(0x0000AD5B00000000 AS DateTime), N'P         ')
INSERT [dbo].[bookingcnfrmation] ([userid], [movieid], [seatid], [Date], [status]) VALUES (0, 6, 5, CAST(0x0000AD7A00000000 AS DateTime), N'P         ')
SET IDENTITY_INSERT [dbo].[bookingcnfrmn] ON 

INSERT [dbo].[bookingcnfrmn] ([bookingid], [userid], [movieid], [seatid], [Date], [status]) VALUES (21, 2, 7, 18, CAST(0x0000AD9900000000 AS DateTime), N'B         ')
INSERT [dbo].[bookingcnfrmn] ([bookingid], [userid], [movieid], [seatid], [Date], [status]) VALUES (22, 3, 4, 8, CAST(0x0000AD7A00000000 AS DateTime), N'B         ')
INSERT [dbo].[bookingcnfrmn] ([bookingid], [userid], [movieid], [seatid], [Date], [status]) VALUES (23, 9, 4, 47, CAST(0x0000AD7A00000000 AS DateTime), N'B         ')
INSERT [dbo].[bookingcnfrmn] ([bookingid], [userid], [movieid], [seatid], [Date], [status]) VALUES (24, 9, 4, 3, CAST(0x0000ACC500000000 AS DateTime), N'B         ')
INSERT [dbo].[bookingcnfrmn] ([bookingid], [userid], [movieid], [seatid], [Date], [status]) VALUES (25, 9, 4, 4, CAST(0x0000ACA600000000 AS DateTime), N'B         ')
INSERT [dbo].[bookingcnfrmn] ([bookingid], [userid], [movieid], [seatid], [Date], [status]) VALUES (26, 9, 4, 25, CAST(0x0000ACA600000000 AS DateTime), N'B         ')
INSERT [dbo].[bookingcnfrmn] ([bookingid], [userid], [movieid], [seatid], [Date], [status]) VALUES (27, 9, 4, 2, CAST(0x0000ACA600000000 AS DateTime), N'B         ')
INSERT [dbo].[bookingcnfrmn] ([bookingid], [userid], [movieid], [seatid], [Date], [status]) VALUES (28, 9, 4, 2, CAST(0x0000ACA600000000 AS DateTime), N'B         ')
INSERT [dbo].[bookingcnfrmn] ([bookingid], [userid], [movieid], [seatid], [Date], [status]) VALUES (29, 2, 4, 2, CAST(0x0000ACC500000000 AS DateTime), N'B         ')
INSERT [dbo].[bookingcnfrmn] ([bookingid], [userid], [movieid], [seatid], [Date], [status]) VALUES (30, 9, 4, 7, CAST(0x0000ACC500000000 AS DateTime), N'B         ')
INSERT [dbo].[bookingcnfrmn] ([bookingid], [userid], [movieid], [seatid], [Date], [status]) VALUES (31, 9, 4, 10, CAST(0x0000ACA600000000 AS DateTime), N'B         ')
INSERT [dbo].[bookingcnfrmn] ([bookingid], [userid], [movieid], [seatid], [Date], [status]) VALUES (32, 9, 4, 8, CAST(0x0000ACC500000000 AS DateTime), N'B         ')
INSERT [dbo].[bookingcnfrmn] ([bookingid], [userid], [movieid], [seatid], [Date], [status]) VALUES (33, 2, 4, 12, CAST(0x0000ACA600000000 AS DateTime), N'B         ')
SET IDENTITY_INSERT [dbo].[bookingcnfrmn] OFF
SET IDENTITY_INSERT [dbo].[moviecollection] ON 

INSERT [dbo].[moviecollection] ([id], [moviename], [moviedesc], [moviedirector], [movieimage], [status]) VALUES (4, N'ONE', N'Political movie', N'Santhosh Viswanathan', N'~/img/6046.jpg', N'A')
INSERT [dbo].[moviecollection] ([id], [moviename], [moviedesc], [moviedirector], [movieimage], [status]) VALUES (5, N'Anugraheethan Antony', N'family movie', N'prince joy', N'~/img/2688.jpg', N'A')
INSERT [dbo].[moviecollection] ([id], [moviename], [moviedesc], [moviedirector], [movieimage], [status]) VALUES (6, N'The Priest', N'Horror movie', N'Jofin T Chacko', N'~/img/0106.jpg', N'A')
INSERT [dbo].[moviecollection] ([id], [moviename], [moviedesc], [moviedirector], [movieimage], [status]) VALUES (7, N'Operation Java', N'fun movie', N'Tharun Moorthy', N'~/img/8476.jpg', N'A')
INSERT [dbo].[moviecollection] ([id], [moviename], [moviedesc], [moviedirector], [movieimage], [status]) VALUES (8, N'Mohan Kumar Fans', N'dramatical movie', N'jisjoy', N'~/img/7453.jpg', N'A')
SET IDENTITY_INSERT [dbo].[moviecollection] OFF
SET IDENTITY_INSERT [dbo].[msginsert] ON 

INSERT [dbo].[msginsert] ([id], [name], [email], [mob], [msg], [status]) VALUES (5, N'sonu', N'sonu@gmail.com', N'78754466', N'jkbdhszbjk', N'D         ')
INSERT [dbo].[msginsert] ([id], [name], [email], [mob], [msg], [status]) VALUES (6, N'sonu', N'sonu@gmail.com', N'7898907', N'ruihj', N'D         ')
SET IDENTITY_INSERT [dbo].[msginsert] OFF
SET IDENTITY_INSERT [dbo].[register] ON 

INSERT [dbo].[register] ([id], [name], [email], [password], [Status], [role], [image], [phone]) VALUES (1, N'anju', N'anju@gmail.com', N'anju', N'R', N'users', N'~/img/2590.jpg', 12345)
INSERT [dbo].[register] ([id], [name], [email], [password], [Status], [role], [image], [phone]) VALUES (2, N'yadhu', N'yadhu@gmail.com', N'yadhu', N'v', N'users', N'~/img/9570.jpg', 657345)
INSERT [dbo].[register] ([id], [name], [email], [password], [Status], [role], [image], [phone]) VALUES (3, N'lachu', N'lachu@gmail.com', N'lachu', N'v', N'users', N'~/img/0167.jpg', 12345)
INSERT [dbo].[register] ([id], [name], [email], [password], [Status], [role], [image], [phone]) VALUES (4, N'sana', N'sana@gmail.com', N'sana', N'v', N'users', N'~/img/0167.jpg', 34564)
INSERT [dbo].[register] ([id], [name], [email], [password], [Status], [role], [image], [phone]) VALUES (5, N'daLL', N'dal@gmail.com', N'dall', N'v', N'users', N'~/img/0167.jpg', 43636)
INSERT [dbo].[register] ([id], [name], [email], [password], [Status], [role], [image], [phone]) VALUES (6, N'swathy', N'swathy@gmail.com', N'swathy', N'v', N'users', N'~/img/0979.jpg', 43647)
INSERT [dbo].[register] ([id], [name], [email], [password], [Status], [role], [image], [phone]) VALUES (7, N'jeeva', N'jeeva@gmail.com', N'jeeva', N'v', N'users', N'~/img/0167.jpg', 67675)
INSERT [dbo].[register] ([id], [name], [email], [password], [Status], [role], [image], [phone]) VALUES (8, N'ertyu', N'erty@gmail.com', N'erty', N'v', N'users', N'~/img/0167.jpg', 5376)
INSERT [dbo].[register] ([id], [name], [email], [password], [Status], [role], [image], [phone]) VALUES (9, N'manu', N'manu@gmail.com', N'manu', N'v', N'users', N'~/img/0167.jpg', 32536)
INSERT [dbo].[register] ([id], [name], [email], [password], [Status], [role], [image], [phone]) VALUES (10, N'qwerty', N'qwerty@gmail.com', N'qwerty', N'v', N'users', N'~/img/0167.jpg', 35647)
INSERT [dbo].[register] ([id], [name], [email], [password], [Status], [role], [image], [phone]) VALUES (11, N'seetha', N'seetha@gmail.com', N'seetha', N'v', N'users', N'~/img/0167.jpg', 43636)
INSERT [dbo].[register] ([id], [name], [email], [password], [Status], [role], [image], [phone]) VALUES (12, N'ivan', N'ivan@gmail.com', N'ivan', N'A', N'users', N'~/img/6138.jpg', 1423524)
INSERT [dbo].[register] ([id], [name], [email], [password], [Status], [role], [image], [phone]) VALUES (13, N'ADMIN', N'admin@gmail.com', N'admin', N'v', N'admin', N'~/img/0167.jpg', 12344)
INSERT [dbo].[register] ([id], [name], [email], [password], [Status], [role], [image], [phone]) VALUES (14, N'nayan', N'nayan@gmail.com', N'nayan', N'A', N'users', N'~/img/0167.jpg', 786544566)
SET IDENTITY_INSERT [dbo].[register] OFF
SET IDENTITY_INSERT [dbo].[seatbooking] ON 

INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'A1        ', N'A         ', 2)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'A2        ', N'A         ', 3)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'A3        ', N'A         ', 4)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'A4        ', N'A         ', 5)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'A5        ', N'A         ', 6)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'A6        ', N'A         ', 7)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'A7        ', N'A         ', 8)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'A8        ', N'A         ', 9)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'A9        ', N'A         ', 10)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'A10       ', N'A         ', 11)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'B1        ', N'A         ', 12)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'B2        ', N'A         ', 13)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'B3        ', N'A         ', 14)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'B4        ', N'A         ', 15)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'B5        ', N'A         ', 16)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'B6        ', N'A         ', 17)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'B7        ', N'A         ', 18)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'B8        ', N'A         ', 19)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'B9        ', N'A         ', 20)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'B10       ', N'A         ', 21)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'C1        ', N'A         ', 22)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'C2        ', N'A         ', 23)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'C3        ', N'A         ', 24)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'C4        ', N'A         ', 25)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'C5        ', N'A         ', 26)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'C6        ', N'A         ', 27)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'C7        ', N'A         ', 28)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'C8        ', N'A         ', 29)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'C9        ', N'A         ', 30)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'C10       ', N'A         ', 31)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'D1        ', N'A         ', 32)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'D2        ', N'A         ', 33)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'D3        ', N'A         ', 34)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'D4        ', N'A         ', 35)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'D5        ', N'A         ', 36)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'D6        ', N'A         ', 37)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'D7        ', N'A         ', 38)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'D8        ', N'A         ', 39)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'D9        ', N'A         ', 40)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'D10       ', N'A         ', 41)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'E1        ', N'A         ', 42)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'E2        ', N'A         ', 43)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'E3        ', N'A         ', 44)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'E4        ', N'A         ', 45)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'E5        ', N'A         ', 46)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'E6        ', N'A         ', 47)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'E7        ', N'A         ', 48)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'E8        ', N'A         ', 49)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'E9        ', N'A         ', 50)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'E10       ', N'A         ', 51)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'F1        ', N'A         ', 52)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'F2        ', N'A         ', 53)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'F3        ', N'A         ', 54)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'F4        ', N'A         ', 55)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'F5        ', N'A         ', 56)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'F6        ', N'A         ', 57)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'F7        ', N'A         ', 58)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'F8        ', N'A         ', 59)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'F9        ', N'A         ', 60)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'F10       ', N'A         ', 61)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'G1        ', N'A         ', 62)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'G2        ', N'A         ', 63)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'G3        ', N'A         ', 64)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'G4        ', N'A         ', 65)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'G5        ', N'A         ', 66)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'G6        ', N'A         ', 67)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'G7        ', N'A         ', 68)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'G8        ', N'A         ', 69)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'G9        ', N'A         ', 70)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (N'G10       ', N'A         ', 71)
INSERT [dbo].[seatbooking] ([seatno], [status], [id]) VALUES (NULL, N'A         ', 72)
SET IDENTITY_INSERT [dbo].[seatbooking] OFF
ALTER TABLE [dbo].[bookingcnfrm]  WITH CHECK ADD  CONSTRAINT [FK_bookingcnfrm_seatbooking] FOREIGN KEY([seatid])
REFERENCES [dbo].[seatbooking] ([id])
GO
ALTER TABLE [dbo].[bookingcnfrm] CHECK CONSTRAINT [FK_bookingcnfrm_seatbooking]
GO
ALTER TABLE [dbo].[bookingcnfrmn]  WITH CHECK ADD  CONSTRAINT [FK_bookingcnfrmn_bookingcnfrmn] FOREIGN KEY([userid])
REFERENCES [dbo].[register] ([id])
GO
ALTER TABLE [dbo].[bookingcnfrmn] CHECK CONSTRAINT [FK_bookingcnfrmn_bookingcnfrmn]
GO
ALTER TABLE [dbo].[bookingcnfrmn]  WITH CHECK ADD  CONSTRAINT [FK_bookingcnfrmn_moviecollection] FOREIGN KEY([movieid])
REFERENCES [dbo].[moviecollection] ([id])
GO
ALTER TABLE [dbo].[bookingcnfrmn] CHECK CONSTRAINT [FK_bookingcnfrmn_moviecollection]
GO
ALTER TABLE [dbo].[bookingcnfrmn]  WITH CHECK ADD  CONSTRAINT [FK_bookingcnfrmn_seatbooking] FOREIGN KEY([seatid])
REFERENCES [dbo].[seatbooking] ([id])
GO
ALTER TABLE [dbo].[bookingcnfrmn] CHECK CONSTRAINT [FK_bookingcnfrmn_seatbooking]
GO
