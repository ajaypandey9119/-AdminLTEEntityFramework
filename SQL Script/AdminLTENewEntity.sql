USE [AdminLTENewEntity]
GO

/****** Object:  Table [dbo].[Employee]    Script Date: 2018-09-29 4:07:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [nvarchar](50) NULL,
	[EmployeeGender] [nvarchar](10) NULL,
	[EmployeeDesignation] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO



GO

/****** Object:  StoredProcedure [dbo].[spDeleteEmployee]    Script Date: 2018-09-29 4:07:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[spDeleteEmployee]  
       @EmployeeID INT  
AS  
    BEGIN  
        DELETE dbo.Employee  
        WHERE dbo.Employee.EmployeeID = @EmployeeID;  
    END;  
GO




/****** Object:  StoredProcedure [dbo].[spGetAllEmployees]    Script Date: 2018-09-29 4:07:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGetAllEmployees]  
AS  
    BEGIN  
        SELECT emp.*  
        FROM dbo.Employee emp;  
    END;  

GO




/****** Object:  StoredProcedure [dbo].[spInsertEmployeeDetails]    Script Date: 2018-09-29 4:08:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spInsertEmployeeDetails]  
       @EmployeeName        NVARCHAR(50),  
       @EmployeeGender      NVARCHAR(10),  
       @EmployeeDesignation NVARCHAR(50)  
AS  
    BEGIN  
                INSERT dbo.Employee  
          (  
             --EmployeeID - this column value is auto-generated  
             EmployeeName,  
             EmployeeGender,  
             EmployeeDesignation  
          )  
          VALUES  
          (  
             -- EmployeeID - int  
             N'', -- EmployeeName - nvarchar  
             N'', -- EmployeeGender - nvarchar  
             N'' -- EmployeeDesignation - nvarchar  
          )  
    END;  
GO

/****** Object:  StoredProcedure [dbo].[spUpdateEmployee]    Script Date: 2018-09-29 4:08:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

  
CREATE PROCEDURE [dbo].[spUpdateEmployee]  
@EmployeeID int,  
@EmployeeName nvarchar(100),  
    @EmployeeGender nvarchar(10),  
    @EmployeeDesignation nvarchar(100)  
AS  
BEGIN  
UPDATE dbo.Employee  
SET  
    --EmployeeID - this column value is auto-generated  
    dbo.Employee.EmployeeName = @EmployeeName, -- nvarchar  
    dbo.Employee.EmployeeGender = @EmployeeGender, -- nvarchar  
    dbo.Employee.EmployeeDesignation = @EmployeeDesignation-- nvarchar  
WHERE   
dbo.Employee.EmployeeID = @EmployeeID  
END  

GO


