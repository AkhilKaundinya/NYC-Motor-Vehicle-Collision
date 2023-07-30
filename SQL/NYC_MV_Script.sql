/*
 * ER/Studio Data Architect SQL Code Generation
 * Project :      NYC_MV_Collision_model.DM1
 *
 * Date Created : Thursday, April 20, 2023 17:16:27
 * Target DBMS : Microsoft SQL Server 2019
 */

/* 
 * TABLE: DIM_Borough 
 */

CREATE TABLE DIM_Borough(
    borough_sk        int            IDENTITY(1,1),
    Borough           varchar(80)    NULL,
    DI_PID            varchar(20)    NULL,
    DI_Create_Date    datetime       CONSTRAINT [DF__dim_arres__DI_Cr__37A5467C] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT PK__dim_arre__E0852AFE0796CE54 PRIMARY KEY NONCLUSTERED (borough_sk)
)

go


IF OBJECT_ID('DIM_Borough') IS NOT NULL
    PRINT '<<< CREATED TABLE DIM_Borough >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIM_Borough >>>'
go

/* 
 * TABLE: Dim_CONTRIBUTING_FACTOR 
 */

CREATE TABLE Dim_CONTRIBUTING_FACTOR(
    CONTRIBUTING_FACTOR_SK    int             IDENTITY(1,1),
    CONTRIBUTING_FACTOR       varchar(255)    NULL,
    DI_PID                    varchar(20)     NULL,
    DI_Create_Date            datetime        CONSTRAINT [DF__Dim_CONTR__DI_Cr__403A8C7D] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_CONT__B5F90DB18EEBCEAA PRIMARY KEY NONCLUSTERED (CONTRIBUTING_FACTOR_SK)
)

go


IF OBJECT_ID('Dim_CONTRIBUTING_FACTOR') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_CONTRIBUTING_FACTOR >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_CONTRIBUTING_FACTOR >>>'
go

/* 
 * TABLE: Dim_DRIVER_LICENSE_JURISDICTION 
 */

CREATE TABLE Dim_DRIVER_LICENSE_JURISDICTION(
    DRIVER_LICENSE_JURISDICTION_SK    int             IDENTITY(1,1),
    DRIVER_LICENSE_JURISDICTION       varchar(255)    NULL,
    DI_PID                            varchar(20)     NULL,
    DI_Create_Date                    datetime        CONSTRAINT [DF__Dim_DRIVE__DI_Cr__4316F928] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_DRIV__337B452E46399EAC PRIMARY KEY NONCLUSTERED (DRIVER_LICENSE_JURISDICTION_SK)
)

go


IF OBJECT_ID('Dim_DRIVER_LICENSE_JURISDICTION') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_DRIVER_LICENSE_JURISDICTION >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_DRIVER_LICENSE_JURISDICTION >>>'
go

/* 
 * TABLE: Dim_DRIVER_LICENSE_STATUS 
 */

CREATE TABLE Dim_DRIVER_LICENSE_STATUS(
    DRIVER_LICENSE_STATUS_SK    int             IDENTITY(1,1),
    DRIVER_LICENSE_STATUS       varchar(255)    NULL,
    DI_PID                      varchar(20)     NULL,
    DI_Create_Date              datetime        CONSTRAINT [DF__Dim_DRIVE__DI_Cr__45F365D3] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_DRIV__D2EBE310D9F19230 PRIMARY KEY NONCLUSTERED (DRIVER_LICENSE_STATUS_SK)
)

go


IF OBJECT_ID('Dim_DRIVER_LICENSE_STATUS') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_DRIVER_LICENSE_STATUS >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_DRIVER_LICENSE_STATUS >>>'
go

/* 
 * TABLE: Dim_EMOTIONAL_STATUS 
 */

CREATE TABLE Dim_EMOTIONAL_STATUS(
    EMOTIONAL_STATUS_SK    int            IDENTITY(1,1),
    EMOTIONAL_STATUS       varchar(80)    NULL,
    DI_PID                 varchar(20)    NULL,
    DI_Create_Date         datetime       CONSTRAINT [DF__Dim_EMOTI__DI_Cr__4BAC3F29] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_EMOT__DD0DDFCC1ABB8A15 PRIMARY KEY NONCLUSTERED (EMOTIONAL_STATUS_SK)
)

