
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/22/2018 21:49:52
-- Generated from EDMX file: C:\Users\hanjacobs\Desktop\Uni\Post Grad\2018\Semester 2 2018\FIT5032\majorasses\App\Health Helper App\Health Helper App\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Database1];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Details'
CREATE TABLE [dbo].[Details] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [MealPlanId] int  NOT NULL
);
GO

-- Creating table 'MealPlans'
CREATE TABLE [dbo].[MealPlans] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Plan] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Details'
ALTER TABLE [dbo].[Details]
ADD CONSTRAINT [PK_Details]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'MealPlans'
ALTER TABLE [dbo].[MealPlans]
ADD CONSTRAINT [PK_MealPlans]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [MealPlanId] in table 'Details'
ALTER TABLE [dbo].[Details]
ADD CONSTRAINT [FK_MealPlanDetails]
    FOREIGN KEY ([MealPlanId])
    REFERENCES [dbo].[MealPlans]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MealPlanDetails'
CREATE INDEX [IX_FK_MealPlanDetails]
ON [dbo].[Details]
    ([MealPlanId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------