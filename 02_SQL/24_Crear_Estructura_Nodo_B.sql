USE BD_ENOE_Nodo_B;
GO

CREATE TABLE hechos_ocupacion (
    id_registro BIGINT IDENTITY(1,1) PRIMARY KEY,

    anio INT NOT NULL,
    trimestre INT NOT NULL,

    upm BIGINT NULL,
    n_pro_viv INT NULL,
    n_hog INT NULL,
    n_ren INT NULL,

    ent INT NULL,
    sex INT NULL,
    eda INT NULL,

    clase1 INT NULL,
    clase2 INT NULL,
    niv_ins INT NULL,
    pos_ocu INT NULL,
    rama INT NULL
);
GO

CREATE TABLE entidad (
    CVE INT PRIMARY KEY,
    DESCRIP NVARCHAR(100)
);

CREATE TABLE sexo (
    CVE INT PRIMARY KEY,
    DESCRIP NVARCHAR(100)
);

CREATE TABLE clase1 (
    CVE INT PRIMARY KEY,
    DESCRIP NVARCHAR(100)
);

CREATE TABLE clase2 (
    CVE INT PRIMARY KEY,
    DESCRIP NVARCHAR(100)
);

CREATE TABLE niv_ins (
    CVE INT PRIMARY KEY,
    DESCRIP NVARCHAR(100)
);

CREATE TABLE pos_ocu (
    CVE INT PRIMARY KEY,
    DESCRIP NVARCHAR(100)
);

CREATE TABLE rama (
    CVE INT PRIMARY KEY,
    DESCRIP NVARCHAR(100)
);
GO