go


IF OBJECT_ID('Dim_EMOTIONAL_STATUS') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_EMOTIONAL_STATUS >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_EMOTIONAL_STATUS >>>'
go

/* 
 * TABLE: Dim_PED_ROLE 
 */

CREATE TABLE Dim_PED_ROLE(
    PED_ROLE_SK       int             IDENTITY(1,1),
    PED_ROLE          varchar(255)    NULL,
    DI_PID            varchar(20)     NULL,
    DI_Create_Date    datetime        CONSTRAINT [DF__Dim_PED_R__DI_Cr__5441852A] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_PED___DD4B8B980CD00ABF PRIMARY KEY NONCLUSTERED (PED_ROLE_SK)
)

go


IF OBJECT_ID('Dim_PED_ROLE') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_PED_ROLE >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_PED_ROLE >>>'
go

/* 
 * TABLE: Dim_PERSON_INJURY 
 */

CREATE TABLE Dim_PERSON_INJURY(
    PERSON_INJURY_SK    int            IDENTITY(1,1),
    PERSON_INJURY       varchar(80)    NULL,
    DI_PID              varchar(20)    NULL,
    DI_Create_Date      datetime       CONSTRAINT [DF__Dim_PERSO__DI_Cr__571DF1D5] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_PERS__E763CE781FAECEDF PRIMARY KEY NONCLUSTERED (PERSON_INJURY_SK)
)

go


IF OBJECT_ID('Dim_PERSON_INJURY') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_PERSON_INJURY >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_PERSON_INJURY >>>'
go

/* 
 * TABLE: Dim_PERSON_SEX 
 */

CREATE TABLE Dim_PERSON_SEX(
    PERSON_SEX_SK     int            IDENTITY(1,1),
    PERSON_SEX        varchar(10)    NULL,
    DI_PID            varchar(20)    NULL,
    DI_Create_Date    datetime       CONSTRAINT [DF__Dim_PERSO__DI_Cr__59FA5E80] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_PERS__A6F61C9E82EF027D PRIMARY KEY NONCLUSTERED (PERSON_SEX_SK)
)

go


IF OBJECT_ID('Dim_PERSON_SEX') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_PERSON_SEX >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_PERSON_SEX >>>'
go

/* 
 * TABLE: Dim_PERSON_TYPE 
 */

CREATE TABLE Dim_PERSON_TYPE(
    PERSON_TYPE_SK    int            IDENTITY(1,1),
    PERSON_TYPE       varchar(80)    NULL,
    DI_PID            varchar(20)    NULL,
    DI_Create_Date    datetime       CONSTRAINT [DF__Dim_Perso__DI_Cr__5CD6CB2B] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_Pers__18A528B2B74FF7E7 PRIMARY KEY NONCLUSTERED (PERSON_TYPE_SK)
)

go


IF OBJECT_ID('Dim_PERSON_TYPE') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_PERSON_TYPE >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_PERSON_TYPE >>>'
go

/* 
 * TABLE: Dim_PUBLIC_PROPERTY_DAMAGE 
 */

CREATE TABLE Dim_PUBLIC_PROPERTY_DAMAGE(
    PUBLIC_PROPERTY_DAMAGE_SK    int             IDENTITY(1,1),
    PUBLIC_PROPERTY_DAMAGE       varchar(255)    NULL,
    DI_PID                       varchar(20)     NULL,
    DI_Create_Date               datetime        CONSTRAINT [DF__Dim_PUBLI__DI_Cr__00200768] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_PUBL__2AF417C456D4A911 PRIMARY KEY NONCLUSTERED (PUBLIC_PROPERTY_DAMAGE_SK)
)

go


IF OBJECT_ID('Dim_PUBLIC_PROPERTY_DAMAGE') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_PUBLIC_PROPERTY_DAMAGE >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_PUBLIC_PROPERTY_DAMAGE >>>'
go

