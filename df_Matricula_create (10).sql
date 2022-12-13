-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-11-04 07:00:40.776

-- tables
-- Table: APODERADO
CREATE TABLE APODERADO (
    IDAPO char(8) NOT NULL COMMENT 'Contiene el identificador digital del apoderado.',
    NOM varchar(50) NOT NULL COMMENT 'Contiene los nombre(s) de el apoderado.',
    APE varchar(50) NOT NULL COMMENT 'Contiene los apellidos del apoderado.',
    DNI char(8) NOT NULL COMMENT 'Contiene el número de documento del apoderado.',
    FECNAC date NOT NULL COMMENT 'Contiene la fecha de nacimiento del apoderado.',
    GEN char(1) NOT NULL COMMENT 'Contiene el género del apoderado, F o M.',
    CEL char(9) NOT NULL COMMENT 'Contiene el número de celular del apoderado.
',
    EMAIL varchar(80) NOT NULL COMMENT 'Contiene el e-mail del apoderado..',
    UBIGEO_IDUBI char(6) NOT NULL COMMENT 'Contiene el identificador de ubigeo.',
    CONSTRAINT APODERADO_pk PRIMARY KEY (IDAPO)
) COMMENT 'Contiene la información del apoderado del estudiante.';

-- Table: ESTUDIANTE
CREATE TABLE ESTUDIANTE (
    IDEST char(7) NOT NULL COMMENT 'Contiene el identificador digital del estudiante.',
    NOM varchar(50) NOT NULL COMMENT 'Contiene los nombres del estudiante.',
    APE varchar(50) NOT NULL COMMENT 'Contiene los apellidos del estudiante.',
    GEN char(1) NOT NULL COMMENT 'Contiene el género del estudiante F o M.',
    FECNAC date NOT NULL COMMENT 'Contiene la fecha de nacimiento del estudiante.',
    LUGNAC varchar(80) NOT NULL COMMENT 'Contiene el lugar de nacimiento del estudiante.',
    DNI Char(8) NOT NULL COMMENT 'Contiene el DNI del estudiante.',
    CEL char(9) NOT NULL COMMENT 'Contiene el número de celular del estudiante.',
    EMAIL varchar(80) NOT NULL COMMENT 'Contiene el correo del estudiante.',
    DIS varchar(30) NOT NULL COMMENT 'Contiene el tipo de discapacidad del estudiante.',
    UBIGEO_IDUBI char(6) NOT NULL COMMENT 'Contiene el identificador de ubigeo.',
    CONSTRAINT ESTUDIANTE_pk PRIMARY KEY (IDEST)
) COMMENT 'Contiene los datos del estudiante.';

-- Table: GRADO
CREATE TABLE GRADO (
    ID_GRA char(2) NOT NULL COMMENT 'Contiene el identificador digital de el grado.',
    GRA char(1) NOT NULL COMMENT 'Contiene el grado.',
    TUTOR_IDTUT char(5) NOT NULL COMMENT 'Contiene el Identificador digital de el tutor(a).',
    CONSTRAINT GRADO_pk PRIMARY KEY (ID_GRA)
) COMMENT 'Contiene la información del grado.';

-- Table: IEP
CREATE TABLE IEP (
    IDMOD char(7) NOT NULL COMMENT 'Contiene el Identificador Digital del código modular del colegio.',
    NOMINSEDU varchar(80) NOT NULL COMMENT 'Contiene el nombre de la Institución Educativa.',
    CONSTRAINT IEP_pk PRIMARY KEY (IDMOD)
) COMMENT 'Contiene la información de la I.E.P.';

-- Table: MATRICULA
CREATE TABLE MATRICULA (
    IDMTR Char(6) NOT NULL COMMENT 'Contiene el identificador digital de la matricula.',
    NUM_VAC varchar(50) NOT NULL COMMENT 'Contiene el número de matrícula disponible.',
    RESPONSABLE_MATRICULA_IDRES char(5) NOT NULL COMMENT 'Contiene el identificador digital del responsable de la matricula.',
    IEP_IDMOD char(7) NOT NULL COMMENT 'Contiene el Identificador Digital del código modular del colegio.',
    APODERADO_IDAPO char(8) NOT NULL COMMENT 'Contiene el ID del apoderado.',
    ESTUDIANTE_IDEST char(7) NOT NULL COMMENT 'Contiene el identificador digital del estudiante.',
    `MOD` char(1) NOT NULL COMMENT 'Contiene la modalidad de ingreso del estudiante, N o T.',
    GRADO_ID_GRA char(2) NOT NULL COMMENT 'Contiene el identificador digital de el grado.',
    CONSTRAINT MATRICULA_pk PRIMARY KEY (IDMTR)
) COMMENT 'Diseño físico de la relación de consulta de matrículas de un estudiante en la IEP.';

-- Table: RESPONSABLE_MATRICULA
CREATE TABLE RESPONSABLE_MATRICULA (
    IDRES char(5) NOT NULL COMMENT 'Contiene el el identificador digital del responsable de la matricula.',
    NOM varchar(80) NOT NULL COMMENT 'Contiene el nombre(s) del responsable de la matricula.',
    APE varchar(50) NOT NULL COMMENT 'Contiene los apellidos del responsable de la matricula',
    DNI char(8) NOT NULL COMMENT 'Contiene el DNI del responsable de la matricula',
    CEL char(9) NOT NULL COMMENT 'Contiene el número de celular del responsable de la matricula.',
    EMAIL varchar(50) NOT NULL COMMENT 'Contiene el correo del responsable de la matricula.',
    GEN char(1) NOT NULL COMMENT 'Contiene el género del tutor(a) F o M.',
    UBIGEO_IDUBI char(6) NOT NULL COMMENT 'Contiene el identificador de ubigeo.',
    CONSTRAINT RESPONSABLE_MATRICULA_pk PRIMARY KEY (IDRES)
) COMMENT 'Contiene la información del responsable de realizar la matricula.';

-- Table: TUTOR
CREATE TABLE TUTOR (
    IDTUT char(5) NOT NULL COMMENT 'Contiene el identificador digital del tutor(a).',
    DNI char(8) NOT NULL COMMENT 'Contiene el DNI  del tutor(a).',
    NOM varchar(50) NOT NULL COMMENT 'Contiene el nombre  del tutor(a).',
    APE varchar(50) NOT NULL COMMENT 'Contiene el apellido  del tutor(a).',
    CEL char(9) NOT NULL COMMENT 'Contiene el número de teléfono  del tutor(a).',
    EMA varchar(80) NOT NULL COMMENT 'Contiene el Email  del tutor(a).',
    UBIGEO_IDUBI char(6) NOT NULL COMMENT 'Contiene el identificador de ubigeo.',
    CONSTRAINT TUTOR_pk PRIMARY KEY (IDTUT)
) COMMENT 'Contiene la información  del tutor(a).';

-- Table: UBIGEO
CREATE TABLE UBIGEO (
    IDUBI char(6) NOT NULL COMMENT 'Contiene el ubigeo.',
    DEP varchar(80) NOT NULL COMMENT 'Contiene  el nombre del departamento.',
    PRO varchar(80) NOT NULL COMMENT 'Contiene  el nombre de la provincia.',
    DIS varchar(80) NOT NULL COMMENT 'Contiene el nombre del distrito.',
    CONSTRAINT UBIGEO_pk PRIMARY KEY (IDUBI)
) COMMENT 'Contiene el información del ubigeo de Perú.';

-- End of file.

