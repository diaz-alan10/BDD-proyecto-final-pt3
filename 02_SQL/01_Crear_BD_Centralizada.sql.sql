CREATE DATABASE BD_ENOE_Centralizada;
GO

USE BD_ENOE_Centralizada;
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