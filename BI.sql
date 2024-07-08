USE GD1C2024
GO

------------ Eliminación de tablas    ------------------

IF OBJECT_ID('LOREM_IPSUM.BI_H_VENTAS','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.BI_H_VENTAS;

IF OBJECT_ID('LOREM_IPSUM.BI_H_PAGOS','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.BI_H_PAGOS;

IF OBJECT_ID('LOREM_IPSUM.BI_H_ENVIOS','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.BI_H_ENVIOS;

IF OBJECT_ID('LOREM_IPSUM.BI_H_PROMOCION','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.BI_H_PROMOCION;

IF OBJECT_ID('LOREM_IPSUM.BI_D_RANGO_ETARIO','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.BI_D_RANGO_ETARIO;

IF OBJECT_ID('LOREM_IPSUM.BI_D_TURNOS','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.BI_D_TURNOS;

IF OBJECT_ID('LOREM_IPSUM.BI_D_UBICACION','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.BI_D_UBICACION;

IF OBJECT_ID('LOREM_IPSUM.BI_D_TIEMPO','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.BI_D_TIEMPO;

IF OBJECT_ID('LOREM_IPSUM.BI_D_SUCURSAL','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.BI_D_SUCURSAL;

IF OBJECT_ID('LOREM_IPSUM.BI_D_MEDIO_PAGO','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.BI_D_MEDIO_PAGO;

IF OBJECT_ID('LOREM_IPSUM.BI_D_CAJAS','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.BI_D_CAJAS;

IF OBJECT_ID('LOREM_IPSUM.BI_D_CATEGORIA','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.BI_D_CATEGORIA;

IF OBJECT_ID('LOREM_IPSUM.BI_D_SUBCATEGORIA','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.BI_D_SUBCATEGORIA;
GO

------------ Eliminación de funciones    ------------------

IF OBJECT_ID('LOREM_IPSUM.CALCULAR_TURNO') IS NOT NULL
DROP FUNCTION LOREM_IPSUM.CALCULAR_TURNO

IF OBJECT_ID('LOREM_IPSUM.CALCULAR_RANGO_ETARIO') IS NOT NULL
DROP FUNCTION LOREM_IPSUM.CALCULAR_RANGO_ETARIO
GO
IF OBJECT_ID('LOREM_IPSUM.CALCULAR_FECHA') IS NOT NULL
DROP FUNCTION LOREM_IPSUM.CALCULAR_FECHA
GO

IF OBJECT_ID('LOREM_IPSUM.CALCULAR_ATRASADO') IS NOT NULL
DROP FUNCTION LOREM_IPSUM.CALCULAR_ATRASADO
GO


------------ Eliminación de procedures    ------------------

IF OBJECT_ID('LOREM_IPSUM.BI_MIGRAR_D_RANGO_ETARIO','P') IS NOT NULL
DROP PROCEDURE  LOREM_IPSUM.BI_MIGRAR_D_RANGO_ETARIO

IF OBJECT_ID('LOREM_IPSUM.BI_MIGRAR_D_TURNOS','P') IS NOT NULL
DROP PROCEDURE  LOREM_IPSUM.BI_MIGRAR_D_TURNOS

IF OBJECT_ID('LOREM_IPSUM.BI_MIGRAR_D_UBICACION','P') IS NOT NULL
DROP PROCEDURE  LOREM_IPSUM.BI_MIGRAR_D_UBICACION

IF OBJECT_ID('LOREM_IPSUM.BI_MIGRAR_D_SUCURSAL','P') IS NOT NULL
DROP PROCEDURE  LOREM_IPSUM.BI_MIGRAR_D_SUCURSAL

IF OBJECT_ID('LOREM_IPSUM.BI_MIGRAR_D_TIEMPO','P') IS NOT NULL
DROP PROCEDURE  LOREM_IPSUM.BI_MIGRAR_D_TIEMPO

IF OBJECT_ID('LOREM_IPSUM.BI_MIGRAR_CATEGORIA','P') IS NOT NULL
DROP PROCEDURE  LOREM_IPSUM.BI_MIGRAR_CATEGORIA
GO

IF OBJECT_ID('LOREM_IPSUM.BI_MIGRAR_SUBCATEGORIA','P') IS NOT NULL
DROP PROCEDURE  LOREM_IPSUM.BI_MIGRAR_SUBCATEGORIA
GO

IF OBJECT_ID('LOREM_IPSUM.BI_MIGRAR_VENTAS','P') IS NOT NULL
DROP PROCEDURE  LOREM_IPSUM.BI_MIGRAR_VENTAS

IF OBJECT_ID('LOREM_IPSUM.BI_MIGRAR_D_MEDIO_PAGO','P') IS NOT NULL
DROP PROCEDURE  LOREM_IPSUM.BI_MIGRAR_D_MEDIO_PAGO

IF OBJECT_ID('LOREM_IPSUM.BI_MIGRAR_D_CAJAS','P') IS NOT NULL
DROP PROCEDURE  LOREM_IPSUM.BI_MIGRAR_D_CAJAS

IF OBJECT_ID('LOREM_IPSUM.BI_MIGRAR_H_VENTAS','P') IS NOT NULL
DROP PROCEDURE  LOREM_IPSUM.BI_MIGRAR_H_VENTAS
GO

IF OBJECT_ID('LOREM_IPSUM.BI_MIGRAR_H_PAGOS','P') IS NOT NULL
DROP PROCEDURE  LOREM_IPSUM.BI_MIGRAR_H_PAGOS
GO

IF OBJECT_ID('LOREM_IPSUM.BI_MIGRAR_H_PROMOCIONES','P') IS NOT NULL
DROP PROCEDURE  LOREM_IPSUM.BI_MIGRAR_H_PROMOCIONES
GO

IF OBJECT_ID('LOREM_IPSUM.BI_MIGRAR_H_ENVIOS','P') IS NOT NULL
DROP PROCEDURE  LOREM_IPSUM.BI_MIGRAR_H_ENVIOS
GO

------------ Eliminación de views ------------------

IF OBJECT_ID('LOREM_IPSUM.VIEW_1','V') IS NOT NULL
DROP VIEW  LOREM_IPSUM.VIEW_1
GO


IF OBJECT_ID('LOREM_IPSUM.VIEW_2','V') IS NOT NULL
DROP VIEW  LOREM_IPSUM.VIEW_2
GO


IF OBJECT_ID('LOREM_IPSUM.VIEW_3','V') IS NOT NULL
DROP VIEW  LOREM_IPSUM.VIEW_3
GO


IF OBJECT_ID('LOREM_IPSUM.VIEW_4','V') IS NOT NULL
DROP VIEW  LOREM_IPSUM.VIEW_4
GO

IF OBJECT_ID('LOREM_IPSUM.VIEW_5','V') IS NOT NULL
DROP VIEW  LOREM_IPSUM.VIEW_5
GO

IF OBJECT_ID('LOREM_IPSUM.VIEW_6','V') IS NOT NULL
DROP VIEW  LOREM_IPSUM.VIEW_6
GO

IF OBJECT_ID('LOREM_IPSUM.VIEW_7','V') IS NOT NULL
DROP VIEW  LOREM_IPSUM.VIEW_7
GO

IF OBJECT_ID('LOREM_IPSUM.VIEW_8','V') IS NOT NULL
DROP VIEW  LOREM_IPSUM.VIEW_8
GO

IF OBJECT_ID('LOREM_IPSUM.VIEW_9','V') IS NOT NULL
DROP VIEW  LOREM_IPSUM.VIEW_9
GO

IF OBJECT_ID('LOREM_IPSUM.VIEW_10','V') IS NOT NULL
DROP VIEW  LOREM_IPSUM.VIEW_10
GO

IF OBJECT_ID('LOREM_IPSUM.VIEW_11','V') IS NOT NULL
DROP VIEW  LOREM_IPSUM.VIEW_11
GO

IF OBJECT_ID('LOREM_IPSUM.VIEW_12','V') IS NOT NULL
DROP VIEW  LOREM_IPSUM.VIEW_12
GO
-------------------- Creación de tablas ---------------------------

CREATE TABLE LOREM_IPSUM.BI_D_RANGO_ETARIO(
    RANGO_ETARIO_ID    SMALLINT IDENTITY(1,1) NOT NULL,
    RANGO_ETARIO_DESCRIPCION    NVARCHAR(50)
)



CREATE TABLE LOREM_IPSUM.BI_D_TURNOS(
    TURNO_ID            SMALLINT IDENTITY(1,1) NOT NULL,
    TURNO_DESCRIPCION   NVARCHAR(50)
)


CREATE TABLE LOREM_IPSUM.BI_D_UBICACION(
    UBI_ID              SMALLINT IDENTITY(1,1) NOT NULL,
    UBI_PROVINCIA       NVARCHAR(55),
    UBI_LOCALIDAD       NVARCHAR(55)
)



CREATE TABLE LOREM_IPSUM.BI_D_TIEMPO(
    TIEMPO_ID               SMALLINT IDENTITY(1,1) NOT NULL,
    TIEMPO_ANIO             SMALLINT,
    TIEMPO_CUATRIMESTRE     SMALLINT,
    TIEMPO_MES              SMALLINT
)


CREATE TABLE LOREM_IPSUM.BI_D_SUCURSAL(
    SUCURSAL_ID         SMALLINT IDENTITY(1,1) NOT NULL,
    SUCURSAL_DETALLE    NVARCHAR(255)
)


CREATE TABLE LOREM_IPSUM.BI_D_MEDIO_PAGO(
    MP_ID               INT IDENTITY(1,1) NOT NULL,
    MP_TIPO INT  NOT NULL,
    MP_DETALLE          NVARCHAR(55)  NOT NULL
)


CREATE TABLE LOREM_IPSUM.BI_D_CATEGORIA(
    CAT_ID          INT NOT NULL,--IDENTITY(1,1) NOT NULL,
    CAT_NOMBRE      NVARCHAR(50)
)



CREATE TABLE LOREM_IPSUM.BI_D_SUBCATEGORIA(
    SUBCAT_ID       INT IDENTITY(1,1) NOT NULL,
    SUBCAT_DESC     NVARCHAR(50)
)

CREATE TABLE LOREM_IPSUM.BI_D_CAJAS(
    CAJA_ID SMALLINT IDENTITY(1,1) NOT NULL,
    CAJA_TIPO NVARCHAR(50)
)

CREATE TABLE LOREM_IPSUM.BI_H_VENTAS
(
    VENT_ID                    INT IDENTITY (1,1) NOT NULL,
    VENT_RANGO_ETARIO_CLIENTE  SMALLINT           NOT NULL,
    VENT_RANGO_ETARIO_EMPLEADO SMALLINT           NOT NULL,
    VENT_TIEMPO                SMALLINT           NOT NULL,
    VENT_SUCURSAL              SMALLINT           NOT NULL,
    VENT_UBICACION             SMALLINT           NOT NULL,
    VENT_TURNOS                SMALLINT           NOT NULL,
    VENT_TIPO_CAJA             SMALLINT           NOT NULL,
    VENT_CANTIDAD_PROD         INT,
    VENT_CANTIDAD_VENTAS       INT,
    VENT_MONTO                 DECIMAL(18, 2),
    VENT_DESCUENTO             DECIMAL(18, 2)
)



CREATE TABLE LOREM_IPSUM.BI_H_PAGOS(
    PAGO_ID                     SMALLINT IDENTITY(1,1) NOT NULL,
    PAGO_TIEMPO                 SMALLINT NOT NULL,
    PAGO_RANGO_ETARIO_CLIENTE   SMALLINT NOT NULL,
    PAGO_MEDIO_PAGO             INT NOT NULL,
    PAGO_SUCURSAL               SMALLINT NOT NULL,
    PAGO_TOTAL                  DECIMAL(18,2) NOT NULL,
    PAGO_CUOTAS                 SMALLINT,
    PAGO_DESCUENTO              DECIMAL(18,2)
)

CREATE TABLE LOREM_IPSUM.BI_H_ENVIOS(
    ENV_ID                      INT IDENTITY(1,1) NOT NULL,
    ENV_UBICACION               SMALLINT NOT NULL,
    ENV_TIEMPO                  SMALLINT NOT NULL,
    ENV_RANGO_ETARIO_CLIENTE    SMALLINT NOT NULL,
	ENV_SUCURSAL			    SMALLINT NOT NULL,
    ENV_COSTO                   DECIMAL(18,2) NOT NULL,
    ENV_ATRASADO                SMALLINT NOT NULL
)

CREATE TABLE LOREM_IPSUM.BI_H_PROMOCION(
    PROMO_ID            INT IDENTITY(1,1) NOT NULL,
    PROMO_TIEMPO        SMALLINT NOT NULL,
	PROMO_SUBCATEGORIA  INT NOT NULL,
	PROMO_CATEGORIA		INT NOT NULL,
    PROMO_DESCUENTO     DECIMAL(18,2) NOT NULL,
)

-------------------- Creación de primary keys ---------------------------

ALTER TABLE LOREM_IPSUM.BI_D_RANGO_ETARIO
ADD CONSTRAINT PK_BI_D_RANGO_ETARIO PRIMARY KEY (RANGO_ETARIO_ID);

ALTER TABLE LOREM_IPSUM.BI_D_TURNOS
ADD CONSTRAINT PK_BI_D_TURNOS PRIMARY KEY (TURNO_ID);

ALTER TABLE LOREM_IPSUM.BI_D_UBICACION
ADD CONSTRAINT PK_BI_D_UBICACION PRIMARY KEY (UBI_ID);

ALTER TABLE LOREM_IPSUM.BI_D_TIEMPO
ADD CONSTRAINT PK_BI_D_TIEMPO PRIMARY KEY (TIEMPO_ID);

ALTER TABLE LOREM_IPSUM.BI_D_SUCURSAL
ADD CONSTRAINT PK_BI_D_SUCURSAL PRIMARY KEY (SUCURSAL_ID);

ALTER TABLE LOREM_IPSUM.BI_D_MEDIO_PAGO
ADD CONSTRAINT PK_BI_D_MEDIO_PAGO PRIMARY KEY (MP_ID);

ALTER TABLE LOREM_IPSUM.BI_D_CATEGORIA
ADD CONSTRAINT PK_BI_D_CATEGORIA PRIMARY KEY (CAT_ID);

ALTER TABLE LOREM_IPSUM.BI_D_SUBCATEGORIA
ADD CONSTRAINT PK_BI_D_SUBCATEGORIA PRIMARY KEY (SUBCAT_ID);

ALTER TABLE LOREM_IPSUM.BI_D_CAJAS
ADD CONSTRAINT PK_BI_D_CAJAS PRIMARY KEY (CAJA_ID);

ALTER TABLE LOREM_IPSUM.BI_H_ENVIOS
ADD CONSTRAINT PK_BI_H_ENVIOS PRIMARY KEY (ENV_ID);

ALTER TABLE LOREM_IPSUM.BI_H_PAGOS
ADD CONSTRAINT PK_BI_H_PAGOS PRIMARY KEY (PAGO_ID);

ALTER TABLE LOREM_IPSUM.BI_H_PROMOCION
ADD CONSTRAINT PK_BI_H_PROMOCION PRIMARY KEY (PROMO_ID);

ALTER TABLE LOREM_IPSUM.BI_H_VENTAS
ADD CONSTRAINT PK_BI_H_VENTAS PRIMARY KEY (VENT_ID);

GO
-------------------- Creación de foreign keys ---------------------------

ALTER TABLE LOREM_IPSUM.BI_H_VENTAS
ADD CONSTRAINT FK_VENT_RANGO_ETARIO_CLIENTE
FOREIGN KEY (VENT_RANGO_ETARIO_CLIENTE) REFERENCES LOREM_IPSUM.BI_D_RANGO_ETARIO(RANGO_ETARIO_ID);

ALTER TABLE LOREM_IPSUM.BI_H_VENTAS
ADD CONSTRAINT FK_VENT_RANGO_ETARIO_EMPLEADO
FOREIGN KEY (VENT_RANGO_ETARIO_EMPLEADO) REFERENCES LOREM_IPSUM.BI_D_RANGO_ETARIO(RANGO_ETARIO_ID);

ALTER TABLE LOREM_IPSUM.BI_H_VENTAS
ADD CONSTRAINT FK_VENT_TIEMPO
FOREIGN KEY (VENT_TIEMPO) REFERENCES LOREM_IPSUM.BI_D_TIEMPO(TIEMPO_ID);

ALTER TABLE LOREM_IPSUM.BI_H_VENTAS
ADD CONSTRAINT FK_VENT_SUCURSAL
FOREIGN KEY (VENT_SUCURSAL) REFERENCES LOREM_IPSUM.BI_D_SUCURSAL(SUCURSAL_ID);

ALTER TABLE LOREM_IPSUM.BI_H_VENTAS
ADD CONSTRAINT FK_VENT_UBICACION
FOREIGN KEY (VENT_UBICACION) REFERENCES LOREM_IPSUM.BI_D_UBICACION(UBI_ID);

ALTER TABLE LOREM_IPSUM.BI_H_VENTAS
ADD CONSTRAINT FK_VENT_TURNOS
FOREIGN KEY (VENT_TURNOS) REFERENCES LOREM_IPSUM.BI_D_TURNOS(TURNO_ID);

ALTER TABLE LOREM_IPSUM.BI_H_VENTAS
ADD CONSTRAINT FK_VENT_TIPO_CAJA
FOREIGN KEY (VENT_TIPO_CAJA) REFERENCES LOREM_IPSUM.BI_D_CAJAS(CAJA_ID);

ALTER TABLE LOREM_IPSUM.BI_H_PAGOS
ADD CONSTRAINT FK_PAGO_TIEMPO
FOREIGN KEY (PAGO_TIEMPO) REFERENCES LOREM_IPSUM.BI_D_TIEMPO(TIEMPO_ID);

ALTER TABLE LOREM_IPSUM.BI_H_PAGOS
ADD CONSTRAINT FK_PAGO_RANGO_ETARIO_CLIENTE
FOREIGN KEY (PAGO_RANGO_ETARIO_CLIENTE) REFERENCES LOREM_IPSUM.BI_D_RANGO_ETARIO(RANGO_ETARIO_ID);

ALTER TABLE LOREM_IPSUM.BI_H_PAGOS
ADD CONSTRAINT FK_BI_PAGO_MEDIO_PAGO
FOREIGN KEY (PAGO_MEDIO_PAGO) REFERENCES LOREM_IPSUM.BI_D_MEDIO_PAGO(MP_ID);

ALTER TABLE LOREM_IPSUM.BI_H_PAGOS
ADD CONSTRAINT FK_PAGO_SUCURSAL
FOREIGN KEY (PAGO_SUCURSAL) REFERENCES LOREM_IPSUM.BI_D_SUCURSAL(SUCURSAL_ID);

ALTER TABLE LOREM_IPSUM.BI_H_ENVIOS
ADD CONSTRAINT FK_ENV_UBICACION
FOREIGN KEY (ENV_UBICACION) REFERENCES LOREM_IPSUM.BI_D_UBICACION(UBI_ID);

ALTER TABLE LOREM_IPSUM.BI_H_ENVIOS
ADD CONSTRAINT FK_ENV_TIEMPO
FOREIGN KEY (ENV_TIEMPO) REFERENCES LOREM_IPSUM.BI_D_TIEMPO(TIEMPO_ID);

ALTER TABLE LOREM_IPSUM.BI_H_ENVIOS
ADD CONSTRAINT FK_ENV_RANGO_ETARIO_CLIENTE
FOREIGN KEY (ENV_RANGO_ETARIO_CLIENTE) REFERENCES LOREM_IPSUM.BI_D_RANGO_ETARIO(RANGO_ETARIO_ID);

ALTER TABLE LOREM_IPSUM.BI_H_ENVIOS
ADD CONSTRAINT FK_ENV_SUCURSAL
FOREIGN KEY (ENV_SUCURSAL) REFERENCES LOREM_IPSUM.BI_D_SUCURSAL(SUCURSAL_ID);

ALTER TABLE LOREM_IPSUM.BI_H_PROMOCION
ADD CONSTRAINT FK_PROMO_TIEMPO
FOREIGN KEY (PROMO_TIEMPO) REFERENCES LOREM_IPSUM.BI_D_TIEMPO(TIEMPO_ID);

ALTER TABLE LOREM_IPSUM.BI_H_PROMOCION
ADD CONSTRAINT FK_PROMO_SUBCATEGORIA
FOREIGN KEY (PROMO_SUBCATEGORIA) REFERENCES LOREM_IPSUM.BI_D_SUBCATEGORIA(SUBCAT_ID);

ALTER TABLE LOREM_IPSUM.BI_H_PROMOCION
ADD CONSTRAINT FK_PROMO_CATEGORIA
FOREIGN KEY (PROMO_CATEGORIA) REFERENCES LOREM_IPSUM.BI_D_CATEGORIA(CAT_ID);

GO

--------------------------- Creacion de funciones  ---------------------------

CREATE FUNCTION LOREM_IPSUM.CALCULAR_RANGO_ETARIO (@FECHA_NACIMIENTO DATE)
RETURNS SMALLINT
AS
BEGIN
    DECLARE @ANIOS INT = DATEDIFF(YEAR, @FECHA_NACIMIENTO, GETDATE())
    DECLARE @RES SMALLINT
    IF @ANIOS < 25
        SET @RES = 1
    ELSE
        IF @ANIOS BETWEEN 25 AND 35
            SET @RES = 2
        ELSE
            IF @ANIOS BETWEEN 35 AND 50
                SET @RES = 3
            ELSE
                IF @ANIOS > 50
                    SET @RES = 4
                ELSE
                    SET @RES = 5
    RETURN @RES
END
GO

CREATE FUNCTION LOREM_IPSUM.CALCULAR_TURNO (@HORARIO DATETIME)
RETURNS SMALLINT
AS
BEGIN
    DECLARE @HORA INT = DATEPART(HOUR, @HORARIO)
    DECLARE @RES SMALLINT
    IF @HORA BETWEEN 8 AND 12
            SET @RES = 1
        ELSE
            IF @HORA BETWEEN 12 AND 16
                SET @RES = 2
            ELSE
                SET @RES = 3
    RETURN @RES
END
GO

CREATE FUNCTION LOREM_IPSUM.CALCULAR_ATRASADO (@FECHA_PROGRAMADA DATETIME, @FECHA_FACTURA INT)
RETURNS SMALLINT
AS
BEGIN
    DECLARE @ATRASADO SMALLINT
    IF DATEPART(HOUR,@FECHA_PROGRAMADA) < @FECHA_FACTURA
SET @ATRASADO = 1
ELSE
SET @ATRASADO = 0
RETURN @ATRASADO
END
GO
CREATE FUNCTION LOREM_IPSUM.CALCULAR_FECHA(@FECHA DATETIME)
RETURNS SMALLINT
AS
BEGIN
DECLARE @ANIO INT
DECLARE @CUATRIMESTRE INT
DECLARE @MES INT

SELECT @ANIO = YEAR(@FECHA), @CUATRIMESTRE = DATEPART(QUARTER,@FECHA), @MES = MONTH(@FECHA)
RETURN (select TIEMPO_ID from BI_D_TIEMPO
where
@ANIO = TIEMPO_ANIO AND
@CUATRIMESTRE = TIEMPO_CUATRIMESTRE AND
@MES = TIEMPO_MES
)
END
GO

--------------------------- Migración de tablas ---------------------------

-- Migración de Rango Etario

CREATE PROCEDURE LOREM_IPSUM.BI_MIGRAR_D_RANGO_ETARIO
AS
BEGIN
    INSERT INTO BI_D_RANGO_ETARIO(RANGO_ETARIO_DESCRIPCION)
    VALUES ('<25')
    INSERT INTO BI_D_RANGO_ETARIO(RANGO_ETARIO_DESCRIPCION)
    VALUES ('25-35')
    INSERT INTO BI_D_RANGO_ETARIO(RANGO_ETARIO_DESCRIPCION)
    VALUES ('35-50')
    INSERT INTO BI_D_RANGO_ETARIO(RANGO_ETARIO_DESCRIPCION)
    VALUES ('>50')
    INSERT INTO BI_D_RANGO_ETARIO(RANGO_ETARIO_DESCRIPCION)
    VALUES ('DESCONOCIDO')
END
GO


-- Migración de Turnos

CREATE PROCEDURE LOREM_IPSUM.BI_MIGRAR_D_TURNOS
AS
BEGIN
    INSERT INTO BI_D_TURNOS(TURNO_DESCRIPCION)
    VALUES ('08:00 - 12:00')
    INSERT INTO BI_D_TURNOS(TURNO_DESCRIPCION)
    VALUES ('12:00 - 16:00')
    INSERT INTO BI_D_TURNOS(TURNO_DESCRIPCION)
    VALUES ('16:00 - 20:00')
END
GO

-- Migración Ubicacion

CREATE PROCEDURE LOREM_IPSUM.BI_MIGRAR_D_UBICACION
AS
BEGIN
    INSERT INTO BI_D_UBICACION(UBI_PROVINCIA, UBI_LOCALIDAD)
        (SELECT prov_nombre, localidad_nombre
         FROM LOREM_IPSUM.Localidad
                  JOIN LOREM_IPSUM.Provincia P ON P.prov_cod = Localidad.localidad_prov)
END
GO

-- Migración Sucursal

CREATE PROCEDURE LOREM_IPSUM.BI_MIGRAR_D_SUCURSAL
AS
BEGIN
    INSERT INTO BI_D_SUCURSAL(SUCURSAL_DETALLE)
        (SELECT suc_nombre FROM LOREM_IPSUM.Sucursal)
END
GO

-- Migración Tiempo

CREATE PROCEDURE LOREM_IPSUM.BI_MIGRAR_D_TIEMPO
AS
BEGIN
    -- noinspection SqlShouldBeInGroupBy
    INSERT INTO BI_D_TIEMPO(TIEMPO_ANIO, TIEMPO_CUATRIMESTRE, TIEMPO_MES)
        (SELECT YEAR(ticket_fecha), DATEPART(QUARTER, ticket_fecha), MONTH(ticket_fecha)
         FROM LOREM_IPSUM.Ticket
         GROUP BY YEAR(ticket_fecha), DATEPART(QUARTER, ticket_fecha), MONTH(ticket_fecha)
         UNION
         SELECT YEAR(pago_fecha), DATEPART(QUARTER, pago_fecha), MONTH(pago_fecha)
         FROM LOREM_IPSUM.Pago
         GROUP BY YEAR(pago_fecha), DATEPART(QUARTER, pago_fecha), MONTH(pago_fecha)
         UNION
         SELECT YEAR(prog_env_fecha_programacion),
                DATEPART(QUARTER, prog_env_fecha_programacion),
                MONTH(prog_env_fecha_programacion)
         FROM LOREM_IPSUM.Programacion_Envio
         GROUP BY YEAR(prog_env_fecha_programacion), DATEPART(QUARTER, prog_env_fecha_programacion),
                  MONTH(prog_env_fecha_programacion))
END
GO

-- Migración Categoria
CREATE PROCEDURE LOREM_IPSUM.BI_MIGRAR_CATEGORIA
AS
BEGIN
INSERT INTO BI_D_CATEGORIA(CAT_ID, CAT_NOMBRE)
(SELECT cat_cod, cat_nombre FROM LOREM_IPSUM.Categoria
GROUP BY cat_cod, cat_nombre)
END
GO
-- Migración Subategoria
CREATE PROCEDURE LOREM_IPSUM.BI_MIGRAR_SUBCATEGORIA
AS
BEGIN
INSERT INTO BI_D_SUBCATEGORIA(SUBCAT_DESC)
(SELECT  subcat_nombre FROM LOREM_IPSUM.Subcategoria
GROUP BY subcat_nombre)
END
GO

-- Migracion de medio pago
CREATE PROCEDURE LOREM_IPSUM.BI_MIGRAR_D_MEDIO_PAGO
AS
BEGIN
    INSERT INTO BI_D_MEDIO_PAGO(MP_DETALLE, MP_TIPO)
        (select MP_detalle, MP_TIPO from LOREM_IPSUM.Medio_pago)
END
GO

-- Migracion de cajas
CREATE PROCEDURE LOREM_IPSUM.BI_MIGRAR_D_CAJAS
AS
BEGIN
    INSERT INTO BI_D_CAJAS(CAJA_TIPO)
        (SELECT TC_detalle
         FROM Tipo_Caja
         GROUP BY TC_detalle)
END
GO

-- Migración Ventas

CREATE PROCEDURE LOREM_IPSUM.BI_MIGRAR_H_VENTAS
AS
BEGIN
    INSERT INTO BI_H_VENTAS(VENT_RANGO_ETARIO_CLIENTE, VENT_RANGO_ETARIO_EMPLEADO, VENT_TIEMPO, VENT_SUCURSAL,
                            VENT_UBICACION, VENT_TURNOS, VENT_CANTIDAD_PROD, VENT_CANTIDAD_VENTAS, VENT_MONTO,
                            VENT_DESCUENTO, VENT_TIPO_CAJA)
        (SELECT LOREM_IPSUM.CALCULAR_RANGO_ETARIO(CLIENTE.clie_fecha_nacimiento),
                LOREM_IPSUM.CALCULAR_RANGO_ETARIO(EMPLEADO.emp_fecha_nacimiento),
                TIEMPO.TIEMPO_ID,
                BI_SUCURSAL.SUCURSAL_ID,
                UBICACION.UBI_ID,
                LOREM_IPSUM.CALCULAR_TURNO(TICKET.ticket_fecha),
                SUM(PROD_TICKET.PT_cant),
                COUNT(DISTINCT CAST(TICKET.ticket_nro AS VARCHAR) + CONVERT(VARCHAR, TICKET.ticket_fecha, 120) +
                               CAST(TICKET.ticket_sucursal AS VARCHAR) + TICKET.ticket_tipo),
                SUM(DISTINCT TICKET.ticket_total),
                SUM(DISTINCT TICKET.ticket_desc_medio_pago + TICKET.ticket_desc_promociones),
                CAJA_ID
         FROM LOREM_IPSUM.Ticket TICKET
                  LEFT JOIN LOREM_IPSUM.Cliente CLIENTE ON CLIENTE.clie_nro = TICKET.ticket_cliente
                  LEFT JOIN LOREM_IPSUM.Empleado EMPLEADO ON EMPLEADO.emp_dni = TICKET.ticket_empleado
                  JOIN LOREM_IPSUM.BI_D_TIEMPO TIEMPO
                       ON TIEMPO.TIEMPO_ANIO = YEAR(ticket_fecha) AND
                          TIEMPO.TIEMPO_CUATRIMESTRE = DATEPART(Q, ticket_fecha) AND
                          TIEMPO.TIEMPO_MES = MONTH(ticket_fecha)
                  JOIN LOREM_IPSUM.Sucursal SUCURSAL ON SUCURSAL.suc_cod = TICKET.ticket_sucursal
                  JOIN LOREM_IPSUM.BI_D_SUCURSAL BI_SUCURSAL ON BI_SUCURSAL.SUCURSAL_DETALLE = SUCURSAL.suc_nombre
                  JOIN LOREM_IPSUM.Localidad LOCALIDAD ON LOCALIDAD.localidad_cod = SUCURSAL.suc_localidad
                  JOIN LOREM_IPSUM.Provincia PROVINCIA ON PROVINCIA.prov_cod = LOCALIDAD.localidad_prov
                  JOIN LOREM_IPSUM.BI_D_UBICACION UBICACION ON UBICACION.UBI_LOCALIDAD = LOCALIDAD.localidad_nombre AND
                                                               UBICACION.UBI_PROVINCIA = PROVINCIA.prov_nombre
                  JOIN LOREM_IPSUM.Prod_Ticket PROD_TICKET
                       ON TICKET.ticket_nro = PROD_TICKET.PT_ticket AND
                          TICKET.ticket_sucursal = PROD_TICKET.PT_sucursal AND
                          TICKET.ticket_tipo = PROD_TICKET.PT_tipo AND TICKET.ticket_fecha = PROD_TICKET.PT_fecha
                  JOIN LOREM_IPSUM.Caja ON SUCURSAL.suc_cod = Caja.caja_sucursal AND caja_numero = TICKET.ticket_caja
                  JOIN LOREM_IPSUM.Tipo_Caja TC ON TC.TC_cod = Caja.caja_tipo
                  JOIN LOREM_IPSUM.BI_D_CAJAS ON TC_detalle = BI_D_CAJAS.CAJA_TIPO
         GROUP BY LOREM_IPSUM.CALCULAR_RANGO_ETARIO(CLIENTE.clie_fecha_nacimiento),
                  LOREM_IPSUM.CALCULAR_RANGO_ETARIO(EMPLEADO.emp_fecha_nacimiento),
                  TIEMPO.TIEMPO_ID,
                  BI_SUCURSAL.SUCURSAL_ID,
                  UBICACION.UBI_ID,
                  LOREM_IPSUM.CALCULAR_TURNO(TICKET.ticket_fecha),
                  CAJA_ID)
END
GO

-- Migracion Promocion
create procedure LOREM_IPSUM.BI_MIGRAR_H_PROMOCIONES
as
begin
insert into LOREM_IPSUM.BI_H_PROMOCION(PROMO_TIEMPO, PROMO_CATEGORIA, PROMO_SUBCATEGORIA , PROMO_DESCUENTO)
(select TIEMPO_ID, CAT_ID, SUBCAT_ID,SUM(PT_descuento)
from LOREM_IPSUM.Prod_Ticket
JOIN LOREM_IPSUM.Producto ON PT_prod_cod = prod_cod
JOIN LOREM_IPSUM.Subcategoria ON prod_sub_cat = subcat_cod
join LOREM_IPSUM.BI_D_TIEMPO on TIEMPO_ANIO = year(PT_fecha) and TIEMPO_CUATRIMESTRE = DATEPART(Q, PT_fecha) and TIEMPO_MES = month(PT_fecha)
join LOREM_IPSUM.BI_D_CATEGORIA on CAT_ID = subcat_cat
JOIN LOREM_IPSUM.BI_D_SUBCATEGORIA ON subcat_nombre = SUBCAT_DESC
GROUP BY TIEMPO_ID, CAT_ID, SUBCAT_ID
)
end
GO


-- Migracion Envios





create procedure LOREM_IPSUM.BI_MIGRAR_H_ENVIOS
as
begin
INSERT INTO LOREM_IPSUM.BI_H_ENVIOS(ENV_TIEMPO, ENV_UBICACION, ENV_RANGO_ETARIO_CLIENTE, ENV_COSTO, ENV_ATRASADO, ENV_SUCURSAL)
(
SELECT TIEMPO_ID, UBI_ID,RANGO_ETARIO_ID, sum(envio_costo), SUM(LOREM_IPSUM.CALCULAR_ATRASADO(envio_fecha_entrega, prog_env_hr_fin)), SUCURSAL_ID
FROM LOREM_IPSUM.Envio 
JOIN LOREM_IPSUM.Programacion_Envio on prog_env_codigo = envio_programacion
join LOREM_IPSUM.BI_D_TIEMPO on year(envio_fecha_entrega) = TIEMPO_ANIO and month(envio_fecha_entrega) = TIEMPO_MES and DATEPART(Q, envio_fecha_entrega) = TIEMPO_CUATRIMESTRE
JOIN LOREM_IPSUM.Ticket on envio_ticket = ticket_nro and envio_ticket_sucursal = ticket_sucursal and envio_ticket_tipo = ticket_tipo and envio_ticket_fecha = ticket_fecha
join LOREM_IPSUM.Sucursal on ticket_sucursal = suc_cod
join LOREM_IPSUM.BI_D_SUCURSAL on SUCURSAL_DETALLE = suc_nombre
join LOREM_IPSUM.Cliente on clie_nro = ticket_cliente
JOIN LOREM_IPSUM.Localidad ON clie_localidad = localidad_cod
JOIN LOREM_IPSUM.Provincia ON localidad_prov = prov_cod
JOIN LOREM_IPSUM.BI_D_UBICACION ON UBI_LOCALIDAD = localidad_nombre AND UBI_PROVINCIA = prov_nombre
JOIN LOREM_IPSUM.BI_D_RANGO_ETARIO ON RANGO_ETARIO_ID = LOREM_IPSUM.CALCULAR_RANGO_ETARIO(clie_fecha_nacimiento)
group by TIEMPO_ID,SUCURSAL_ID, UBI_ID, RANGO_ETARIO_ID
)
end
GO


-- Migración Pagos

CREATE PROCEDURE LOREM_IPSUM.BI_MIGRAR_H_PAGOS
AS
BEGIN
INSERT INTO BI_H_PAGOS (PAGO_CUOTAS,PAGO_DESCUENTO,PAGO_TOTAL,PAGO_MEDIO_PAGO,PAGO_RANGO_ETARIO_CLIENTE,PAGO_SUCURSAL,PAGO_TIEMPO)
SELECT
ISNULL(SUM(pago_cuotas), 0),
sum(desc_MP_apli_monto),
sum(pago_importe),
MP_ID,
RANGO_ETARIO_ID,
SUCURSAL_ID,
TIEMPO_ID


FROM LOREM_IPSUM.Pago P
JOIN LOREM_IPSUM.Descuento_MP_Aplicado	ON pago_nro = desc_MP_apli_pago
JOIN LOREM_IPSUM.Medio_pago MP			ON pago_mp = MP_cod
JOIN LOREM_IPSUM.BI_D_MEDIO_PAGO DMP	ON MP.MP_DETALLE = DMP.MP_detalle
LEFT JOIN LOREM_IPSUM.Tarjeta			ON pago_tarjeta = tarjeta_nro
LEFT JOIN LOREM_IPSUM.Cliente			ON tarjeta_clie = clie_nro
JOIN LOREM_IPSUM.BI_D_RANGO_ETARIO		ON LOREM_IPSUM.CALCULAR_RANGO_ETARIO(clie_fecha_nacimiento) = RANGO_ETARIO_ID
JOIN LOREM_IPSUM.Sucursal				ON pago_ticket_sucursal = suc_cod
JOIN LOREM_IPSUM.BI_D_SUCURSAL			ON suc_nombre = SUCURSAL_DETALLE
JOIN LOREM_IPSUM.BI_D_TIEMPO			ON LOREM_IPSUM.CALCULAR_FECHA(pago_fecha) = TIEMPO_ID
GROUP BY MP_ID, RANGO_ETARIO_ID, SUCURSAL_ID, TIEMPO_ID

END
GO


-- Ejecucion de migraciones

EXEC  LOREM_IPSUM.BI_MIGRAR_D_RANGO_ETARIO
EXEC  LOREM_IPSUM.BI_MIGRAR_D_TURNOS
EXEC  LOREM_IPSUM.BI_MIGRAR_D_UBICACION
EXEC  LOREM_IPSUM.BI_MIGRAR_D_SUCURSAL
EXEC  LOREM_IPSUM.BI_MIGRAR_D_TIEMPO
EXEC  LOREM_IPSUM.BI_MIGRAR_D_MEDIO_PAGO
EXEC  LOREM_IPSUM.BI_MIGRAR_CATEGORIA
EXEC  LOREM_IPSUM.BI_MIGRAR_SUBCATEGORIA
EXEC  LOREM_IPSUM.BI_MIGRAR_D_CAJAS
EXEC  LOREM_IPSUM.BI_MIGRAR_H_VENTAS
EXEC  LOREM_IPSUM.BI_MIGRAR_H_PAGOS
EXEC  LOREM_IPSUM.BI_MIGRAR_H_PROMOCIONES
EXEC  LOREM_IPSUM.BI_MIGRAR_H_ENVIOS
GO
---------------------------------------- Creacion de vistas ----------------------------------------

--1--
CREATE VIEW LOREM_IPSUM.VIEW_1 AS
SELECT UBI_PROVINCIA,
       UBI_LOCALIDAD,
       TIEMPO_ANIO,
       TIEMPO_MES,
       CAST(VENT_MONTO/VENT_CANTIDAD_VENTAS AS DECIMAL(12,2)) AS PROMEDIO_MENSUAL
FROM LOREM_IPSUM.BI_H_VENTAS
         JOIN LOREM_IPSUM.BI_D_TIEMPO ON VENT_TIEMPO = BI_D_TIEMPO.TIEMPO_ID
         JOIN LOREM_IPSUM.BI_D_UBICACION ON UBI_ID = BI_H_VENTAS.VENT_UBICACION
GROUP BY UBI_PROVINCIA, UBI_LOCALIDAD, TIEMPO_ANIO, TIEMPO_MES, VENT_MONTO, VENT_CANTIDAD_VENTAS
GO

--2--
CREATE VIEW LOREM_IPSUM.VIEW_2 AS
SELECT TURNO_DESCRIPCION,
       TIEMPO_ANIO,
       TIEMPO_CUATRIMESTRE,
       SUM(VENT_CANTIDAD_PROD) / SUM(VENT_CANTIDAD_VENTAS) AS PROMEDIO_ARTICULOS
FROM LOREM_IPSUM.BI_H_VENTAS
         JOIN LOREM_IPSUM.BI_D_TURNOS ON BI_H_VENTAS.VENT_TURNOS = BI_D_TURNOS.TURNO_ID
         JOIN LOREM_IPSUM.BI_D_TIEMPO ON VENT_TIEMPO = BI_D_TIEMPO.TIEMPO_ID
GROUP BY TURNO_DESCRIPCION, TIEMPO_ANIO, TIEMPO_CUATRIMESTRE
GO

--3--
CREATE VIEW LOREM_IPSUM.VIEW_3 AS
SELECT TIEMPO_ANIO,
       TIEMPO_CUATRIMESTRE,
       RANGO_ETARIO_DESCRIPCION,
       CAJA_TIPO,
       FORMAT((SUM(VENT_CANTIDAD_VENTAS) * 1.0 /
       (SELECT SUM(VENT_CANTIDAD_VENTAS) 
                                      FROM LOREM_IPSUM.BI_H_VENTAS
                                               JOIN LOREM_IPSUM.BI_D_TIEMPO BDT ON BDT.TIEMPO_ID = BI_H_VENTAS.VENT_TIEMPO
                                      WHERE TIEMPO_ANIO = T1.TIEMPO_ANIO)),'P2') as 'Porcentaje anual ventas'
FROM LOREM_IPSUM.BI_H_VENTAS V1
         JOIN LOREM_IPSUM.BI_D_TIEMPO T1 ON TIEMPO_ID = V1.VENT_TIEMPO
         JOIN LOREM_IPSUM.BI_D_RANGO_ETARIO ON RANGO_ETARIO_ID = VENT_RANGO_ETARIO_EMPLEADO
         JOIN LOREM_IPSUM.BI_D_CAJAS BDC ON BDC.CAJA_ID = V1.VENT_TIPO_CAJA
GROUP BY TIEMPO_ANIO, TIEMPO_CUATRIMESTRE, RANGO_ETARIO_DESCRIPCION, CAJA_TIPO
GO

--4--
CREATE VIEW LOREM_IPSUM.VIEW_4 AS
SELECT UBI_PROVINCIA,
       UBI_LOCALIDAD,
       TIEMPO_ANIO,
       TIEMPO_MES,
       SUM(VENT_CANTIDAD_VENTAS) AS CANTIDAD_VENTAS
FROM LOREM_IPSUM.BI_H_VENTAS
         JOIN LOREM_IPSUM.BI_D_UBICACION ON UBI_ID = BI_H_VENTAS.VENT_UBICACION
         JOIN LOREM_IPSUM.BI_D_TIEMPO ON TIEMPO_ID = BI_H_VENTAS.VENT_TIEMPO
         JOIN LOREM_IPSUM.BI_D_TURNOS ON BI_H_VENTAS.VENT_TURNOS = BI_D_TURNOS.TURNO_ID
GROUP BY UBI_PROVINCIA, UBI_LOCALIDAD, TIEMPO_ANIO, TIEMPO_MES
GO
--5--
CREATE VIEW LOREM_IPSUM.VIEW_5 AS
SELECT TIEMPO_ANIO,
       TIEMPO_MES,
       FORMAT(SUM(VENT_DESCUENTO)/SUM(VENT_MONTO), 'P2') AS PORCENTAJE_DESCUENTO_APLICADO
FROM LOREM_IPSUM.BI_H_VENTAS
         JOIN LOREM_IPSUM.BI_D_TIEMPO ON TIEMPO_ID = BI_H_VENTAS.VENT_TIEMPO
GROUP BY TIEMPO_ANIO, TIEMPO_MES
GO

--6-- 
CREATE VIEW LOREM_IPSUM.VIEW_6 AS
SELECT P1.PROMO_CATEGORIA, T1.TIEMPO_ANIO, T1.TIEMPO_CUATRIMESTRE 
FROM LOREM_IPSUM.BI_H_PROMOCION P1
join LOREM_IPSUM.BI_D_TIEMPO T1 on T1.TIEMPO_ID = P1.PROMO_TIEMPO
where P1.PROMO_ID in (select top 3 P2.PROMO_ID from LOREM_IPSUM.BI_H_PROMOCION P2 join LOREM_IPSUM.BI_D_TIEMPO T2 on T2.TIEMPO_ID = P2.PROMO_TIEMPO where T1.TIEMPO_ANIO = T2.TIEMPO_ANIO and T1.TIEMPO_CUATRIMESTRE = T2.TIEMPO_CUATRIMESTRE order by P2.PROMO_DESCUENTO desc )
group by P1.PROMO_CATEGORIA, T1.TIEMPO_CUATRIMESTRE, T1.TIEMPO_ANIO,PROMO_DESCUENTO
GO

--7--
CREATE VIEW LOREM_IPSUM.VIEW_7 AS
SELECT 
    S1.SUCURSAL_DETALLE,
    T1.TIEMPO_ANIO, 
    T1.TIEMPO_MES,
    (
        (
            SELECT COUNT(*) 
            FROM LOREM_IPSUM.BI_D_TIEMPO T2 
            JOIN LOREM_IPSUM.BI_H_ENVIOS E2 
                ON E2.ENV_TIEMPO = T2.TIEMPO_ID 
            WHERE 
                T2.TIEMPO_ANIO = T1.TIEMPO_ANIO 
                AND T2.TIEMPO_MES = T1.TIEMPO_MES 
                AND S1.SUCURSAL_ID = E2.ENV_SUCURSAL 
                AND E2.ENV_ATRASADO = 0
            GROUP BY E2.ENV_SUCURSAL 
        ) * 100.0 / COUNT(E1.ENV_ID)
    ) AS 'Porcentaje cumplimiento'
FROM 
    LOREM_IPSUM.BI_H_ENVIOS E1
JOIN 
    LOREM_IPSUM.BI_D_SUCURSAL S1 
    ON E1.ENV_SUCURSAL = S1.SUCURSAL_ID
JOIN 
    LOREM_IPSUM.BI_D_TIEMPO T1 
    ON E1.ENV_TIEMPO = T1.TIEMPO_ID
GROUP BY 
    T1.TIEMPO_ANIO, 
    T1.TIEMPO_MES, 
    S1.SUCURSAL_DETALLE, 
    S1.SUCURSAL_ID
GO

--8--
CREATE VIEW LOREM_IPSUM.VIEW_8 AS
SELECT RANGO_ETARIO_DESCRIPCION, TIEMPO_ANIO, TIEMPO_CUATRIMESTRE,COUNT(*) 'ENVIOS' FROM LOREM_IPSUM.BI_H_ENVIOS
JOIN LOREM_IPSUM.BI_D_RANGO_ETARIO ON ENV_RANGO_ETARIO_CLIENTE = RANGO_ETARIO_ID
JOIN LOREM_IPSUM.BI_D_TIEMPO ON TIEMPO_ID = ENV_TIEMPO
GROUP BY RANGO_ETARIO_DESCRIPCION, TIEMPO_ANIO, TIEMPO_CUATRIMESTRE
GO

--9--
CREATE VIEW LOREM_IPSUM.VIEW_9 AS
SELECT top 5 UBI_LOCALIDAD FROM LOREM_IPSUM.BI_H_ENVIOS
JOIN LOREM_IPSUM.BI_D_UBICACION ON ENV_UBICACION = UBI_ID
order by ENV_COSTO desc
GO 

--10--T1
CREATE VIEW LOREM_IPSUM.VIEW_10 AS
SELECT TOP 3 PAGO_SUCURSAL,
             SUM(PAGO_TOTAL) AS IMPORTE_TOTAL_DE_CUOTAS,
             MP_DETALLE,
             TIEMPO_MES,
             TIEMPO_ANIO
FROM LOREM_IPSUM.BI_H_PAGOS
         JOIN LOREM_IPSUM.BI_D_TIEMPO ON TIEMPO_ID = PAGO_TIEMPO
         JOIN LOREM_IPSUM.BI_D_MEDIO_PAGO ON MP_ID = PAGO_MEDIO_PAGO
WHERE PAGO_CUOTAS != 0
GROUP BY PAGO_SUCURSAL, PAGO_TOTAL, MP_DETALLE, TIEMPO_ANIO, TIEMPO_MES
ORDER BY 2 DESC
GO


--11--
CREATE VIEW LOREM_IPSUM.VIEW_11 AS
SELECT RANGO_ETARIO_DESCRIPCION,
       AVG(PAGO_TOTAL / PAGO_CUOTAS) AS PROMEDIO
FROM LOREM_IPSUM.BI_H_PAGOS
         JOIN LOREM_IPSUM.BI_D_RANGO_ETARIO ON RANGO_ETARIO_ID = PAGO_RANGO_ETARIO_CLIENTE
WHERE PAGO_CUOTAS != 0
GROUP BY RANGO_ETARIO_DESCRIPCION
GO




--12--
CREATE VIEW LOREM_IPSUM.VIEW_12 AS
SELECT MP_DETALLE,
       CAST(CAST(ROUND((SUM(PAGO_DESCUENTO) * 100.0 / NULLIF((SUM(PAGO_TOTAL) + SUM(PAGO_DESCUENTO)), 0)),
                       2) AS DECIMAL(10, 2)) AS VARCHAR(10)) + '%' AS PORCENTAJE_DESCUENTO_APLICADO
FROM LOREM_IPSUM.BI_H_PAGOS
         JOIN
     LOREM_IPSUM.BI_D_MEDIO_PAGO ON MP_ID = PAGO_MEDIO_PAGO
GROUP BY MP_DETALLE
GO


--select * from LOREM_IPSUM.VIEW_1
--select * from LOREM_IPSUM.VIEW_2
--select * from LOREM_IPSUM.VIEW_3
--select * from LOREM_IPSUM.VIEW_4
--select * from LOREM_IPSUM.VIEW_5
--select * from LOREM_IPSUM.VIEW_6
select * from LOREM_IPSUM.VIEW_7
select * from LOREM_IPSUM.VIEW_8
select * from LOREM_IPSUM.VIEW_9
--select * from LOREM_IPSUM.VIEW_10
--select * from LOREM_IPSUM.VIEW_11
--select * from LOREM_IPSUM.VIEW_12;