/* 
 * TABLE: Dim_STATE_REGISTRATION 
 */

CREATE TABLE Dim_STATE_REGISTRATION(
    STATE_REGISTRATION_SK    int            IDENTITY(1,1),
    STATE_REGISTRATION       varchar(80)    NULL,
    DI_PID                   varchar(20)    NULL,
    DI_Create_Date           datetime       CONSTRAINT [DF__Dim_STATE__DI_Cr__6B24EA82] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_STAT__CCA21E58CABADF89 PRIMARY KEY NONCLUSTERED (STATE_REGISTRATION_SK)
)

go


IF OBJECT_ID('Dim_STATE_REGISTRATION') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_STATE_REGISTRATION >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_STATE_REGISTRATION >>>'
go

/* 
 * TABLE: Dim_VEHICLE_TYPE 
 */

CREATE TABLE Dim_VEHICLE_TYPE(
    VEHICLE_TYPE_SK    int            IDENTITY(1,1),
    VEHICLE_TYPE       varchar(80)    NULL,
    DI_PID             varchar(20)    NULL,
    DI_Create_Date     datetime       CONSTRAINT [DF__Dim_VEHIC__DI_Cr__797309D9] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_VEHI__ECDC62B759FD5ACA PRIMARY KEY NONCLUSTERED (VEHICLE_TYPE_SK)
)

go


IF OBJECT_ID('Dim_VEHICLE_TYPE') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_VEHICLE_TYPE >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_VEHICLE_TYPE >>>'
go

/* 
 * TABLE: DimDate 
 */

CREATE TABLE DimDate(
    Date_SK      int            NOT NULL,
    Date_AK      DATE            NOT NULL,
    DayName      char(15)       NULL,
    DayOfYear    int            NULL,
    Month        int            NULL,
    MonthName    char(15)       NULL,
    Quarter      varchar(10)    NULL,
    Year         int            NULL,
    MMYY         varchar(10)    NULL,
    CONSTRAINT PK6 PRIMARY KEY NONCLUSTERED (Date_SK)
)

go


IF OBJECT_ID('DimDate') IS NOT NULL
    PRINT '<<< CREATED TABLE DimDate >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DimDate >>>'
go

/* 
 * TABLE: FCT_COLLISION_CRASHES 
 */

CREATE TABLE FCT_COLLISION_CRASHES(
    collision_sk                     bigint         NOT NULL,
    collision_id                     bigint         NULL,
    collision_dt                     date           NULL,
    collision_dt_sk                  int            NULL,
    collision_day                    int            NULL,
    collision_time                   time(7)        NULL,
    collision_hour                   int            NULL,
    collision_dayoftheweek           int            NULL,
    borough_sk                       int            NULL,
    on_street_name                   varchar(40)    NULL,
    number_of_cyclist_injured        int            NULL,
    number_of_cyclist_killed         int            NULL,
    number_of_motorist_injured       int            NULL,
    number_of_motorist_killed        int            NULL,
    number_of_pedestrians_injured    int            NULL,
    number_of_pedestrians_killed     int            NULL,
    number_of_persons_injured        int            NULL,
    number_of_persons_killed         int            NULL,
    DI_PID                           varchar(20)    NULL,
    DI_Create_Date                   datetime       CONSTRAINT [DF__fct_colli__DI_Cr__02FC7413] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT PK__fct_coll__998179029ADEA82D_1 PRIMARY KEY NONCLUSTERED (collision_sk)
)

go


IF OBJECT_ID('FCT_COLLISION_CRASHES') IS NOT NULL
    PRINT '<<< CREATED TABLE FCT_COLLISION_CRASHES >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE FCT_COLLISION_CRASHES >>>'
go

/* 
 * TABLE: FCT_PERSON_COLLISION 
 */

