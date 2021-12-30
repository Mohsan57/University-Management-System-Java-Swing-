USE [master]
GO
/****** Object:  Database [UML]    Script Date: 28/12/2021 11:09:44 pm ******/
CREATE DATABASE [UML]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UML', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\UML.mdf' , SIZE = 15552KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'UML_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\UML_log.ldf' , SIZE = 5248KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [UML] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UML].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UML] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UML] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UML] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UML] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UML] SET ARITHABORT OFF 
GO
ALTER DATABASE [UML] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [UML] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UML] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UML] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UML] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UML] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UML] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UML] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UML] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UML] SET  ENABLE_BROKER 
GO
ALTER DATABASE [UML] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UML] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UML] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UML] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UML] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UML] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UML] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UML] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [UML] SET  MULTI_USER 
GO
ALTER DATABASE [UML] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UML] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UML] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UML] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [UML] SET DELAYED_DURABILITY = DISABLED 
GO
USE [UML]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[admin_id] [int] IDENTITY(1,1) NOT NULL,
	[admin_name] [varchar](30) NOT NULL,
	[admin_user_name] [varchar](30) NOT NULL,
	[password] [varchar](30) NOT NULL,
 CONSTRAINT [ADMIN_PK] PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Assignments]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Assignments](
	[assignment_id] [int] IDENTITY(1,1) NOT NULL,
	[assignment_name] [varchar](30) NOT NULL,
	[assignment_no] [int] NOT NULL,
	[file_extention] [varchar](10) NOT NULL,
	[assignemnt_file] [varbinary](max) NOT NULL,
	[description] [varchar](200) NULL,
	[upload_date] [date] NULL,
	[submission_date] [date] NOT NULL,
	[total_marks] [int] NULL,
	[instractor_id] [int] NULL,
 CONSTRAINT [ASSIGNMENT_ID_PK] PRIMARY KEY CLUSTERED 
(
	[assignment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Chat]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Chat](
	[chat_id] [int] IDENTITY(1,1) NOT NULL,
	[teacher_id] [int] NOT NULL,
	[student_id] [int] NOT NULL,
	[MSG] [varchar](max) NULL,
	[sender] [varchar](1) NULL,
	[sending_date] [date] NULL,
 CONSTRAINT [CHAT_PK] PRIMARY KEY CLUSTERED 
(
	[chat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Course]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Course](
	[course_id] [int] IDENTITY(1,1) NOT NULL,
	[course_name] [varchar](30) NOT NULL,
	[creadit_hour] [int] NOT NULL,
	[pre_required_course_id] [int] NULL,
	[semester_no] [int] NOT NULL,
	[department_id] [int] NOT NULL,
 CONSTRAINT [COURSE_PK] PRIMARY KEY CLUSTERED 
(
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Course_Allocation]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course_Allocation](
	[instractor_id] [int] IDENTITY(1,1) NOT NULL,
	[course_section_id] [int] NULL,
	[Teacher_id] [int] NULL,
 CONSTRAINT [INSTRACTOR_PK] PRIMARY KEY CLUSTERED 
(
	[instractor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Course_Section]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course_Section](
	[course_section_id] [int] IDENTITY(1,1) NOT NULL,
	[course_id] [int] NOT NULL,
	[section_id] [int] NOT NULL,
 CONSTRAINT [COURSE_SEC_PK] PRIMARY KEY CLUSTERED 
(
	[course_section_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [COURSE_SECTION_UNIQUE] UNIQUE NONCLUSTERED 
(
	[course_id] ASC,
	[section_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Degree_Offers]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Degree_Offers](
	[degree_id] [int] IDENTITY(1,1) NOT NULL,
	[degree_name] [varchar](50) NOT NULL,
	[no_of_semesters] [int] NULL,
	[per_semester_duration] [varchar](30) NULL,
	[total_fee] [numeric](10, 2) NOT NULL,
 CONSTRAINT [DEGREE_PK] PRIMARY KEY CLUSTERED 
(
	[degree_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Department]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Department](
	[department_id] [int] IDENTITY(1,1) NOT NULL,
	[department_name] [varchar](30) NOT NULL,
	[degree_id] [int] NOT NULL,
	[hod_id] [int] NOT NULL,
	[admin_id] [int] NOT NULL,
 CONSTRAINT [DEP_PK] PRIMARY KEY CLUSTERED 
(
	[department_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[degree_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[hod_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Enrollment]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enrollment](
	[enrollment_id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NOT NULL,
	[course_section_id] [int] NULL,
 CONSTRAINT [ENROLLMENT_PK] PRIMARY KEY CLUSTERED 
(
	[enrollment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOD]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HOD](
	[hod_id] [int] IDENTITY(1,1) NOT NULL,
	[hod_name] [varchar](30) NOT NULL,
	[hod_user_name] [varchar](30) NOT NULL,
	[password] [varchar](30) NOT NULL,
 CONSTRAINT [HOD_PK] PRIMARY KEY CLUSTERED 
(
	[hod_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Intermediate_Education_Detail]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Intermediate_Education_Detail](
	[education_id] [int] IDENTITY(1,1) NOT NULL,
	[qualification] [varchar](30) NOT NULL,
	[college_name] [varchar](50) NULL,
	[board_name] [varchar](30) NOT NULL,
	[roll_no] [int] NOT NULL,
	[total_marks] [int] NOT NULL,
	[obtain_marks] [int] NOT NULL,
	[grade] [char](2) NOT NULL,
 CONSTRAINT [EDUCATION_PK] PRIMARY KEY CLUSTERED 
(
	[education_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[roll_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Location]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Location](
	[location_id] [int] IDENTITY(1,1) NOT NULL,
	[country_name] [varchar](30) NOT NULL,
	[provinces] [varchar](30) NOT NULL,
	[city] [varchar](40) NOT NULL,
	[postal_code] [int] NULL,
	[home_address] [varchar](150) NULL,
 CONSTRAINT [LOCATION_PK] PRIMARY KEY CLUSTERED 
(
	[location_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Profile_Pic]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Profile_Pic](
	[photo_id] [int] IDENTITY(1,1) NOT NULL,
	[photo_name] [varchar](30) NULL,
	[photo_extension] [varchar](10) NULL,
	[photo] [varbinary](max) NULL,
 CONSTRAINT [PROFILE_PK] PRIMARY KEY CLUSTERED 
(
	[photo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Result]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Result](
	[result_id] [int] IDENTITY(1,1) NOT NULL,
	[instractor_id] [int] NULL,
	[enrollment_id] [int] NULL,
	[course_id] [int] NULL,
	[mid_marks] [numeric](6, 2) NULL,
	[final_marks] [numeric](6, 2) NULL,
	[essential_marks] [numeric](6, 2) NULL,
	[quizzes_marks] [numeric](6, 2) NULL,
	[assignments_marks] [numeric](6, 2) NULL,
 CONSTRAINT [RESULT_PK] PRIMARY KEY CLUSTERED 
(
	[result_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Section]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Section](
	[section_id] [int] IDENTITY(1,1) NOT NULL,
	[semester] [int] NOT NULL,
	[section_name] [varchar](10) NOT NULL,
	[Department_id] [int] NULL,
 CONSTRAINT [SECTION_PK] PRIMARY KEY CLUSTERED 
(
	[section_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[student_id] [int] IDENTITY(70077,1) NOT NULL,
	[first_name] [varchar](30) NOT NULL,
	[last_name] [varchar](30) NOT NULL,
	[gender] [char](1) NOT NULL,
	[date_of_birth] [date] NOT NULL,
	[cnic] [varchar](15) NOT NULL,
	[location_id] [int] NOT NULL,
	[intermediate_education_info_id] [int] NOT NULL,
	[phone_no] [varchar](12) NOT NULL,
	[photo_id] [int] NULL,
	[father_occupation] [varchar](50) NULL,
	[mother_occupation] [varchar](50) NULL,
	[department_id] [int] NOT NULL,
	[apply_date] [date] NOT NULL,
 CONSTRAINT [STUDENT_PK] PRIMARY KEY CLUSTERED 
(
	[student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[intermediate_education_info_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[cnic] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[location_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[photo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Students_Accounts]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Students_Accounts](
	[student_id] [int] NOT NULL,
	[student_email] [varchar](50) NOT NULL,
	[password] [varchar](30) NOT NULL,
UNIQUE NONCLUSTERED 
(
	[student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Submit_Assignments]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Submit_Assignments](
	[submit_id] [int] IDENTITY(1,1) NOT NULL,
	[enrollment_id] [int] NOT NULL,
	[assignment_id] [int] NULL,
	[file_name] [varchar](50) NULL,
	[file_extention] [varchar](30) NULL,
	[assignment_file] [varbinary](max) NULL,
	[obtain_marks] [int] NULL,
 CONSTRAINT [SUBMIT_PK] PRIMARY KEY CLUSTERED 
(
	[submit_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teacher](
	[teacher_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](30) NOT NULL,
	[last_name] [varchar](30) NOT NULL,
	[gender] [char](1) NOT NULL,
	[date_of_birth] [date] NOT NULL,
	[cnic] [varchar](15) NOT NULL,
	[location_id] [int] NOT NULL,
	[phone_no] [varchar](12) NOT NULL,
	[photo_id] [int] NULL,
	[department_id] [int] NOT NULL,
	[apply_date] [date] NOT NULL,
 CONSTRAINT [TEACHER_PK] PRIMARY KEY CLUSTERED 
(
	[teacher_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[cnic] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[location_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[photo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Teachers_Accounts]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teachers_Accounts](
	[teacher_id] [int] NOT NULL,
	[teacher_email] [varchar](50) NOT NULL,
	[password] [varchar](30) NOT NULL,
UNIQUE NONCLUSTERED 
(
	[teacher_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[admin_basic_info]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[admin_basic_info] (@admin int)
Returns Table
as
return(
select D.department_name, A.admin_id,A.admin_name,A.admin_user_name from Department as D
inner join Admin as A on D.admin_id = A.admin_id
where D.admin_id = @admin
)
GO
/****** Object:  UserDefinedFunction [dbo].[get_assignment_details]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[get_assignment_details]
(
	@course_name varchar(30),
	@student_id int,
	@ass_no int
)
returns table
as
return(
select A.assignment_name,A.assignment_no,A.assignment_id, A.assignemnt_file, A.submission_date, A.description, A.total_marks ,S.section_name,C.course_name  from Assignments as A
	inner join Course_Allocation as CA on A.instractor_id = CA.instractor_id
	inner join Course_Section as CS on CA.course_section_id = CS.course_section_id
	inner join Section as S on S.section_id = CS.section_id
	inner join Course as C on CS.course_id = C.course_id
	inner join Enrollment as E on E.course_section_id = CS.course_section_id
	where C.course_name=@course_name and E.student_id=@student_id and A.assignment_no=@ass_no)
GO
/****** Object:  UserDefinedFunction [dbo].[Get_Chat]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create function [dbo].[Get_Chat](
	@teacher_id int,
	@student_id int
)
Returns table
as
return(
	select T.first_name +' '+last_name as 'name', C.MSG,C.student_id,C.sender from Chat as C
	inner join Teacher as T on C.teacher_id=T.teacher_id
	where C.teacher_id =@teacher_id and C.student_id=@student_id
)
GO
/****** Object:  UserDefinedFunction [dbo].[get_instractor_id]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create function [dbo].[get_instractor_id](
	@teacher_id int,
	@section_and_course varchar(100)
)
Returns table
as
return(
	select CA.instractor_id from Course_Allocation as CA
	inner join Course_Section as CS on CA.course_section_id=CS.course_section_id
	inner join Section as S on CS.section_id=S.section_id
	inner join Course as C on CS.course_id = C.course_id
	where 'Section: '+S.section_name+' | Course Name:' +C.course_name=@section_and_course and CA.Teacher_id=@teacher_id
	)

GO
/****** Object:  UserDefinedFunction [dbo].[get_sections]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[get_sections](
	@semester_number int,
	@course_name varchar(30),
	@admin_id int
)
Returns table
as
return(
select S.section_name from Course_Section as CS
inner join Course as C on CS.course_id = C.course_id 
inner join Section as S on CS.section_id = S.section_id
inner join Department as D on C.department_id = D.department_id
where S.semester = @semester_number and C.course_name=@course_name and D.admin_id =@admin_id)

GO
/****** Object:  UserDefinedFunction [dbo].[hod_basic_info]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create function [dbo].[hod_basic_info] (@hod int)
Returns Table
as
return(
select D.department_name, H.hod_id,H.hod_name,H.hod_user_name from Department as D
inner join HOD as H on D.hod_id = H.hod_id
where D.hod_id = @hod
)

GO
/****** Object:  UserDefinedFunction [dbo].[student_detail]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create function [dbo].[student_detail](
	@student_id int
)
Returns Table
as
return(
	select S.first_name+' '+S.last_name as 'name', S.gender,S.date_of_birth, S.phone_no, D.department_name, P.photo , L.city,SA.student_email from  Student as S
	inner join Location as L on S.location_id= L.location_id
	inner join Department as D on S.department_id = D.department_id
	left join Profile_Pic as P on S.photo_id= P.photo_id
	inner join Students_Accounts as SA on SA.student_id =S.student_id
	where S.student_id=@student_id
)
GO
/****** Object:  UserDefinedFunction [dbo].[teacher_allocate_courses_and_Sections]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create function [dbo].[teacher_allocate_courses_and_Sections](
	@teacher_id int
)
Returns table
as
return(
	select 'Section: '+S.section_name+' | Course Name:'+C.course_name as 'teacher_allocate_courses' from Course_Allocation as CA
	inner join Teacher as T on CA.Teacher_id=T.teacher_id
	inner join Course_Section as CS on CA.course_section_id =CS.course_section_id
	inner join Section as S on CS.section_id = S.section_id
	inner join Course as C on CS.course_id = C.course_id
	where T.teacher_id =@teacher_id
	)
GO
/****** Object:  UserDefinedFunction [dbo].[teacher_detail]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create function [dbo].[teacher_detail](
	@teacher_id int
)
Returns Table
as
return(
	select T.first_name+' '+T.last_name as 'name', T.gender,T.date_of_birth, T.phone_no, D.department_name, P.photo , L.city,TA.teacher_email from  Teacher as T
	inner join Location as L on T.location_id= L.location_id
	inner join Department as D on T.department_id = D.department_id
	left join Profile_Pic as P on T.photo_id= P.photo_id
	inner join Teachers_Accounts as TA on TA.teacher_id=T.teacher_id
	where T.teacher_id=@teacher_id
)

GO
ALTER TABLE [dbo].[Assignments]  WITH CHECK ADD  CONSTRAINT [ASS_INSTRACTOR_FK] FOREIGN KEY([instractor_id])
REFERENCES [dbo].[Course_Allocation] ([instractor_id])
GO
ALTER TABLE [dbo].[Assignments] CHECK CONSTRAINT [ASS_INSTRACTOR_FK]
GO
ALTER TABLE [dbo].[Chat]  WITH CHECK ADD  CONSTRAINT [CHAT_STUDENT_FK] FOREIGN KEY([student_id])
REFERENCES [dbo].[Student] ([student_id])
GO
ALTER TABLE [dbo].[Chat] CHECK CONSTRAINT [CHAT_STUDENT_FK]
GO
ALTER TABLE [dbo].[Chat]  WITH CHECK ADD  CONSTRAINT [CHAT_TEACHER_FK] FOREIGN KEY([teacher_id])
REFERENCES [dbo].[Teacher] ([teacher_id])
GO
ALTER TABLE [dbo].[Chat] CHECK CONSTRAINT [CHAT_TEACHER_FK]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [COURSE_DEPARTMENT_FK] FOREIGN KEY([department_id])
REFERENCES [dbo].[Department] ([department_id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [COURSE_DEPARTMENT_FK]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [PRE_FK] FOREIGN KEY([pre_required_course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [PRE_FK]
GO
ALTER TABLE [dbo].[Course_Allocation]  WITH CHECK ADD  CONSTRAINT [ALLOCATION_TEACHER_FK] FOREIGN KEY([Teacher_id])
REFERENCES [dbo].[Teacher] ([teacher_id])
GO
ALTER TABLE [dbo].[Course_Allocation] CHECK CONSTRAINT [ALLOCATION_TEACHER_FK]
GO
ALTER TABLE [dbo].[Course_Allocation]  WITH CHECK ADD  CONSTRAINT [COURSE_SEC_ALLOCATION_FK] FOREIGN KEY([course_section_id])
REFERENCES [dbo].[Course_Section] ([course_section_id])
GO
ALTER TABLE [dbo].[Course_Allocation] CHECK CONSTRAINT [COURSE_SEC_ALLOCATION_FK]
GO
ALTER TABLE [dbo].[Course_Section]  WITH CHECK ADD  CONSTRAINT [ALLOCA_COU_FK] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[Course_Section] CHECK CONSTRAINT [ALLOCA_COU_FK]
GO
ALTER TABLE [dbo].[Course_Section]  WITH CHECK ADD  CONSTRAINT [ALLOCA_SEC_FK] FOREIGN KEY([section_id])
REFERENCES [dbo].[Section] ([section_id])
GO
ALTER TABLE [dbo].[Course_Section] CHECK CONSTRAINT [ALLOCA_SEC_FK]
GO
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [ADMIN_FK] FOREIGN KEY([admin_id])
REFERENCES [dbo].[Admin] ([admin_id])
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [ADMIN_FK]
GO
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [DEGREE_FK] FOREIGN KEY([degree_id])
REFERENCES [dbo].[Degree_Offers] ([degree_id])
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [DEGREE_FK]
GO
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [HOD_FK] FOREIGN KEY([hod_id])
REFERENCES [dbo].[HOD] ([hod_id])
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [HOD_FK]
GO
ALTER TABLE [dbo].[Enrollment]  WITH CHECK ADD  CONSTRAINT [COURSE_SEC_ENROLMENT_FK] FOREIGN KEY([course_section_id])
REFERENCES [dbo].[Course_Section] ([course_section_id])
GO
ALTER TABLE [dbo].[Enrollment] CHECK CONSTRAINT [COURSE_SEC_ENROLMENT_FK]
GO
ALTER TABLE [dbo].[Enrollment]  WITH CHECK ADD  CONSTRAINT [ENROLLMENT_STUDENT_FK] FOREIGN KEY([student_id])
REFERENCES [dbo].[Student] ([student_id])
GO
ALTER TABLE [dbo].[Enrollment] CHECK CONSTRAINT [ENROLLMENT_STUDENT_FK]
GO
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [RESULT_COURSE_FK] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [RESULT_COURSE_FK]
GO
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [RESULT_ENROLLMENT_FK] FOREIGN KEY([enrollment_id])
REFERENCES [dbo].[Enrollment] ([enrollment_id])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [RESULT_ENROLLMENT_FK]
GO
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [RESULT_INSTRACTOR_FK] FOREIGN KEY([instractor_id])
REFERENCES [dbo].[Course_Allocation] ([instractor_id])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [RESULT_INSTRACTOR_FK]
GO
ALTER TABLE [dbo].[Section]  WITH CHECK ADD  CONSTRAINT [SEC_DEPARTMENT_FK] FOREIGN KEY([Department_id])
REFERENCES [dbo].[Department] ([department_id])
GO
ALTER TABLE [dbo].[Section] CHECK CONSTRAINT [SEC_DEPARTMENT_FK]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [INTERMEDIATE_FK] FOREIGN KEY([intermediate_education_info_id])
REFERENCES [dbo].[Intermediate_Education_Detail] ([education_id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [INTERMEDIATE_FK]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [STUDENT_DEPARTMENT_ID] FOREIGN KEY([department_id])
REFERENCES [dbo].[Department] ([department_id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [STUDENT_DEPARTMENT_ID]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [STUDENT_LOCATION_FK] FOREIGN KEY([location_id])
REFERENCES [dbo].[Location] ([location_id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [STUDENT_LOCATION_FK]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [STUDENT_PHOTO_FK] FOREIGN KEY([photo_id])
REFERENCES [dbo].[Profile_Pic] ([photo_id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [STUDENT_PHOTO_FK]
GO
ALTER TABLE [dbo].[Students_Accounts]  WITH CHECK ADD  CONSTRAINT [STUDENT_ACCOUNT_FK] FOREIGN KEY([student_id])
REFERENCES [dbo].[Student] ([student_id])
GO
ALTER TABLE [dbo].[Students_Accounts] CHECK CONSTRAINT [STUDENT_ACCOUNT_FK]
GO
ALTER TABLE [dbo].[Submit_Assignments]  WITH CHECK ADD  CONSTRAINT [ASSIGNMENT_FK] FOREIGN KEY([assignment_id])
REFERENCES [dbo].[Assignments] ([assignment_id])
GO
ALTER TABLE [dbo].[Submit_Assignments] CHECK CONSTRAINT [ASSIGNMENT_FK]
GO
ALTER TABLE [dbo].[Submit_Assignments]  WITH CHECK ADD  CONSTRAINT [ENROLLMENT_FK] FOREIGN KEY([enrollment_id])
REFERENCES [dbo].[Enrollment] ([enrollment_id])
GO
ALTER TABLE [dbo].[Submit_Assignments] CHECK CONSTRAINT [ENROLLMENT_FK]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [LOCATION_FK] FOREIGN KEY([location_id])
REFERENCES [dbo].[Location] ([location_id])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [LOCATION_FK]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [PHOTO_FK] FOREIGN KEY([photo_id])
REFERENCES [dbo].[Profile_Pic] ([photo_id])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [PHOTO_FK]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [TEACHER_DEPARTMENT_FK] FOREIGN KEY([department_id])
REFERENCES [dbo].[Department] ([department_id])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [TEACHER_DEPARTMENT_FK]
GO
ALTER TABLE [dbo].[Teachers_Accounts]  WITH CHECK ADD  CONSTRAINT [TEACHER_ACCOUNT_FK] FOREIGN KEY([teacher_id])
REFERENCES [dbo].[Teacher] ([teacher_id])
GO
ALTER TABLE [dbo].[Teachers_Accounts] CHECK CONSTRAINT [TEACHER_ACCOUNT_FK]
GO
ALTER TABLE [dbo].[Intermediate_Education_Detail]  WITH CHECK ADD CHECK  (([grade]='A+' OR [grade]='A' OR [grade]='B+' OR [grade]='B' OR [grade]='C+' OR [grade]='C' OR [grade]='D+' OR [grade]='D' OR [grade]='E' OR [grade]='F'))
GO
ALTER TABLE [dbo].[Intermediate_Education_Detail]  WITH CHECK ADD  CONSTRAINT [obtain_marks] CHECK  (([obtain_marks]<=[total_marks]))
GO
ALTER TABLE [dbo].[Intermediate_Education_Detail] CHECK CONSTRAINT [obtain_marks]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD CHECK  (([gender]='F' OR [gender]='M'))
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD CHECK  (([gender]='F' OR [gender]='M'))
GO
/****** Object:  StoredProcedure [dbo].[Add_Chat]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Add_Chat](
	@teacher_id int,
	@student_id int,
	@MSG varchar(max),
	@sender varchar(1)
)
as
	insert into Chat(teacher_id,student_id,MSG,sender,sending_date)
	values(@teacher_id,@student_id,@MSG,@sender,GETDATE())
GO
/****** Object:  StoredProcedure [dbo].[add_courses]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[add_courses](
	@course_name varchar(30),
	@creadit_hour int ,
	@pre_required_course_name varchar(30),
	@semester_no int,
	@department_id int
)
as
	declare @pre_required_course_id int
	set @pre_required_course_id = (select Course.course_id from Course where course_name=@pre_required_course_name)
	insert into Course(course_name,creadit_hour,pre_required_course_id,semester_no,department_id)
	values (@course_name,@creadit_hour,@pre_required_course_id,@semester_no,@department_id)

GO
/****** Object:  StoredProcedure [dbo].[set_Enrollment]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[set_Enrollment](
	@student_id int,
	@course_name varchar(30),
	@section varchar(10)
)
as
	declare @course_sec_id int
	set @course_sec_id=(select CS.course_section_id from Course_Section as CS
						inner join Course as C on CS.course_id=C.course_id
						inner join Section as S on CS.section_id = S.section_id
						where C.course_name=@course_name and S.section_name=@section
						)
	
	IF EXISTS(SELECT 1 FROM Enrollment WITH(NOLOCK)
		      WHERE course_section_id = @course_sec_id and student_id =@student_id)
	    BEGIN
			print 'Already Exist'
		END
	ELSE
		BEGIN
			insert into Enrollment(student_id,course_section_id)
			values (@student_id,@course_sec_id)
		END

GO
/****** Object:  StoredProcedure [dbo].[store_course_allocation]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[store_course_allocation](
	@course_name varchar(30),
	@section varchar(10),
	@teacher_name varchar(50)
)
as
	declare @course_sec_id int
	set @course_sec_id=(select CS.course_section_id from Course_Section as CS
						inner join Course as C on CS.course_id=C.course_id
						inner join Section as S on CS.section_id = S.section_id
						where C.course_name=@course_name and S.section_name=@section
						)
	declare @teacher_id int
	set @teacher_id = (select teacher_id from Teacher where  first_name+' '+last_name = @teacher_name)
	
	IF EXISTS(SELECT 1 FROM Course_Allocation WITH(NOLOCK)
		      WHERE course_section_id = @course_sec_id and Teacher_id =@teacher_id)
	    BEGIN
			print 'Already Exist'
		END
	ELSE
		BEGIN
			insert into Course_Allocation(course_section_id,Teacher_id)
			values (@course_sec_id,@teacher_id)
		END
GO
/****** Object:  StoredProcedure [dbo].[store_inter_education]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[store_inter_education]
(
	@qualification varchar(30),
	@college_name varchar(50),
	@board_name varchar(30),
	@roll_no int ,
	@total_marks int ,
	@obtain_marks int,
	@grade char(2)
)
as
	insert into Intermediate_Education_Detail(qualification,college_name,board_name,roll_no,total_marks,obtain_marks,grade)
	values (@qualification,@college_name,@board_name,@roll_no,@total_marks,@obtain_marks,@grade)

GO
/****** Object:  StoredProcedure [dbo].[store_location]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[store_location](
	@country varchar(30),
	@prov varchar(30),
	@city varchar(40),
	@postal_code int,
	@home_add varchar(150)
)
as
	insert into Location(country_name,provinces,city,postal_code,home_address)
	values (@country,@prov,@city,@postal_code,@home_add);
GO
/****** Object:  StoredProcedure [dbo].[store_student_info]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[store_student_info](
	@first_name varchar(30) ,
	@last_name varchar(30) ,
	@gender char(1),
	@date_of_birth date ,
	@cnic varchar(15) ,
	@phone_no varchar(12) ,
	@father_occupation varchar(50),
	@mother_occupation varchar(50),
	@department_id int ,
	@apply_date date ,
	@pass varchar(30)
)
as
	declare @location_id int
	set @location_id = (Select max(location_id) from Location )
	declare @intermediate_education_info_id int
	set @intermediate_education_info_id = (Select max(education_id) from Intermediate_Education_Detail)
	declare @photo_id int
	set @photo_id = (Select max(photo_id) from Profile_Pic )
	insert into Student(first_name,last_name,gender,date_of_birth,cnic,location_id,intermediate_education_info_id,phone_no,photo_id,father_occupation,mother_occupation,department_id,apply_date)
	values (@first_name,@last_name,@gender,@date_of_birth,@cnic,@location_id,@intermediate_education_info_id,@phone_no,@photo_id,@father_occupation,@mother_occupation,@department_id,@apply_date);
	DECLARE @id INT
	set @id= ( select max(Student.student_id) from Student)
	declare @num2 varchar(30)
	set @num2 = (select cast (@id as varchar))
	set @num2+='@student.uol.edu.pk'
	insert into Students_Accounts(student_id,student_email,password)
	values (@id,@num2,@pass);

GO
/****** Object:  StoredProcedure [dbo].[store_teacher_info]    Script Date: 28/12/2021 11:09:44 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[store_teacher_info](
	@first_name varchar(30) ,
	@last_name varchar(30) ,
	@gender char(1) ,
	@date_of_birth date ,
	@cnic varchar(15) ,
	@phone_no varchar(12),
	@department_id int,
	@apply_date date,
	@pass varchar(30)
)
as
	declare @location_id int
	set @location_id = (Select max(location_id) from Location )
	declare @photo_id int
	set @photo_id = (Select max(photo_id) from Profile_Pic )
	insert into Teacher(first_name,last_name,gender,date_of_birth,cnic,location_id,phone_no,photo_id,department_id,apply_date)
	values (@first_name,@last_name,@gender,@date_of_birth,@cnic,@location_id,@phone_no,@photo_id,@department_id,@apply_date);
	DECLARE @id INT
	set @id= ( select max(Teacher.teacher_id) from Teacher)
	declare @num2 varchar(30)
	set @num2 = (select cast (@id as varchar))
	set @num2+='@teacher.uol.edu.pk'
	insert into Teachers_Accounts(teacher_id,teacher_email,password)
	values (@id,@num2,@pass);
GO
USE [master]
GO
ALTER DATABASE [UML] SET  READ_WRITE 
GO
