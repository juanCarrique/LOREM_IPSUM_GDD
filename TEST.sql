USE GD1C2024
GO

------------ Eliminación de tablas    --------------------

IF OBJECT_ID('LOREM_IPSUM.Descuento_MP_Aplicado','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.Descuento_MP_Aplicado;

IF OBJECT_ID('LOREM_IPSUM.Descuento_Medio_pago','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.Descuento_Medio_pago;

IF OBJECT_ID('LOREM_IPSUM.Pago','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.Pago;

IF OBJECT_ID('LOREM_IPSUM.Medio_pago','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.Medio_pago;

IF OBJECT_ID('LOREM_IPSUM.Tipo_Medio_Pago','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.Tipo_Medio_Pago;

IF OBJECT_ID('LOREM_IPSUM.Tarjeta','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.Tarjeta;

IF OBJECT_ID('LOREM_IPSUM.Envio','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.Envio;

IF OBJECT_ID('LOREM_IPSUM.Estado_Envio','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.Estado_Envio;

IF OBJECT_ID('LOREM_IPSUM.Programacion_Envio','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.Programacion_Envio;

IF OBJECT_ID('LOREM_IPSUM.Promocion_x_ProductoTicket','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.Promocion_x_ProductoTicket;

IF OBJECT_ID('LOREM_IPSUM.Prod_Ticket','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.Prod_Ticket;

IF OBJECT_ID('LOREM_IPSUM.Prod_Promo','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.Prod_Promo;

IF OBJECT_ID('LOREM_IPSUM.Promo_Regla','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.Promo_Regla;

IF OBJECT_ID('LOREM_IPSUM.Regla','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.Regla;

IF OBJECT_ID('LOREM_IPSUM.Ticket','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.Ticket;

IF OBJECT_ID('LOREM_IPSUM.Empleado','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.Empleado;

IF OBJECT_ID('LOREM_IPSUM.Caja','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.Caja;

IF OBJECT_ID('LOREM_IPSUM.Tipo_Caja','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.Tipo_Caja;

IF OBJECT_ID('LOREM_IPSUM.Sucursal','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.Sucursal;

IF OBJECT_ID('LOREM_IPSUM.Supermercado','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.Supermercado;

IF OBJECT_ID('LOREM_IPSUM.Localidad','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.Localidad;

IF OBJECT_ID('LOREM_IPSUM.Provincia','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.Provincia;

IF OBJECT_ID('LOREM_IPSUM.Cliente','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.Cliente;

IF OBJECT_ID('LOREM_IPSUM.Producto','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.Producto;

IF OBJECT_ID('LOREM_IPSUM.Subcategoria','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.Subcategoria;

IF OBJECT_ID('LOREM_IPSUM.Categoria','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.Categoria;

IF OBJECT_ID('LOREM_IPSUM.Marca_producto','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.Marca_producto;

IF OBJECT_ID('LOREM_IPSUM.Promocion','U') IS NOT NULL
    DROP TABLE LOREM_IPSUM.Promocion;

-------------------- Eliminación del esquema ---------------------------

DROP SCHEMA IF EXISTS LOREM_IPSUM
GO

-------------------- Creación del esquema ---------------------------

CREATE SCHEMA LOREM_IPSUM
GO

-------------------- Creación de tablas ---------------------------

CREATE TABLE LOREM_IPSUM.Provincia (
    prov_cod        INT IDENTITY(1,1) NOT NULL,
    prov_nombre     NVARCHAR(55),
);

CREATE TABLE LOREM_IPSUM.Localidad(
    localidad_cod       INT IDENTITY(1,1) NOT NULL,
    localidad_prov      INT    NOT NULL,
    localidad_nombre    NVARCHAR(55)
)

CREATE TABLE LOREM_IPSUM.Supermercado(
	super_cod				INT IDENTITY(1,1) NOT NULL,
    super_cuit              NVARCHAR(13) NOT NULL,
    super_localidad         INT NOT NULL,
    super_nombre            NVARCHAR(255),
    super_iibb              NVARCHAR(255),
    super_domicilio         NVARCHAR(255),
    super_ini_actividades   DATE,
    super_condicion_fiscal  NVARCHAR(255),
	super_razon_social		NVARCHAR(255)
)

CREATE TABLE LOREM_IPSUM.Sucursal(
    suc_cod         INT IDENTITY(1,1) NOT NULL,
    suc_localidad   INT NOT NULL,
    suc_super       INT NOT NULL,
    suc_nombre      NVARCHAR(255),
    suc_direccion   NVARCHAR(255)

)

CREATE TABLE LOREM_IPSUM.Tipo_Caja(
    TC_cod         INT IDENTITY(1,1) NOT NULL,
    TC_detalle     NVARCHAR(50)
)

CREATE TABLE LOREM_IPSUM.Caja(
    caja_numero     DECIMAL(10,0) NOT NULL,
    caja_tipo       INT NOT NULL,
    caja_sucursal   INT NOT NULL
)

CREATE TABLE LOREM_IPSUM.Empleado(
    emp_sucursal            INT NOT NULL,
    emp_nombre              NVARCHAR(255),
    emp_apellido            NVARCHAR(255),
    emp_dni                 DECIMAL(10,0) NOT NULL,
    emp_fecha_registro      DATE,
    emp_telefono            NVARCHAR(9),
    emp_fecha_nacimiento    DATE
)

CREATE TABLE LOREM_IPSUM.Ticket(
    ticket_nro              DECIMAL(10,0) NOT NULL,
    ticket_tipo             CHAR		  NOT NULL,
    ticket_empleado         DECIMAL(10,0) NOT NULL,
    ticket_cliente          DECIMAL(10,0),
    ticket_caja             DECIMAL(10,0) NOT NULL,
	ticket_sucursal			INT			  NOT NULL,
    ticket_fecha            DATETIME NOT NULL,
    ticket_subtotal         DECIMAL(10,2),
    ticket_desc_promociones DECIMAL(10,2),
	ticket_desc_medio_pago  DECIMAL(10,2),
    ticket_total            DECIMAL(10,2)
)

CREATE TABLE LOREM_IPSUM.Marca_producto(
    marca_cod       DECIMAL(10,0) NOT NULL,
    marca_nombre    NVARCHAR(255)
)

CREATE TABLE LOREM_IPSUM.Categoria(
    cat_cod     DECIMAL(10,0) NOT NULL,
    cat_nombre  NVARCHAR(50)
)

CREATE TABLE LOREM_IPSUM.Subcategoria(
    subcat_cod      DECIMAL(10,0) NOT NULL,
    subcat_cat      DECIMAL(10,0) NOT NULL,
    subcat_nombre   NVARCHAR(255)
)

CREATE TABLE LOREM_IPSUM.Regla(
    regla_cod               DECIMAL(10,0) NOT NULL,
    regla_descripcion       NVARCHAR(255),
    regla_descuento         DECIMAL(3,2),
    regla_cant_aplicable    DECIMAL(10,0),
    regla_cant_ap_desc      DECIMAL(10,0),
    regla_cant_maxima       DECIMAL(10,0),
    regla_misma_marca       BIT,
    regla_mismo_prod        BIT
)

CREATE TABLE LOREM_IPSUM.Promo_Regla(
    promo_cod       DECIMAL(10,0) NOT NULL,
    promo_regla     DECIMAL(10,0) NOT NULL
)

CREATE TABLE LOREM_IPSUM.Promocion(
    promo_cod           DECIMAL(10,0) NOT NULL,
    promo_descripcion   NVARCHAR(255),
    promo_inicio        DATE,
    promo_fin           DATE
)

CREATE TABLE LOREM_IPSUM.Prod_Promo(
    PP_prod_cod     DECIMAL(10,0) NOT NULL,
    PP_promo_cod    DECIMAL(10,0) NOT NULL,
    PP_cant         DECIMAL(3,0) NOT NULL
)


CREATE TABLE LOREM_IPSUM.Producto(
    prod_cod        DECIMAL(10,0) NOT NULL,
    prod_sub_cat    DECIMAL(10,0) NOT NULL,
    prod_marca      DECIMAL(10,0) NOT NULL,
    prod_nombre     NVARCHAR(255),
    prod_precio     DECIMAL(18,2) NOT NULL
)

CREATE TABLE LOREM_IPSUM.Prod_Ticket(
    PT_ticket      DECIMAL(10,0) NOT NULL,
    PT_ticket_fecha            DATETIME NOT NULL,
    PT_prod        DECIMAL(10,0) NOT NULL,
    PT_tipo        CHAR,
    PT_cant        DECIMAL(3,0) NOT NULL,
    PT_precio      DECIMAL(18,2),
    PT_descuento   DECIMAL(18,2),
	PT_sucursal   INT			NOT NULL
)

CREATE TABLE LOREM_IPSUM.Promocion_x_ProductoTicket(
    PPT_ticket      DECIMAL(10,0) NOT NULL,
    PPT_promo       DECIMAL(10,0) NOT NULL,
    PPT_descuento   DECIMAL(18,2)
)


CREATE TABLE LOREM_IPSUM.Programacion_Envio(
    prog_env_codigo                  DECIMAL(10,0) IDENTITY(1,1) NOT NULL,
    prog_env_fecha_programacion      DATE,
    prog_env_hs_inicio               DECIMAL(2,0),
    prog_env_hr_fin                  DECIMAL(2,0)
)


CREATE TABLE LOREM_IPSUM.Estado_Envio(
    estado_env_cod      DECIMAL(10,0) IDENTITY(1,1) NOT NULL,
    estado_env_detalle  NVARCHAR(50)
)

CREATE TABLE LOREM_IPSUM.Cliente(
    clie_nro                DECIMAL(10,0) IDENTITY(1,1) NOT NULL,
    clie_localidad          INT NOT NULL,
    clie_nombre             NVARCHAR(50),
    clie_apellido           NVARCHAR(50),
    clie_dni                DECIMAL(10,0),
    clie_fecha_nacimiento   DATE,
    clie_fecha_registro     DATE,
    clie_mail               NVARCHAR(50),
    clie_domicilio          NVARCHAR(100),
)

CREATE TABLE LOREM_IPSUM.Envio(
    envio_nro                   DECIMAL(10,0) IDENTITY(1,1) NOT NULL,
    envio_ticket                DECIMAL(10,0) NOT NULL,
	envio_ticket_sucursal		INT NOT NULL, 
	envio_ticket_tipo			CHAR NOT NULL,
    envio_ticket_fecha            DATETIME NOT NULL,
    envio_clie                  DECIMAL(10,0) NOT NULL,
    envio_programacion          DECIMAL(10,0) NOT NULL,
    envio_costo                 DECIMAL(10,0),
    envio_estado                DECIMAL
)

CREATE TABLE LOREM_IPSUM.Tarjeta(
    tarjeta_nro         NVARCHAR(10)    NOT NULL,
    tarjeta_clie        DECIMAL(10,0),
    tarjeta_vto         DATE,
    tarjeta_detalle     DECIMAL(10,0)
)


CREATE TABLE LOREM_IPSUM.Tipo_Medio_Pago(
    TMP_tipo        DECIMAL(10,0) IDENTITY(1,1) NOT NULL,
    TMP_detalle     NVARCHar(50)
)

CREATE TABLE LOREM_IPSUM.Medio_pago(
    MP_cod         DECIMAL(10,0) IDENTITY(1,1) NOT NULL,
    MP_tipo        DECIMAL(10,0) NOT NULL,
    MP_detalle     NVARCHAR(50)
)

CREATE TABLE LOREM_IPSUM.Pago(
    pago_nro                DECIMAL(10,0) IDENTITY(1,1) NOT NULL,
    pago_mp                 DECIMAL(10,0) NOT NULL,
    pago_ticket             DECIMAL(10,0) NOT NULL,
	pago_ticket_tipo		CHAR NOT NULL,
	pago_ticket_sucursal	INT NOT NULL,
    pago_ticket_fecha            DATETIME NOT NULL,
    pago_tarjeta            NVARCHAR(10),
    pago_fecha              DATETIME,
    pago_importe            DECIMAL(18,2),
    pago_cuotas             DECIMAL(2,0)
)


CREATE TABLE LOREM_IPSUM.Descuento_Medio_pago(
    desc_cod               DECIMAL(10,0) NOT NULL,
    desc_medio_pago        DECIMAL(10,0) NOT NULL,
    desc_descripcion       NVARCHAR(50),
    desc_medio_pago_inicio DATE,
    desc_medio_pago_fin    DATE,
    desc_descuento_mp      DECIMAL(3,2),
    desc_medio_pago_tope   DECIMAL(18,2)
)

CREATE TABLE LOREM_IPSUM.Descuento_MP_Aplicado(
    desc_MP_apli_pago       DECIMAL(10,0) NOT NULL,
    desc_MP_apli_descuento  DECIMAL(10,0) NOT NULL,
    desc_MP_apli_monto      DECIMAL(8,2)
)

-------------------- Creación de primary keys ---------------------------

ALTER TABLE LOREM_IPSUM.Provincia
ADD CONSTRAINT PK_Provincia PRIMARY KEY (prov_cod);

ALTER TABLE LOREM_IPSUM.Localidad
ADD CONSTRAINT PK_Localidad PRIMARY KEY (localidad_cod);

ALTER TABLE LOREM_IPSUM.Supermercado
ADD CONSTRAINT PK_Super PRIMARY KEY (super_cod);

ALTER TABLE LOREM_IPSUM.Sucursal
ADD CONSTRAINT PK_Sucursal PRIMARY KEY (suc_cod);

ALTER TABLE LOREM_IPSUM.Ticket
ADD CONSTRAINT PK_Ticket PRIMARY KEY (ticket_nro, ticket_sucursal, ticket_tipo, ticket_fecha);

ALTER TABLE LOREM_IPSUM.Tipo_Caja
ADD CONSTRAINT PK_Tipo_Caja PRIMARY KEY (TC_cod);

ALTER TABLE LOREM_IPSUM.Caja
ADD CONSTRAINT PK_Caja PRIMARY KEY (caja_numero, caja_sucursal);

ALTER TABLE LOREM_IPSUM.Empleado
ADD CONSTRAINT PK_Empleado PRIMARY KEY (emp_dni);

ALTER TABLE LOREM_IPSUM.Marca_producto
ADD CONSTRAINT PK_Marca_producto PRIMARY KEY (marca_cod);

ALTER TABLE LOREM_IPSUM.Categoria
ADD CONSTRAINT PK_Categoria PRIMARY KEY (cat_cod);

ALTER TABLE LOREM_IPSUM.Subcategoria
ADD CONSTRAINT PK_Subcategoria PRIMARY KEY (subcat_cod);

ALTER TABLE LOREM_IPSUM.Regla
ADD CONSTRAINT PK_Regla PRIMARY KEY (regla_cod);

ALTER TABLE LOREM_IPSUM.Promocion
ADD CONSTRAINT PK_Promocion PRIMARY KEY (promo_cod);

ALTER TABLE LOREM_IPSUM.Producto
ADD CONSTRAINT PK_Producto PRIMARY KEY (prod_cod);

ALTER TABLE LOREM_IPSUM.Prod_Ticket
ADD CONSTRAINT PK_PT_ticket PRIMARY KEY (PT_ticket)

ALTER TABLE LOREM_IPSUM.Programacion_Envio
ADD CONSTRAINT PK_Programacion_Envio PRIMARY KEY (prog_env_codigo);

ALTER TABLE LOREM_IPSUM.Cliente
ADD CONSTRAINT PK_Cliente PRIMARY KEY (clie_nro);

ALTER TABLE LOREM_IPSUM.Envio
ADD CONSTRAINT PK_Envio PRIMARY KEY (envio_nro);

ALTER TABLE LOREM_IPSUM.Tarjeta
ADD CONSTRAINT PK_Tarjeta PRIMARY KEY (tarjeta_nro);

ALTER TABLE LOREM_IPSUM.Tipo_Medio_Pago
ADD CONSTRAINT PK_Tipo_Medio_Pago PRIMARY KEY (TMP_tipo);

ALTER TABLE LOREM_IPSUM.Medio_Pago
ADD CONSTRAINT PK_Medio_Pago PRIMARY KEY (MP_cod);

ALTER TABLE LOREM_IPSUM.Pago
ADD CONSTRAINT PK_Pago PRIMARY KEY (pago_nro);

ALTER TABLE LOREM_IPSUM.Descuento_Medio_pago
ADD CONSTRAINT PK_Descuento_Medio_pago PRIMARY KEY (desc_cod);


-------------------- Creación de foreign keys ---------------------------

-- Foreign keys para LOREM_IPSUM.Localidad
ALTER TABLE LOREM_IPSUM.Localidad
ADD CONSTRAINT FK_Localidad_Provincia
FOREIGN KEY (localidad_prov) REFERENCES LOREM_IPSUM.Provincia(prov_cod);

-- Foreign keys para LOREM_IPSUM.Supermercado
ALTER TABLE LOREM_IPSUM.Supermercado
ADD CONSTRAINT FK_Supermercado_Localidad
FOREIGN KEY (super_localidad) REFERENCES LOREM_IPSUM.Localidad(localidad_cod);

-- Foreign keys para LOREM_IPSUM.Sucursal
ALTER TABLE LOREM_IPSUM.Sucursal
ADD CONSTRAINT FK_Sucursal_Localidad
FOREIGN KEY (suc_localidad) REFERENCES LOREM_IPSUM.Localidad(localidad_cod);

ALTER TABLE LOREM_IPSUM.Sucursal
ADD CONSTRAINT FK_Sucursal_Super
FOREIGN KEY (suc_super) REFERENCES LOREM_IPSUM.Supermercado(super_cod);

-- Foreign keys para LOREM_IPSUM.Caja
ALTER TABLE LOREM_IPSUM.Caja
ADD CONSTRAINT FK_Caja_Tipo_Caja
FOREIGN KEY (caja_tipo) REFERENCES LOREM_IPSUM.Tipo_Caja(TC_cod);

ALTER TABLE LOREM_IPSUM.Caja
ADD CONSTRAINT FK_Caja_Sucursal
FOREIGN KEY (caja_sucursal) REFERENCES LOREM_IPSUM.Sucursal(suc_cod);

-- Foreign keys para LOREM_IPSUM.Empleado
ALTER TABLE LOREM_IPSUM.Empleado
ADD CONSTRAINT FK_Empleado_Sucursal
FOREIGN KEY (emp_sucursal) REFERENCES LOREM_IPSUM.Sucursal(suc_cod);

-- Foreign keys para LOREM_IPSUM.Ticket

ALTER TABLE LOREM_IPSUM.Ticket
ADD CONSTRAINT FK_Ticket_Empleado
FOREIGN KEY (ticket_empleado) REFERENCES LOREM_IPSUM.Empleado(emp_dni);

ALTER TABLE LOREM_IPSUM.Ticket
ADD CONSTRAINT FK_Ticket_Cliente
FOREIGN KEY (ticket_cliente) REFERENCES LOREM_IPSUM.Cliente(clie_nro);

ALTER TABLE LOREM_IPSUM.Ticket
ADD CONSTRAINT FK_Ticket_Caja
FOREIGN KEY (ticket_caja, ticket_sucursal) REFERENCES LOREM_IPSUM.Caja(caja_numero, caja_sucursal);


-- Foreign keys para LOREM_IPSUM.Subcategoria
ALTER TABLE LOREM_IPSUM.Subcategoria
ADD CONSTRAINT FK_Subcategoria_Categoria
FOREIGN KEY (subcat_cat) REFERENCES LOREM_IPSUM.Categoria(cat_cod);

-- Foreign keys para LOREM_IPSUM.Promo_Regla
ALTER TABLE LOREM_IPSUM.Promo_Regla
ADD CONSTRAINT FK_Promo_Regla_Promocion
FOREIGN KEY (promo_cod) REFERENCES LOREM_IPSUM.Promocion(promo_cod);

ALTER TABLE LOREM_IPSUM.Promo_Regla
ADD CONSTRAINT FK_Promo_Regla_Regla
FOREIGN KEY (promo_regla) REFERENCES LOREM_IPSUM.Regla(regla_cod);

-- Foreign keys para LOREM_IPSUM.Prod_Promo
ALTER TABLE LOREM_IPSUM.Prod_Promo
ADD CONSTRAINT FK_Prod_Promo_Producto
FOREIGN KEY (PP_prod_cod) REFERENCES LOREM_IPSUM.Producto(prod_cod);

ALTER TABLE LOREM_IPSUM.Prod_Promo
ADD CONSTRAINT FK_Prod_Promo_Promocion
FOREIGN KEY (PP_promo_cod) REFERENCES LOREM_IPSUM.Promocion(promo_cod);

-- Foreign keys para LOREM_IPSUM.Producto

ALTER TABLE LOREM_IPSUM.Producto
ADD CONSTRAINT FK_Producto_Subcategoria
FOREIGN KEY (prod_sub_cat) REFERENCES LOREM_IPSUM.Subcategoria(subcat_cod);

ALTER TABLE LOREM_IPSUM.Producto
ADD CONSTRAINT FK_Producto_Marca
FOREIGN KEY (prod_marca) REFERENCES LOREM_IPSUM.Marca_producto(marca_cod);

-- Foreign keys para LOREM_IPSUM.Prod_Ticket
ALTER TABLE LOREM_IPSUM.Prod_Ticket
ADD CONSTRAINT FK_Prod_Ticket_Ticket
FOREIGN KEY (PT_ticket, PT_sucursal, PT_tipo, PT_ticket_fecha) REFERENCES LOREM_IPSUM.Ticket(ticket_nro, ticket_sucursal, ticket_tipo, ticket_fecha);

ALTER TABLE LOREM_IPSUM.Prod_Ticket
ADD CONSTRAINT FK_Prod_Ticket_Producto
FOREIGN KEY (PT_prod) REFERENCES LOREM_IPSUM.Producto(prod_cod);

-- Foreign keys para LOREM_IPSUM.Promocion_x_ProductoTicket
ALTER TABLE LOREM_IPSUM.Promocion_x_ProductoTicket
ADD CONSTRAINT FK_PPT_Ticket
FOREIGN KEY (PPT_ticket) REFERENCES LOREM_IPSUM.Prod_Ticket(PT_ticket);

ALTER TABLE LOREM_IPSUM.Promocion_x_ProductoTicket
ADD CONSTRAINT FK_PPT_Promocion
FOREIGN KEY (PPT_promo) REFERENCES LOREM_IPSUM.Promocion(promo_cod);

-- Foreign keys para LOREM_IPSUM.Envio
ALTER TABLE LOREM_IPSUM.Envio
ADD CONSTRAINT FK_Envio_Ticket
FOREIGN KEY (envio_ticket, envio_ticket_sucursal, envio_ticket_tipo, envio_ticket_fecha) REFERENCES LOREM_IPSUM.Ticket(ticket_nro, ticket_sucursal, ticket_tipo, ticket_fecha);

ALTER TABLE LOREM_IPSUM.Envio
ADD CONSTRAINT FK_Envio_Cliente
FOREIGN KEY (envio_clie) REFERENCES LOREM_IPSUM.Cliente(clie_nro);

ALTER TABLE LOREM_IPSUM.Envio
ADD CONSTRAINT FK_Envio_Programacion
FOREIGN KEY (envio_programacion) REFERENCES LOREM_IPSUM.Programacion_Envio(prog_env_codigo);

-- Foreign keys para LOREM_IPSUM.Tarjeta
ALTER TABLE LOREM_IPSUM.Tarjeta
ADD CONSTRAINT FK_Tarjeta_Cliente
FOREIGN KEY (tarjeta_clie) REFERENCES LOREM_IPSUM.Cliente(clie_nro);

-- Foreign keys para LOREM_IPSUM.Medio_pago
ALTER TABLE LOREM_IPSUM.Medio_pago
ADD CONSTRAINT FK_Medio_pago_Tipo_Medio_Pago
FOREIGN KEY (MP_tipo) REFERENCES LOREM_IPSUM.Tipo_Medio_Pago(TMP_tipo);

-- Foreign keys para LOREM_IPSUM.Pago
ALTER TABLE LOREM_IPSUM.Pago
ADD CONSTRAINT FK_Pago_Medio_Pago
FOREIGN KEY (pago_mp) REFERENCES LOREM_IPSUM.Medio_pago(MP_cod);

ALTER TABLE LOREM_IPSUM.Pago
ADD CONSTRAINT FK_Pago_Ticket
FOREIGN KEY (pago_ticket, pago_ticket_sucursal, pago_ticket_tipo, pago_ticket_fecha) REFERENCES LOREM_IPSUM.Ticket(ticket_nro, ticket_sucursal, ticket_tipo, ticket_fecha);

ALTER TABLE LOREM_IPSUM.Pago
ADD CONSTRAINT FK_Pago_Tarjeta
FOREIGN KEY (pago_tarjeta) REFERENCES LOREM_IPSUM.Tarjeta(tarjeta_nro);

-- Foreign keys para LOREM_IPSUM.Descuento_Medio_pago
ALTER TABLE LOREM_IPSUM.Descuento_Medio_pago
ADD CONSTRAINT FK_Descuento_Medio_pago_Medio_Pago
FOREIGN KEY (desc_medio_pago) REFERENCES LOREM_IPSUM.Medio_pago(MP_cod);

-- Foreign keys para LOREM_IPSUM.Descuento_MP_Aplicado
ALTER TABLE LOREM_IPSUM.Descuento_MP_Aplicado
ADD CONSTRAINT FK_Desc_MP_Aplicado_Pago
FOREIGN KEY (desc_MP_apli_pago) REFERENCES LOREM_IPSUM.Pago(pago_nro);

ALTER TABLE LOREM_IPSUM.Descuento_MP_Aplicado
ADD CONSTRAINT FK_Desc_MP_Aplicado_Descuento
FOREIGN KEY (desc_MP_apli_descuento) REFERENCES LOREM_IPSUM.Descuento_Medio_pago(desc_cod);

-------------------- Migración de tablas ---------------------------

-- Migración de Provincia

INSERT INTO LOREM_IPSUM.Provincia (prov_nombre)
SELECT DISTINCT SUCURSAL_PROVINCIA AS prov_nombre
FROM gd_esquema.Maestra
WHERE SUCURSAL_PROVINCIA IS NOT NULL

UNION

SELECT DISTINCT CLIENTE_PROVINCIA
FROM gd_esquema.Maestra
WHERE CLIENTE_PROVINCIA IS NOT NULL

UNION

SELECT DISTINCT SUPER_PROVINCIA
FROM gd_esquema.Maestra
WHERE SUPER_PROVINCIA IS NOT NULL;

-- Migración de Localidad

INSERT INTO LOREM_IPSUM.Localidad (localidad_nombre, localidad_prov)
SELECT DISTINCT SUCURSAL_LOCALIDAD AS localidad_nombre, prov_cod 
FROM gd_esquema.Maestra
join LOREM_IPSUM.Provincia on prov_nombre = SUCURSAL_PROVINCIA
WHERE CLIENTE_PROVINCIA IS NOT NULL

UNION

SELECT DISTINCT CLIENTE_LOCALIDAD AS localidad_nombre, prov_cod 
FROM gd_esquema.Maestra
join LOREM_IPSUM.Provincia on prov_nombre = CLIENTE_PROVINCIA
WHERE CLIENTE_PROVINCIA IS NOT NULL
 
UNION

SELECT DISTINCT SUPER_LOCALIDAD AS localidad_nombre, prov_cod 
FROM gd_esquema.Maestra
join LOREM_IPSUM.Provincia on prov_nombre = SUPER_PROVINCIA
WHERE CLIENTE_PROVINCIA IS NOT NULL

-- Migración de Supermercado

INSERT INTO LOREM_IPSUM.Supermercado (super_cuit, super_nombre, super_iibb, super_domicilio, super_ini_actividades, super_condicion_fiscal,super_razon_social , super_localidad)
select distinct SUPER_CUIT, SUPER_NOMBRE, SUPER_IIBB, SUPER_DOMICILIO, SUPER_FECHA_INI_ACTIVIDAD, SUPER_CONDICION_FISCAL,SUPER_RAZON_SOC ,localidad_cod from gd_esquema.Maestra
join LOREM_IPSUM.Localidad on SUPER_LOCALIDAD = localidad_nombre
where SUPER_CONDICION_FISCAL IS NOT NULL

-- Migración de Sucursal

INSERT INTO LOREM_IPSUM.Sucursal(suc_direccion, suc_nombre, suc_super, suc_localidad)
select distinct SUCURSAL_DIRECCION, SUCURSAL_NOMBRE,super_cod , localidad_cod from gd_esquema.Maestra
join LOREM_IPSUM.Localidad on SUCURSAL_LOCALIDAD = localidad_nombre
join LOREM_IPSUM.Supermercado on gd_esquema.Maestra.SUPER_NOMBRE = LOREM_IPSUM.Supermercado.super_nombre

-- Migración de Tipo_Caja

INSERT INTO LOREM_IPSUM.Tipo_Caja(TC_detalle)
select distinct CAJA_TIPO from gd_esquema.Maestra
where CAJA_TIPO is not null

-- Migración de Caja

INSERT INTO LOREM_IPSUM.Caja(caja_numero, caja_sucursal, caja_tipo)
select distinct CAJA_NUMERO, suc_cod, TC_cod from gd_esquema.Maestra
join LOREM_IPSUM.Sucursal on suc_nombre = SUCURSAL_NOMBRE
join LOREM_IPSUM.Tipo_Caja on TC_detalle = CAJA_TIPO
where CAJA_NUMERO is not null

-- Migración de Empleado

INSERT INTO LOREM_IPSUM.Empleado(emp_apellido, emp_dni, emp_nombre, emp_fecha_nacimiento, emp_fecha_registro, emp_sucursal, emp_telefono)
select distinct EMPLEADO_APELLIDO, EMPLEADO_DNI, EMPLEADO_NOMBRE, EMPLEADO_FECHA_NACIMIENTO, EMPLEADO_FECHA_REGISTRO, suc_cod, EMPLEADO_TELEFONO from gd_esquema.Maestra
join LOREM_IPSUM.Sucursal on suc_nombre = SUCURSAL_NOMBRE
where EMPLEADO_DNI is not null

-- Migración de Estado_Envio

INSERT INTO LOREM_IPSUM.Estado_Envio (estado_env_detalle)
SELECT ENVIO_ESTADO
FROM gd_esquema.Maestra
WHERE ENVIO_ESTADO IS NOT NULL
GROUP BY ENVIO_ESTADO

-- Migración de Programacion_Envio

INSERT INTO LOREM_IPSUM.Programacion_Envio (prog_env_fecha_programacion, prog_env_hs_inicio, prog_env_hr_fin)
SELECT CAST(ENVIO_FECHA_ENTREGA AS DATE),
       ENVIO_HORA_INICIO,
       ENVIO_HORA_FIN
FROM gd_esquema.Maestra
WHERE ENVIO_FECHA_ENTREGA IS NOT NULL
  AND ENVIO_HORA_INICIO IS NOT NULL
  AND ENVIO_HORA_FIN IS NOT NULL
GROUP BY ENVIO_FECHA_ENTREGA, ENVIO_HORA_INICIO, ENVIO_HORA_FIN

-- Migración de Tipo_Medio_Pago

INSERT INTO LOREM_IPSUM.Tipo_Medio_Pago (TMP_detalle)
SELECT PAGO_TIPO_MEDIO_PAGO
FROM  gd_esquema.Maestra
WHERE PAGO_TIPO_MEDIO_PAGO IS NOT NULL
GROUP BY PAGO_TIPO_MEDIO_PAGO
ORDER BY PAGO_TIPO_MEDIO_PAGO

-- Migración de Medio_pago (necesita migrada -> Tipo_Medio_Pago)

INSERT INTO LOREM_IPSUM.Medio_pago (MP_tipo, MP_detalle)
SELECT (SELECT TMP_tipo FROM LOREM_IPSUM.Tipo_Medio_Pago WHERE TMP_detalle = PAGO_TIPO_MEDIO_PAGO),
       PAGO_MEDIO_PAGO
FROM  gd_esquema.Maestra
WHERE PAGO_MEDIO_PAGO IS NOT NULL
GROUP BY PAGO_TIPO_MEDIO_PAGO, PAGO_MEDIO_PAGO
ORDER BY PAGO_MEDIO_PAGO

-- Migración de Descuento_Medio_pago (necesita migrada -> Medio_pago)

INSERT INTO LOREM_IPSUM.Descuento_Medio_pago (desc_cod, desc_medio_pago, desc_descripcion, desc_medio_pago_inicio,
                                              desc_medio_pago_fin, desc_descuento_mp, desc_medio_pago_tope)
SELECT DESCUENTO_CODIGO,
       (SELECT MP_cod FROM LOREM_IPSUM.Medio_pago WHERE MP_detalle = PAGO_MEDIO_PAGO), -- Buscar el medio de pago en la tabla de Medio_pago
       DESCUENTO_DESCRIPCION,
       DESCUENTO_FECHA_INICIO,
       DESCUENTO_FECHA_FIN,
       DESCUENTO_PORCENTAJE_DESC,
       DESCUENTO_TOPE
FROM gd_esquema.Maestra
WHERE DESCUENTO_CODIGO IS NOT NULL
GROUP BY DESCUENTO_CODIGO, PAGO_MEDIO_PAGO, DESCUENTO_DESCRIPCION, DESCUENTO_FECHA_INICIO, DESCUENTO_FECHA_FIN,
         DESCUENTO_PORCENTAJE_DESC, DESCUENTO_TOPE

-- Migración de Cliente (necesita migrada -> localidad y provincia)

INSERT INTO LOREM_IPSUM.Cliente (clie_nombre, clie_apellido, clie_dni, clie_fecha_nacimiento, clie_fecha_registro,
                                 clie_mail, clie_domicilio, clie_localidad)
SELECT CLIENTE_NOMBRE,
       CLIENTE_APELLIDO,
       CLIENTE_DNI,
       CLIENTE_FECHA_NACIMIENTO,
       CLIENTE_FECHA_REGISTRO,
       CLIENTE_MAIL,
       CLIENTE_DOMICILIO,
       (SELECT localidad_cod
        FROM LOREM_IPSUM.Localidad
                 JOIN LOREM_IPSUM.Provincia ON localidad_prov = Provincia.prov_cod
        WHERE localidad_nombre = CLIENTE_LOCALIDAD
          AND prov_nombre = CLIENTE_PROVINCIA)
FROM gd_esquema.Maestra
WHERE Maestra.CLIENTE_NOMBRE IS NOT NULL
GROUP BY CLIENTE_NOMBRE, CLIENTE_APELLIDO, CLIENTE_DNI, CLIENTE_FECHA_NACIMIENTO, CLIENTE_FECHA_REGISTRO, CLIENTE_MAIL,
         CLIENTE_DOMICILIO, CLIENTE_LOCALIDAD, CLIENTE_PROVINCIA

-- Migración de Ticket

INSERT INTO LOREM_IPSUM.Ticket(ticket_nro, ticket_desc_promociones, ticket_desc_medio_pago, ticket_fecha,
                               ticket_subtotal, ticket_tipo, ticket_total, ticket_empleado, ticket_sucursal,
                               ticket_caja, ticket_cliente)

SELECT TICKET_NUMERO,
       TICKET_TOTAL_DESCUENTO_APLICADO,
       TICKET_TOTAL_DESCUENTO_APLICADO_MP,
       TICKET_FECHA_HORA,
       TICKET_SUBTOTAL_PRODUCTOS,
       TICKET_TIPO_COMPROBANTE,
       TICKET_TOTAL_TICKET,
       emp_dni,
       caja_sucursal,
       M1.caja_numero,
       (SELECT MAX(clie_nro)
        FROM LOREM_IPSUM.Cliente
                 JOIN gd_esquema.Maestra M2 ON CLIENTE_DNI = clie_dni
        WHERE M2.TICKET_NUMERO = M1.TICKET_NUMERO)
FROM gd_esquema.Maestra M1
         JOIN LOREM_IPSUM.Empleado ON EMPLEADO_DNI = emp_dni
         JOIN LOREM_IPSUM.Sucursal ON SUCURSAL_NOMBRE = suc_nombre
         join LOREM_IPSUM.Caja
              on M1.CAJA_NUMERO = LOREM_IPSUM.Caja.caja_numero and caja_sucursal = suc_cod
GROUP BY TICKET_TOTAL_DESCUENTO_APLICADO, TICKET_TOTAL_DESCUENTO_APLICADO_MP, TICKET_FECHA_HORA, TICKET_NUMERO,
         TICKET_SUBTOTAL_PRODUCTOS, TICKET_TIPO_COMPROBANTE, TICKET_TOTAL_TICKET, emp_dni, caja_sucursal,
         M1.caja_numero

-- Migración de Tarjeta (necesita migrada -> Tipo_Medio_Pago, Medio_pago y Cliente)

INSERT INTO LOREM_IPSUM.Tarjeta (tarjeta_nro, tarjeta_vto, tarjeta_clie, tarjeta_detalle)

SELECT PAGO_TARJETA_NRO,
       PAGO_TARJETA_FECHA_VENC,
       (SELECT MAX(clie_nro)
        FROM LOREM_IPSUM.Cliente
                 JOIN gd_esquema.Maestra ON clie_dni = CLIENTE_DNI
        WHERE TICKET_NUMERO = M1.TICKET_NUMERO),
       (SELECT MP_cod FROM LOREM_IPSUM.Medio_pago WHERE MP_detalle = PAGO_MEDIO_PAGO)
FROM gd_esquema.Maestra M1
WHERE PAGO_TARJETA_NRO IS NOT NULL
GROUP BY PAGO_TARJETA_NRO, PAGO_TARJETA_FECHA_VENC, CLIENTE_DNI, PAGO_MEDIO_PAGO, TICKET_NUMERO
ORDER BY PAGO_TARJETA_NRO

-- Migración de Pago (necesita migrada -> Medio_pago, Ticket(externa), Tarjeta)

/*INSERT INTO LOREM_IPSUM.Pago (pago_importe, pago_cuotas, pago_fecha, pago_ticket, pago_tarjeta, pago_mp)

SELECT PAGO_IMPORTE,
       PAGO_TARJETA_CUOTAS,
       PAGO_FECHA,
       (SELECT ticket_nro FROM LOREM_IPSUM.Ticket WHERE ticket_nro = TICKET_NUMERO),
       (SELECT tarjeta_nro FROM LOREM_IPSUM.Tarjeta WHERE tarjeta_nro = PAGO_TARJETA_NRO),
       (SELECT MP_cod FROM LOREM_IPSUM.Medio_pago WHERE MP_detalle = PAGO_MEDIO_PAGO)
FROM gd_esquema.Maestra
WHERE PAGO_IMPORTE IS NOT NULL
GROUP BY PAGO_IMPORTE, PAGO_TARJETA_CUOTAS, PAGO_FECHA, TICKET_NUMERO, PAGO_TARJETA_NRO, PAGO_MEDIO_PAGO*/

-- Migración de Descuento_MP_Aplicado (necesita migrada -> Pago, Descuento_Medio_pago)

/*INSERT INTO LOREM_IPSUM.Descuento_MP_Aplicado (desc_MP_apli_monto, desc_MP_apli_pago, desc_MP_apli_descuento)

SELECT PAGO_DESCUENTO_APLICADO,
       (SELECT pago_nro FROM LOREM_IPSUM.Pago WHERE pago_tarjeta = PAGO_TARJETA_NRO),
       (SELECT desc_cod FROM LOREM_IPSUM.Descuento_Medio_pago WHERE desc_cod = DESCUENTO_CODIGO)
FROM gd_esquema.Maestra
WHERE PAGO_DESCUENTO_APLICADO IS NOT NULL
GROUP BY PAGO_DESCUENTO_APLICADO*/

-- Migración de Envio (necesita migrada -> Cliente, Programacion_Envio, Estado_Envio)

/*INSERT INTO LOREM_IPSUM.Envio (envio_ticket, envio_costo, envio_clie, envio_programacion, envio_estado);

SELECT TICKET_NUMERO,
       ENVIO_COSTO,
       (SELECT clie_nro FROM LOREM_IPSUM.Cliente WHERE clie_dni = CLIENTE_DNI),
       (SELECT prog_env_codigo FROM LOREM_IPSUM.Programacion_Envio WHERE prog_env_fecha_programacion = ENVIO_FECHA_ENTREGA AND prog_env_hs_inicio = ENVIO_HORA_INICIO AND prog_env_hr_fin = ENVIO_HORA_FIN),
       (SELECT estado_env_cod FROM LOREM_IPSUM.Estado_Envio WHERE estado_env_detalle = ENVIO_ESTADO)
FROM gd_esquema.Maestra
WHERE ENVIO_COSTO IS NOT NULL
GROUP BY TICKET_NUMERO, ENVIO_COSTO, ENVIO_FECHA_ENTREGA*/