CREATE TABLE FCT_PERSON_COLLISION(
    PERSON_SK                 int            NOT NULL,
    UNIQUE_ID                 int            NOT NULL,
    COLLISION_ID              int            NULL,
    PERSON_ID                 varchar(80)    NULL,
    PERSON_TYPE_SK            int            NULL,
    PERSON_INJURY_SK          int            NULL,
    EMOTIONAL_STATUS_SK       int            NULL,
    PED_ROLE_SK               int            NULL,
    PERSON_SEX_SK             int            NULL,
    CONTRIBUTING_FACTOR_SK    int            NULL,
    PERSON_AGE                int            NULL,
    DI_PID                    varchar(20)    NULL,
    DI_Create_Date            datetime       CONSTRAINT [DF__fct_colli__DI_Cr__08B54D69] DEFAULT (getdate()) NULL,
    collision_sk              bigint         NOT NULL,
    CONSTRAINT PK__fct_coll__61C269094D358E86 PRIMARY KEY NONCLUSTERED (PERSON_SK)
)

goalter table FCT_PERSON_COLLISION alter column collision_sk bigint NOT NULL


IF OBJECT_ID('FCT_PERSON_COLLISION') IS NOT NULL
    PRINT '<<< CREATED TABLE FCT_PERSON_COLLISION >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE FCT_PERSON_COLLISION >>>'
go

/* 
 * TABLE: FCT_VEHICLE_COLLISION 
 */

CREATE TABLE FCT_VEHICLE_COLLISION(
    VEHICLE_SK                        bigint            NOT NULL,
    UNIQUE_ID                         bigint       NULL,
    COLLISION_ID                      int            NULL,
    VEHICLE_ID                        varchar(80)    NULL,
    collision_sk                      bigint         NOT NULL,
    STATE_REGISTRATION_SK             int            NULL,
    VEHICLE_TYPE_SK                   int            NULL,
    CONTRIBUTING_FACTOR_SK            int            NULL,
    PERSON_SEX_SK                     int            NULL,
    DRIVER_LICENSE_STATUS_SK          int            NULL,
    DRIVER_LICENSE_JURISDICTION_SK    int            NULL,
    PUBLIC_PROPERTY_DAMAGE_SK         int            NULL,
    VEHICLE_YEAR                      varchar(80)    NULL,
    VEHICLE_OCCUPANTS                 int            NULL,
    DI_PID                            varchar(20)    NULL,
    DI_CREATE_DATE                    datetime       CONSTRAINT [DF__fct_Colli__DI_Cr__0E6E26BF] DEFAULT (getdate()) NOT NULL
)

goalter table FCT_VEHICLE_COLLISION alter column VEHICLE_SK int NOT NULL
alter table FCT_VEHICLE_COLLISION alter column UNIQUE_ID bigint NULL
alter table FCT_VEHICLE_COLLISION alter column collision_sk bigint NOT NULL


IF OBJECT_ID('FCT_VEHICLE_COLLISION') IS NOT NULL
    PRINT '<<< CREATED TABLE FCT_VEHICLE_COLLISION >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE FCT_VEHICLE_COLLISION >>>'
go

/* 
 * TABLE: FCT_COLLISION_CRASHES 
 */

ALTER TABLE FCT_COLLISION_CRASHES ADD CONSTRAINT RefDIM_Borough13 
    FOREIGN KEY (borough_sk)
    REFERENCES DIM_Borough(borough_sk)
go

ALTER TABLE FCT_COLLISION_CRASHES ADD CONSTRAINT RefDimDate14 
    FOREIGN KEY (collision_dt_sk)
    REFERENCES DimDate(Date_SK)
go

/* 
 * TABLE: FCT_PERSON_COLLISION 
 */

ALTER TABLE FCT_PERSON_COLLISION ADD CONSTRAINT RefDim_PERSON_TYPE2 
    FOREIGN KEY (PERSON_TYPE_SK)
    REFERENCES Dim_PERSON_TYPE(PERSON_TYPE_SK)
go

ALTER TABLE FCT_PERSON_COLLISION ADD CONSTRAINT RefDim_PERSON_INJURY3 
    FOREIGN KEY (PERSON_INJURY_SK)
    REFERENCES Dim_PERSON_INJURY(PERSON_INJURY_SK)
go

