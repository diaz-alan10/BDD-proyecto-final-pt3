USE BD_ENOE_Centralizada;
GO

-- Llaves primarias en catálogos
ALTER TABLE entidad ADD CONSTRAINT PK_entidad PRIMARY KEY (CVE);
ALTER TABLE sexo ADD CONSTRAINT PK_sexo PRIMARY KEY (CVE);
ALTER TABLE clase1 ADD CONSTRAINT PK_clase1 PRIMARY KEY (CVE);
ALTER TABLE clase2 ADD CONSTRAINT PK_clase2 PRIMARY KEY (CVE);
ALTER TABLE niv_ins ADD CONSTRAINT PK_niv_ins PRIMARY KEY (CVE);
ALTER TABLE pos_ocu ADD CONSTRAINT PK_pos_ocu PRIMARY KEY (CVE);
ALTER TABLE rama ADD CONSTRAINT PK_rama PRIMARY KEY (CVE);
GO

-- Llaves foráneas hacia hechos_ocupacion
ALTER TABLE hechos_ocupacion
ADD CONSTRAINT FK_hechos_entidad
FOREIGN KEY (ent) REFERENCES entidad(CVE);

ALTER TABLE hechos_ocupacion
ADD CONSTRAINT FK_hechos_sexo
FOREIGN KEY (sex) REFERENCES sexo(CVE);

ALTER TABLE hechos_ocupacion
ADD CONSTRAINT FK_hechos_clase1
FOREIGN KEY (clase1) REFERENCES clase1(CVE);

ALTER TABLE hechos_ocupacion
ADD CONSTRAINT FK_hechos_clase2
FOREIGN KEY (clase2) REFERENCES clase2(CVE);

ALTER TABLE hechos_ocupacion
ADD CONSTRAINT FK_hechos_niv_ins
FOREIGN KEY (niv_ins) REFERENCES niv_ins(CVE);

ALTER TABLE hechos_ocupacion
ADD CONSTRAINT FK_hechos_pos_ocu
FOREIGN KEY (pos_ocu) REFERENCES pos_ocu(CVE);

ALTER TABLE hechos_ocupacion
ADD CONSTRAINT FK_hechos_rama
FOREIGN KEY (rama) REFERENCES rama(CVE);
GO