ALTER TABLE FCT_PERSON_COLLISION ADD CONSTRAINT RefDim_EMOTIONAL_STATUS4 
    FOREIGN KEY (EMOTIONAL_STATUS_SK)
    REFERENCES Dim_EMOTIONAL_STATUS(EMOTIONAL_STATUS_SK)
go

ALTER TABLE FCT_PERSON_COLLISION ADD CONSTRAINT RefDim_PERSON_SEX5 
    FOREIGN KEY (PERSON_SEX_SK)
    REFERENCES Dim_PERSON_SEX(PERSON_SEX_SK)
go

ALTER TABLE FCT_PERSON_COLLISION ADD CONSTRAINT RefDim_CONTRIBUTING_FACTOR16 
    FOREIGN KEY (CONTRIBUTING_FACTOR_SK)
    REFERENCES Dim_CONTRIBUTING_FACTOR(CONTRIBUTING_FACTOR_SK)
go

ALTER TABLE FCT_PERSON_COLLISION ADD CONSTRAINT RefFCT_COLLISION_CRASHES18 
    FOREIGN KEY (collision_sk)
    REFERENCES FCT_COLLISION_CRASHES(collision_sk)
go

ALTER TABLE FCT_PERSON_COLLISION ADD CONSTRAINT RefDim_PED_ROLE1 
    FOREIGN KEY (PED_ROLE_SK)
    REFERENCES Dim_PED_ROLE(PED_ROLE_SK)
go


/* 
 * TABLE: FCT_VEHICLE_COLLISION 
 */

ALTER TABLE FCT_VEHICLE_COLLISION ADD CONSTRAINT RefDim_PERSON_SEX7 
    FOREIGN KEY (PERSON_SEX_SK)
    REFERENCES Dim_PERSON_SEX(PERSON_SEX_SK)
go

ALTER TABLE FCT_VEHICLE_COLLISION ADD CONSTRAINT RefDim_PUBLIC_PROPERTY_DAMAGE8 
    FOREIGN KEY (PUBLIC_PROPERTY_DAMAGE_SK)
    REFERENCES Dim_PUBLIC_PROPERTY_DAMAGE(PUBLIC_PROPERTY_DAMAGE_SK)
go

ALTER TABLE FCT_VEHICLE_COLLISION ADD CONSTRAINT RefDim_DRIVER_LICENSE_JURISDICTION9 
    FOREIGN KEY (DRIVER_LICENSE_JURISDICTION_SK)
    REFERENCES Dim_DRIVER_LICENSE_JURISDICTION(DRIVER_LICENSE_JURISDICTION_SK)
go

ALTER TABLE FCT_VEHICLE_COLLISION ADD CONSTRAINT RefDim_VEHICLE_TYPE10 
    FOREIGN KEY (VEHICLE_TYPE_SK)
    REFERENCES Dim_VEHICLE_TYPE(VEHICLE_TYPE_SK)
go

ALTER TABLE FCT_VEHICLE_COLLISION ADD CONSTRAINT RefDim_STATE_REGISTRATION11 
    FOREIGN KEY (STATE_REGISTRATION_SK)
    REFERENCES Dim_STATE_REGISTRATION(STATE_REGISTRATION_SK)
go

ALTER TABLE FCT_VEHICLE_COLLISION ADD CONSTRAINT RefDim_DRIVER_LICENSE_STATUS12 
    FOREIGN KEY (DRIVER_LICENSE_STATUS_SK)
    REFERENCES Dim_DRIVER_LICENSE_STATUS(DRIVER_LICENSE_STATUS_SK)
go

ALTER TABLE FCT_VEHICLE_COLLISION ADD CONSTRAINT RefDim_CONTRIBUTING_FACTOR15 
    FOREIGN KEY (CONTRIBUTING_FACTOR_SK)
    REFERENCES Dim_CONTRIBUTING_FACTOR(CONTRIBUTING_FACTOR_SK)
go

ALTER TABLE FCT_VEHICLE_COLLISION ADD CONSTRAINT RefFCT_COLLISION_CRASHES17 
    FOREIGN KEY (collision_sk)
    REFERENCES FCT_COLLISION_CRASHES(collision_sk)
go


