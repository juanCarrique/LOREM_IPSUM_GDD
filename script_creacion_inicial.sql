
USE GD1C2024
go

--------------Creacion esquemma---------------
PRINT 'Creaci�n de esquema'

IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = 'ONELEITO')
BEGIN
    EXEC('CREATE SCHEMA ONELEITO');
    PRINT '	Esquema creado'
END
ELSE
BEGIN
    PRINT '	El esquema ya existe'
END

-------------Creacion de tablas--------------
print ('Creacion de tablas')
IF NOT EXISTS (select * from sys.tables where name = 'Supermercado' and schema_id = (select schema_id from sys.schemas where name = 'ONELEITO'))
BEGIN
create table ONELEITO.Supermercado
(
	supermercado_id int identity(1,1) NOT NULL,
	supermercado_nombre varchar(50) NOT NULL,
	PRIMARY KEY (supermercado_id)
)
		PRINT '	TABLA Supermercado CREADA'
END
IF NOT EXISTS (select * from sys.tables where name = 'Sucursal' and schema_id = (select schema_id from sys.schemas where name = 'ONELEITO'))
BEGIN
create table ONELEITO.Sucursal
(
	sucursal_id int identity(1,1) NOT NULL,
	sucursal_nombre varchar(50) NOT NULL,
	sucursal_direccion varchar(50) NULL,
	sucursal_localidad int not null, -- FK CON LOCALIDAD (SACAR COMENTARIO)
	sucursal_provincia int not null, -- FK CON PROVINCIA
	sucursal_supermercado int not null, --FK CON SUPERMERCADO
	PRIMARY KEY (sucursal_id)
)
		PRINT '	TABLA Sucursal CREADA'
END

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Ticket' AND schema_id = (SELECT schema_id FROM sys.schemas WHERE name = 'ONELEITO'))
BEGIN
    CREATE TABLE ONELEITO.Ticket
    (
        ticket_id INT IDENTITY(1,1) NOT NULL,
        ticket_fecha_hora DATETIME NOT NULL,
        ticket_sucursal INT NOT NULL, -- FK CON SUCURSAL (SACAR COMENTARIO)
        ticket_caja INT NOT NULL, -- FK CON CAJA
        ticket_empleado INT NOT NULL, -- FK CON EMPLEADO
        ticket_tipo_comprobante INT NOT NULL, -- FK CON TIPO_COMPROBANTE
        ticket_subtotal DECIMAL(10, 2) NOT NULL,
        ticket_total_promociones DECIMAL(10, 2) NULL,
        ticket_descuento_medio_pago DECIMAL(10, 2) NULL,
        ticket_total DECIMAL(10, 2) NOT NULL,
		ticket_numero DECIMAL(18,0) NOT NULL,
		PRIMARY KEY (ticket_id)
    )
	PRINT '	TABLA Ticket CREADA'
END

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Localidad' AND schema_id = (SELECT schema_id FROM sys.schemas WHERE name = 'ONELEITO'))
BEGIN
    CREATE TABLE ONELEITO.Localidad
    (
        localidad_id INT IDENTITY(1,1) NOT NULL,
        localidad_nombre VARCHAR(50) NOT NULL,
		PRIMARY KEY (localidad_id)
    )
		PRINT '	TABLA Localidad CREADA'
END

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Provincia' AND schema_id = (SELECT schema_id FROM sys.schemas WHERE name = 'ONELEITO'))
BEGIN
    CREATE TABLE ONELEITO.Provincia
    (
        provincia_id INT IDENTITY(1,1) NOT NULL,
        provincia_nombre VARCHAR(50) NOT NULL,
		PRIMARY KEY (provincia_id)
    )
		PRINT '	TABLA Provincia CREADA'
END

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Empleado' AND schema_id = (SELECT schema_id FROM sys.schemas WHERE name = 'ONELEITO'))
BEGIN
    CREATE TABLE ONELEITO.Empleado
    (
        empleado_id INT IDENTITY(1,1) NOT NULL,
        empleado_nombre VARCHAR(50) NOT NULL,
		empleado_telefono decimal(18,0) null,
		empleado_email varchar(250) null,
		empleado_dni decimal(18,0) not null,
		empleado_fecha_nacimiento date not null,
		empleado_fecha_registro date not null,
		empleado_sucursal int NOT NULL, -- FK con sucursal
		PRIMARY KEY (empleado_id)
    )
		PRINT '	TABLA Empleado CREADA'
END
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Envio' AND schema_id = (SELECT schema_id FROM sys.schemas WHERE name = 'ONELEITO'))
BEGIN
    CREATE TABLE ONELEITO.Envio
    (
        envio_id INT IDENTITY(1,1) NOT NULL,
        envio_ticket int NOT NULL, --FK con tkt
		envio_fecha_programada DATETIME NOT NULL,
		envio_hora_inicio DATETIME NULL,
		envio_hora_fin DATETIME NULL,
		envio_cliente int not null, --FK con cliente
		envio_costo DECIMAL(10, 2) not null,
		envio_estado int not null, -- fk con estado
		envio_sucursal int not null, -- fk sucursal
		envio_fecha_hora_entregado DATETIME null,
		PRIMARY KEY (envio_id)
    )
		PRINT '	TABLA Envio CREADA'
END
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Tipo_estado' AND schema_id = (SELECT schema_id FROM sys.schemas WHERE name = 'ONELEITO'))
BEGIN
    CREATE TABLE ONELEITO.Tipo_estado
    (
        tipo_estado_id INT IDENTITY(1,1) NOT NULL,
        tipo_estado_descripcion VARCHAR(50) NOT NULL,
		PRIMARY KEY (tipo_estado_id)
    )
		PRINT '	TABLA Tipo_estado CREADA'
END
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Tipo_caja' AND schema_id = (SELECT schema_id FROM sys.schemas WHERE name = 'ONELEITO'))
BEGIN
    CREATE TABLE ONELEITO.Tipo_caja
    (
        tipo_caja_id INT IDENTITY(1,1) NOT NULL,
        tipo_caja_nombre VARCHAR(50) NOT NULL,
		PRIMARY KEY (tipo_caja_id)
    )
		PRINT '	TABLA Tipo_caja CREADA'
END
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Caja' AND schema_id = (SELECT schema_id FROM sys.schemas WHERE name = 'ONELEITO'))
BEGIN
    CREATE TABLE ONELEITO.Caja
    (
        caja_id INT IDENTITY(1,1) NOT NULL,
        caja_numero SMALLINT NOT NULL,
		caja_tipo_caja INT NOT NULL, --FK tipo caja
		caja_sucursal INT NOT NULL, -- FK tipo sucursal
		PRIMARY KEY (caja_id)
    )
		PRINT '	TABLA Caja CREADA'
END
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Tipo_comprobante' AND schema_id = (SELECT schema_id FROM sys.schemas WHERE name = 'ONELEITO'))
BEGIN
    CREATE TABLE ONELEITO.Tipo_comprobante
    (
        tipo_comprobante_id INT IDENTITY(1,1) NOT NULL,
        tipo_comprobante_nombre VARCHAR(50) NOT NULL,
		PRIMARY KEY (tipo_comprobante_id)
    )
		PRINT '	TABLA Tipo_comprobante CREADA'
END
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Cliente' AND schema_id = (SELECT schema_id FROM sys.schemas WHERE name = 'ONELEITO'))
BEGIN
    CREATE TABLE ONELEITO.Cliente
    (
        cliente_id INT IDENTITY(1,1) NOT NULL,
        cliente_nombre VARCHAR(50) NOT NULL,
		cliente_dni DECIMAL(18,0) NOT NULL,
		cliente_domicilio VARCHAR(100) NOT NULL,
		cliente_telefono DECIMAL (18,0) NULL,
		cliente_email varchar(250) null,
		cliente_fecha_nacimiento datetime null,
		cliente_localidad int not null,
		cliente_provincia int not null,
		PRIMARY KEY (cliente_id)
    )
		PRINT '	TABLA Cliente CREADA'
END
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Detalle_pago' AND schema_id = (SELECT schema_id FROM sys.schemas WHERE name = 'ONELEITO'))
BEGIN
    CREATE TABLE ONELEITO.Detalle_pago
    (
        detalle_pago_id INT IDENTITY(1,1) NOT NULL,
        detalle_pago_cliente int  NULL,--FK cliente
		detalle_pago_nro_tarjeta VARCHAR(19)  NULL,
		detalle_pago_fecha_vencimiento DATETIME NULL,
		detalle_pago_coutas INT NULL,
		PRIMARY KEY (detalle_pago_id)
    )
		PRINT '	TABLA Detalle_pago CREADA'
END
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Pago' AND schema_id = (SELECT schema_id FROM sys.schemas WHERE name = 'ONELEITO'))
BEGIN
    CREATE TABLE ONELEITO.Pago
    (
        pago_id INT IDENTITY(1,1) NOT NULL,
        pago_fecha_hora DATETIME NOT NULL,
		pago_medio_pago INT NOT NULL,--FK Medio pago
		pago_detalle INT NULL, --FK detalle pago
		pago_ticket INT NOT NULL, -- FK TICKET
		pago_importe DECIMAL(10, 3) NOT NULL,
		pago_descuento DECIMAL(10, 2) NOT NULL,
		PRIMARY KEY (pago_id)
    )
		PRINT '	TABLA Pago CREADA'
END

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Medio_Pago' AND schema_id = (SELECT schema_id FROM sys.schemas WHERE name = 'ONELEITO'))
BEGIN
    CREATE TABLE ONELEITO.Medio_Pago
    (
        medio_pago_id INT IDENTITY(1,1) NOT NULL,
        medio_pago_tipo INT NOT NULL, --FK TIPO MEDIO PAGO
        medio_pago_descripcion VARCHAR(150) NOT NULL,
        PRIMARY KEY (medio_pago_id)
    )
	PRINT '	TABLA Medio_Pago CREADA'
END
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Tipo_Medio_Pago' AND schema_id = (SELECT schema_id FROM sys.schemas WHERE name = 'ONELEITO'))
BEGIN
    CREATE TABLE ONELEITO.Tipo_Medio_Pago
    (
        tipo_medio_pago_id INT IDENTITY(1,1) NOT NULL,
        tipo_medio_pago_nombre VARCHAR(50) NOT NULL,
        PRIMARY KEY (tipo_medio_pago_id)
    )
    PRINT '	TABLA Tipo_Medio_Pago CREADA'
END
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Descuentos_X_Medio_de_Pago' AND schema_id = (SELECT schema_id FROM sys.schemas WHERE name = 'ONELEITO'))
BEGIN
    CREATE TABLE ONELEITO.Descuentos_X_Medio_de_Pago
    (
        descuento_medio_id INT IDENTITY(1,1) NOT NULL,
        descuento_id INT NOT NULL, -- FK DESCUENTO
        medio_pago_id INT NOT NULL, -- FK MEDIO_PAGO
        PRIMARY KEY (descuento_medio_id)
    )
    PRINT '	TABLA Descuentos_X_Medio_de_Pago CREADA'
END
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Descuento' AND schema_id = (SELECT schema_id FROM sys.schemas WHERE name = 'ONELEITO'))
BEGIN
    CREATE TABLE ONELEITO.Descuento
    (
        descuento_id INT IDENTITY(1,1) NOT NULL,
		descuento_codigo DECIMAL(18,0) NOT NULL,
        descuento_descripcion VARCHAR(255) NOT NULL,
        descuento_fecha_inicio DATETIME NOT NULL,
        descuento_fecha_fin DATETIME NOT NULL,
        descuento_porcentaje DECIMAL(5, 2) NOT NULL,
        descuento_tope DECIMAL(10, 2) NULL,
        PRIMARY KEY (descuento_id)
    )
    PRINT '	TABLA Descuento CREADA'
END
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Productos_X_Tickets' AND schema_id = (SELECT schema_id FROM sys.schemas WHERE name = 'ONELEITO'))
BEGIN
    CREATE TABLE ONELEITO.Productos_X_Tickets
    (
        producto_ticket_id INT IDENTITY(1,1) NOT NULL,
        producto_id INT NOT NULL, -- FK producto
        ticket_id INT NOT NULL, -- FK ticket
        producto_ticket_cantidad_vendida INT NOT NULL,
		producto_ticket_precio_detalle DECIMAL(18,2) NOT NULL,
        producto_ticket_importe_total DECIMAL(10, 2) NOT NULL,
        PRIMARY KEY (producto_ticket_id)
    )
    PRINT '	TABLA Productos_X_Tickets CREADA'
END
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Producto' AND schema_id = (SELECT schema_id FROM sys.schemas WHERE name = 'ONELEITO'))
BEGIN
    CREATE TABLE ONELEITO.Producto
    (
        producto_id INT IDENTITY(1,1) NOT NULL,
        producto_nombre VARCHAR(255) NOT NULL,
        producto_subcategoria INT NOT NULL, -- FK subcategoria
        producto_precio_unitario DECIMAL(10, 2) NOT NULL,
		producto_marca VARCHAR(250)  NOT NULL,
        PRIMARY KEY (producto_id)
    )
    PRINT '	TABLA Producto CREADA'
END
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Subcategoria' AND schema_id = (SELECT schema_id FROM sys.schemas WHERE name = 'ONELEITO'))
BEGIN
    CREATE TABLE ONELEITO.Subcategoria
    (
        subcategoria_id INT IDENTITY(1,1) NOT NULL,
        subcategoria_nombre VARCHAR(50) NOT NULL,
        subcategoria_categoria INT NOT NULL, -- FK categoria
        PRIMARY KEY (subcategoria_id)
    )
    PRINT '	TABLA Subcategoria CREADA'
END
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Categoria' AND schema_id = (SELECT schema_id FROM sys.schemas WHERE name = 'ONELEITO'))
BEGIN
    CREATE TABLE ONELEITO.Categoria
    (
        categoria_id INT IDENTITY(1,1) NOT NULL,
        categoria_nombre VARCHAR(50) NOT NULL,
        PRIMARY KEY (categoria_id)
    )
    PRINT '	TABLA Categoria CREADA'
END
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Productos_X_Promocion' AND schema_id = (SELECT schema_id FROM sys.schemas WHERE name = 'ONELEITO'))
BEGIN
    CREATE TABLE ONELEITO.Productos_X_Promocion
    (
        producto_promocion_id INT IDENTITY(1,1) NOT NULL,
        producto_id INT NOT NULL, -- FK producto
        promocion_id INT NOT NULL, -- FK promocion
        PRIMARY KEY (producto_promocion_id)
    )
    PRINT '	TABLA Productos_X_Promocion CREADA'
END
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Promocion' AND schema_id = (SELECT schema_id FROM sys.schemas WHERE name = 'ONELEITO'))
BEGIN
    CREATE TABLE ONELEITO.Promocion
    (
        promocion_id INT IDENTITY(1,1) NOT NULL,
        promocion_descripcion VARCHAR(255) NOT NULL,
        promocion_fecha_inicio DATETIME NOT NULL,
        promocion_fecha_fin DATETIME NOT NULL,
        promocion_regla INT NOT NULL,
		promocion_codigo int NOT NULL,
        PRIMARY KEY (promocion_id)
    )
    PRINT '	TABLA Promocion CREADA'
END
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Regla' AND schema_id = (SELECT schema_id FROM sys.schemas WHERE name = 'ONELEITO'))
BEGIN
    CREATE TABLE ONELEITO.Regla
    (
        regla_id INT IDENTITY(1,1) NOT NULL,
        regla_descripcion VARCHAR(255) NOT NULL,
        regla_descuento DECIMAL(5, 2) NOT NULL,
        regla_cantidad_aplicable INT NOT NULL,
        regla_descuento_aplicable DECIMAL(5, 2) NOT NULL,
		regla_cantidad_maxima INT NOT NULL,
        regla_misma_marca BIT NOT NULL,
        regla_mismo_producto BIT NOT NULL,
        PRIMARY KEY (regla_id)
    )
    PRINT '	TABLA Regla CREADA'
END

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Producto_Ticket_X_Promocion' AND schema_id = (SELECT schema_id FROM sys.schemas WHERE name = 'ONELEITO'))
BEGIN
    CREATE TABLE ONELEITO.Producto_Ticket_X_Promocion
    (
        producto_ticket_x_promocion_id INT IDENTITY(1,1) NOT NULL,
		producto_ticket_id int not null,
		promocion_id int not null,
		producto_ticket_x_promocion_descuento decimal(18,3),
        PRIMARY KEY (producto_ticket_x_promocion_id)
    )
    PRINT '	TABLA Regla CREADA'
END

Print 'Creacion tablas terminada'
GO
--------------------Creacion de CONSTRAINT-----------------
Print 'Creando constraints'

ALTER TABLE ONELEITO.Sucursal
ADD CONSTRAINT FK_Sucursal_Localidad FOREIGN KEY (sucursal_localidad) REFERENCES ONELEITO.Localidad(localidad_id);

ALTER TABLE ONELEITO.Sucursal
ADD CONSTRAINT FK_Sucursal_Provincia FOREIGN KEY (sucursal_provincia) REFERENCES ONELEITO.Provincia(provincia_id);

ALTER TABLE ONELEITO.Sucursal
ADD CONSTRAINT FK_Sucursal_Supermercado FOREIGN KEY (sucursal_supermercado) REFERENCES ONELEITO.Supermercado(supermercado_id);

ALTER TABLE ONELEITO.Ticket
ADD CONSTRAINT FK_Ticket_Sucursal FOREIGN KEY (ticket_sucursal) REFERENCES ONELEITO.Sucursal(sucursal_id);

ALTER TABLE ONELEITO.Ticket
ADD CONSTRAINT FK_Ticket_Caja FOREIGN KEY (ticket_caja) REFERENCES ONELEITO.Caja(caja_id);

ALTER TABLE ONELEITO.Ticket
ADD CONSTRAINT FK_Ticket_Empleado FOREIGN KEY (ticket_empleado) REFERENCES ONELEITO.Empleado(empleado_id);

ALTER TABLE ONELEITO.Ticket
ADD CONSTRAINT FK_Ticket_Tipo_Comprobante FOREIGN KEY (ticket_tipo_comprobante) REFERENCES ONELEITO.Tipo_comprobante(tipo_comprobante_id);

ALTER TABLE ONELEITO.Empleado
ADD CONSTRAINT FK_Empleado_Sucursal FOREIGN KEY (empleado_sucursal) REFERENCES ONELEITO.Sucursal(sucursal_id);

ALTER TABLE ONELEITO.Envio
ADD CONSTRAINT FK_Envio_Ticket FOREIGN KEY (envio_ticket) REFERENCES ONELEITO.Ticket(ticket_id);

ALTER TABLE ONELEITO.Envio
ADD CONSTRAINT FK_Envio_Cliente FOREIGN KEY (envio_cliente) REFERENCES ONELEITO.Cliente(cliente_id);

ALTER TABLE ONELEITO.Envio
ADD CONSTRAINT FK_Envio_Sucursal FOREIGN KEY (envio_sucursal) REFERENCES ONELEITO.Sucursal(sucursal_id);

ALTER TABLE ONELEITO.Envio
ADD CONSTRAINT FK_Envio_Tipo_Estado FOREIGN KEY (envio_estado) REFERENCES ONELEITO.Tipo_estado(tipo_estado_id);

ALTER TABLE ONELEITO.Caja
ADD CONSTRAINT FK_Caja_Tipo_Caja FOREIGN KEY (caja_tipo_caja) REFERENCES ONELEITO.Tipo_caja(tipo_caja_id);

ALTER TABLE ONELEITO.Caja
ADD CONSTRAINT FK_Caja_Sucursal FOREIGN KEY (caja_sucursal) REFERENCES ONELEITO.Sucursal(sucursal_id);

ALTER TABLE ONELEITO.Pago
ADD CONSTRAINT FK_Pago_Medio_Pago FOREIGN KEY (pago_medio_pago) REFERENCES ONELEITO.Medio_Pago(medio_pago_id);

ALTER TABLE ONELEITO.Pago
ADD CONSTRAINT FK_Pago_Detalle_Pago FOREIGN KEY (pago_detalle) REFERENCES ONELEITO.Detalle_pago(detalle_pago_id);

ALTER TABLE ONELEITO.Pago
ADD CONSTRAINT FK_Pago_Ticket FOREIGN KEY (pago_ticket) REFERENCES ONELEITO.Ticket(ticket_id);

ALTER TABLE ONELEITO.Medio_Pago
ADD CONSTRAINT FK_Medio_Pago_Tipo_Medio_Pago FOREIGN KEY (medio_pago_tipo) REFERENCES ONELEITO.Tipo_Medio_Pago(tipo_medio_pago_id);

ALTER TABLE ONELEITO.Descuentos_X_Medio_de_Pago
ADD CONSTRAINT FK_Descuentos_X_Medio_de_Pago_Descuento FOREIGN KEY (descuento_id) REFERENCES ONELEITO.Descuento(descuento_id);

ALTER TABLE ONELEITO.Descuentos_X_Medio_de_Pago
ADD CONSTRAINT FK_Descuentos_X_Medio_de_Pago_Medio_Pago FOREIGN KEY (medio_pago_id) REFERENCES ONELEITO.Medio_Pago(medio_pago_id);

ALTER TABLE ONELEITO.Detalle_pago
ADD CONSTRAINT FK_Detalle_pago_Cliente FOREIGN KEY (detalle_pago_cliente) REFERENCES ONELEITO.Cliente(cliente_id);

ALTER TABLE ONELEITO.Productos_X_Tickets
ADD CONSTRAINT FK_Productos_X_Tickets_Producto FOREIGN KEY (producto_id) REFERENCES ONELEITO.Producto(producto_id);

ALTER TABLE ONELEITO.Productos_X_Tickets
ADD CONSTRAINT FK_Productos_X_Tickets_Ticket FOREIGN KEY (ticket_id) REFERENCES ONELEITO.Ticket(ticket_id);

ALTER TABLE ONELEITO.Producto
ADD CONSTRAINT FK_Producto_Subcategoria FOREIGN KEY (producto_subcategoria) REFERENCES ONELEITO.Subcategoria(subcategoria_id);

ALTER TABLE ONELEITO.Subcategoria
ADD CONSTRAINT FK_Subcategoria_Categoria FOREIGN KEY (subcategoria_categoria) REFERENCES ONELEITO.Categoria(categoria_id);

ALTER TABLE ONELEITO.Productos_X_Promocion
ADD CONSTRAINT FK_Productos_X_Promocion_Producto FOREIGN KEY (producto_id) REFERENCES ONELEITO.Producto(producto_id);

ALTER TABLE ONELEITO.Productos_X_Promocion
ADD CONSTRAINT FK_Productos_X_Promocion_Promocion FOREIGN KEY (promocion_id) REFERENCES ONELEITO.Promocion(promocion_id);

ALTER TABLE ONELEITO.Promocion
ADD CONSTRAINT FK_Promocion_Regla FOREIGN KEY (promocion_regla) REFERENCES ONELEITO.Regla(regla_id);

ALTER TABLE ONELEITO.Producto_Ticket_X_Promocion
ADD CONSTRAINT FK_Producto_Ticket_X_Promocion_Prod_Tkt FOREIGN KEY (producto_ticket_id) REFERENCES ONELEITO.Productos_X_Tickets(producto_ticket_id);

ALTER TABLE ONELEITO.Producto_Ticket_X_Promocion
ADD CONSTRAINT Producto_Ticket_X_Promocion_Promo FOREIGN KEY (promocion_id) REFERENCES ONELEITO.Promocion(promocion_id);

ALTER TABLE ONELEITO.Cliente
ADD CONSTRAINT FK_Cliente_Localidad FOREIGN KEY (cliente_localidad) REFERENCES ONELEITO.Localidad(localidad_id);

ALTER TABLE ONELEITO.Cliente
ADD CONSTRAINT FK_Cliente_Provincia FOREIGN KEY (cliente_provincia) REFERENCES ONELEITO.Provincia(provincia_id);

Print 'Creacion constraints terminado'
GO

------------------------ MIGRACION DE DATOS (Store procedures)-------------
Print 'Creacion de SPs'
go
--Supermercado
CREATE PROCEDURE ONELEITO.Insertar_Supermercados
as
  begin 
	INSERT INTO ONELEITO.Supermercado(supermercado_nombre)
	select distinct SUPER_NOMBRE from gd_esquema.Maestra where SUPER_NOMBRE is not null
 END 

GO
CREATE PROCEDURE ONELEITO.Insertar_Provincia
as
	BEGIN
	INSERT INTO ONELEITO.Provincia(provincia_nombre)
	select distinct CLIENTE_PROVINCIA from gd_esquema.Maestra where CLIENTE_PROVINCIA is not null 
	UNION
	select distinct SUCURSAL_PROVINCIA from gd_esquema.Maestra where SUCURSAL_PROVINCIA is not null 
	UNION
	select distinct SUPER_PROVINCIA from gd_esquema.Maestra where SUPER_PROVINCIA is not null 
	END

GO
CREATE PROCEDURE ONELEITO.Insertar_Localidad
as
	BEGIN
INSERT INTO ONELEITO.Localidad(localidad_nombre)
select distinct CLIENTE_LOCALIDAD from gd_esquema.Maestra 
where CLIENTE_LOCALIDAD is not null 
UNION
select distinct SUCURSAL_LOCALIDAD from gd_esquema.Maestra where SUCURSAL_LOCALIDAD is not null 
UNION
select distinct SUPER_LOCALIDAD from gd_esquema.Maestra where SUPER_LOCALIDAD is not null 
	END

GO
CREATE PROCEDURE ONELEITO.Insertar_TipoCaja
as
	BEGIN
	INSERT INTO ONELEITO.Tipo_caja(tipo_caja_nombre)
	select distinct CAJA_TIPO from gd_esquema.Maestra
	where CAJA_TIPO is not null
	END
GO
CREATE PROCEDURE ONELEITO.Insertar_TipoComprobante
as
	BEGIN
	INSERT INTO ONELEITO.Tipo_comprobante(tipo_comprobante_nombre)
	select distinct TICKET_TIPO_COMPROBANTE from gd_esquema.Maestra 
	where TICKET_TIPO_COMPROBANTE is not null
	END
GO
CREATE PROCEDURE ONELEITO.Insertar_Categoria
as
	BEGIN
	INSERT INTO ONELEITO.Categoria(categoria_nombre)
	select distinct PRODUCTO_CATEGORIA from gd_esquema.Maestra
	where PRODUCTO_CATEGORIA is not null
	END
GO
CREATE PROCEDURE ONELEITO.Insertar_TipoMedioPago
as
	BEGIN
	INSERT INTO ONELEITO.Tipo_Medio_Pago(tipo_medio_pago_nombre)
	select distinct PAGO_TIPO_MEDIO_PAGO from gd_esquema.Maestra
	where PAGO_TIPO_MEDIO_PAGO is not null
	END
GO
CREATE PROCEDURE ONELEITO.Insertar_TipoEstado
as
	BEGIN
	INSERT INTO ONELEITO.Tipo_estado(tipo_estado_descripcion)
	select distinct ENVIO_ESTADO from gd_esquema.Maestra 
	where ENVIO_ESTADO is not null
	END
GO
CREATE PROCEDURE ONELEITO.Insertar_Clientes
as
	BEGIN
	INSERT INTO ONELEITO.Cliente(cliente_nombre,cliente_dni,cliente_domicilio,cliente_telefono,cliente_email,cliente_fecha_nacimiento,cliente_localidad,cliente_provincia)
	select distinct CLIENTE_NOMBRE + ' ' + CLIENTE_APELLIDO, CLIENTE_DNI,CLIENTE_DOMICILIO,CLIENTE_TELEFONO,CLIENTE_MAIL,CLIENTE_FECHA_NACIMIENTO, 
    (SELECT localidad_id from ONELEITO.Localidad where localidad_nombre = CLIENTE_LOCALIDAD),
    (SELECT provincia_id from ONELEITO.Provincia where provincia_nombre = CLIENTE_PROVINCIA) 
    from gd_esquema.Maestra where CLIENTE_NOMBRE is not null and CLIENTE_APELLIDO  is not null
	END
GO
CREATE PROCEDURE ONELEITO.Insertar_Sucursal
as
	BEGIN
	INSERT INTO ONELEITO.Sucursal(sucursal_nombre,sucursal_direccion,sucursal_localidad,sucursal_provincia,sucursal_supermercado)
	select distinct SUCURSAL_NOMBRE , SUCURSAL_DIRECCION, 
    (SELECT localidad_id from ONELEITO.Localidad where localidad_nombre = SUCURSAL_LOCALIDAD),
    (SELECT provincia_id from ONELEITO.Provincia where provincia_nombre = SUCURSAL_PROVINCIA),
    (SELECT supermercado_id from ONELEITO.Supermercado where supermercado_nombre = SUPER_NOMBRE)
    from gd_esquema.Maestra where SUCURSAL_NOMBRE is not null
	END
GO
CREATE PROCEDURE ONELEITO.Insertar_Regla
as
	BEGIN
	INSERT INTO ONELEITO.Regla(regla_descripcion,regla_descuento,regla_cantidad_aplicable,regla_descuento_aplicable,regla_cantidad_maxima,regla_misma_marca,regla_mismo_producto)
	select distinct REGLA_DESCRIPCION,REGLA_DESCUENTO_APLICABLE_PROD,REGLA_CANT_APLICABLE_REGLA,REGLA_CANT_APLICA_DESCUENTO,REGLA_CANT_MAX_PROD,REGLA_APLICA_MISMA_MARCA,REGLA_APLICA_MISMO_PROD
    from gd_esquema.Maestra where REGLA_DESCRIPCION is not null and REGLA_DESCUENTO_APLICABLE_PROD  is not null
	END
GO
CREATE PROCEDURE ONELEITO.Insertar_Caja
as
    BEGIN
    INSERT INTO ONELEITO.Caja(caja_numero,caja_tipo_caja,caja_sucursal)
    select DISTINCT CAJA_NUMERO,
    (select tipo_caja_id from ONELEITO.Tipo_caja where tipo_caja_nombre = CAJA_TIPO),
	(select sucursal_id from ONELEITO.Sucursal where sucursal.sucursal_nombre = m.SUCURSAL_NOMBRE)
	FROM gd_esquema.Maestra m
	where CAJA_NUMERO is not null 
END
GO
CREATE PROCEDURE ONELEITO.Insertar_DetallePago --TODO:arreglado
as
	BEGIN
	INSERT INTO ONELEITO.Detalle_pago(detalle_pago_cliente,detalle_pago_fecha_vencimiento,detalle_pago_coutas,detalle_pago_nro_tarjeta)
	SELECT 
	(SELECT MAX(cliente_id) FROM ONELEITO.Cliente C JOIN gd_esquema.Maestra M1 ON C.cliente_dni = M1.CLIENTE_DNI Where M1.TICKET_NUMERO = M.TICKET_NUMERO),
	M.PAGO_TARJETA_FECHA_VENC,M.PAGO_TARJETA_CUOTAS,M.PAGO_TARJETA_NRO
	FROM gd_esquema.Maestra M 
	WHERE PAGO_TARJETA_NRO IS NOT NULL 
	END
GO


CREATE PROCEDURE ONELEITO.Insertar_Promocion
as
	BEGIN
	INSERT INTO ONELEITO.Promocion(promocion_descripcion,promocion_fecha_inicio,promocion_fecha_fin,promocion_regla,promocion_codigo)
	select distinct PROMOCION_DESCRIPCION,PROMOCION_FECHA_INICIO,PROMOCION_FECHA_FIN,
     (SELECT regla_id FROM ONELEITO.Regla r WHERE r.regla_descripcion = m.REGLA_DESCRIPCION),PROMO_CODIGO
    from gd_esquema.Maestra m where PROMOCION_DESCRIPCION is not null and PROMOCION_FECHA_INICIO  is not null
	END
GO

CREATE PROCEDURE ONELEITO.Insertar_Descuento
as
	BEGIN
	INSERT INTO ONELEITO.Descuento(descuento_codigo,descuento_descripcion,descuento_fecha_inicio,descuento_fecha_fin,descuento_porcentaje,descuento_tope)
	select distinct DESCUENTO_CODIGO, DESCUENTO_DESCRIPCION,DESCUENTO_FECHA_INICIO,DESCUENTO_FECHA_FIN,DESCUENTO_PORCENTAJE_DESC,DESCUENTO_TOPE
    from gd_esquema.Maestra where DESCUENTO_CODIGO is not null and DESCUENTO_FECHA_INICIO  is not null
	END
GO

CREATE PROCEDURE ONELEITO.Insertar_Subcategoria
as
	BEGIN
	INSERT INTO ONELEITO.Subcategoria(subcategoria_nombre,subcategoria_categoria)
	select distinct PRODUCTO_SUB_CATEGORIA,
	(select categoria_id from ONELEITO.Categoria where categoria_nombre=PRODUCTO_CATEGORIA and PRODUCTO_CATEGORIA is not null) 
	from gd_esquema.Maestra where PRODUCTO_SUB_CATEGORIA is not null
	END
GO

CREATE PROCEDURE ONELEITO.Insertar_Empleados
as
	BEGIN
	INSERT INTO ONELEITO.Empleado(empleado_nombre,empleado_dni,empleado_telefono,empleado_email,empleado_fecha_nacimiento,empleado_fecha_registro,empleado_sucursal)
	select distinct EMPLEADO_NOMBRE + ' ' + EMPLEADO_APELLIDO, EMPLEADO_DNI,EMPLEADO_TELEFONO,EMPLEADO_MAIL,EMPLEADO_FECHA_NACIMIENTO, EMPLEADO_FECHA_REGISTRO,
	(select sucursal_id from ONELEITO.Sucursal s where s.sucursal_nombre = m.SUCURSAL_NOMBRE)
    from gd_esquema.Maestra m where EMPLEADO_APELLIDO is not null and EMPLEADO_NOMBRE  is not null
	END
GO
CREATE PROCEDURE ONELEITO.Insertar_MedioPago
as
	BEGIN
	INSERT INTO ONELEITO.Medio_Pago(medio_pago_descripcion,medio_pago_tipo)
	select distinct PAGO_MEDIO_PAGO,
	(select tipo_medio_pago_id from ONELEITO.Tipo_Medio_Pago where tipo_medio_pago_nombre = PAGO_TIPO_MEDIO_PAGO and PAGO_TIPO_MEDIO_PAGO is not null)
	from gd_esquema.Maestra where PAGO_MEDIO_PAGO is not null
	END
GO

CREATE PROCEDURE ONELEITO.Insertar_Producto
as
	BEGIN
	INSERT INTO ONELEITO.Producto(producto_nombre,producto_marca,producto_precio_unitario,producto_subcategoria)
	select distinct PRODUCTO_NOMBRE,PRODUCTO_MARCA,PRODUCTO_PRECIO, 
	(SELECT subcategoria_id FROM ONELEITO.Subcategoria s WHERE s.subcategoria_nombre = PRODUCTO_SUB_CATEGORIA and s.subcategoria_categoria = (select categoria_id from ONELEITO.Categoria c where c.categoria_nombre = PRODUCTO_CATEGORIA)) 
	from gd_esquema.Maestra WHERE PRODUCTO_NOMBRE IS NOT NULL
	END
GO

CREATE PROCEDURE ONELEITO.Insertar_DescuentoXMedioPago
as
	BEGIN
	INSERT INTO ONELEITO.Descuentos_X_Medio_de_Pago(descuento_id,medio_pago_id) --TODO: ARREGLO HECHO
	select  
	(SELECT d.descuento_id from ONELEITO.Descuento d where d.descuento_codigo = m.DESCUENTO_CODIGO) ,
	(SELECT medio_pago_id FROM ONELEITO.Medio_Pago where medio_pago_descripcion = PAGO_MEDIO_PAGO) 
	from gd_esquema.Maestra m WHERE PAGO_MEDIO_PAGO IS NOT NULL and DESCUENTO_CODIGO IS NOT NULL
	END
GO

CREATE PROCEDURE ONELEITO.Insertar_ProductosXPromocion --TODO ARREGLAR!
as
	BEGIN
	INSERT INTO ONELEITO.Productos_X_Promocion(producto_id,promocion_id)
	select p.producto_id, pm.promocion_id  from gd_esquema.Maestra m
 JOIN ONELEITO.Producto p on p.producto_nombre = m.producto_nombre and p.producto_marca = m.PRODUCTO_MARCA
 JOIN ONELEITO.Promocion pm on pm.promocion_codigo = m.PROMO_CODIGO
group by p.producto_id, pm.promocion_id
order by p.producto_id, pm.promocion_id
	END
GO
CREATE PROCEDURE ONELEITO.Insertar_Ticket
as
	BEGIN
	INSERT INTO ONELEITO.Ticket(ticket_fecha_hora,ticket_sucursal,ticket_caja,ticket_empleado,ticket_tipo_comprobante,ticket_subtotal,ticket_total_promociones,ticket_descuento_medio_pago,ticket_total,ticket_numero)
	select distinct TICKET_FECHA_HORA,
	(select sucursal_id from ONELEITO.Sucursal s where s.sucursal_nombre = m.SUCURSAL_NOMBRE),
	(select caja_id from ONELEITO.Caja c where c.caja_numero = m.CAJA_NUMERO and c.caja_sucursal = (select sucursal_id from ONELEITO.Sucursal s where s.sucursal_nombre = m.SUCURSAL_NOMBRE)),
	(select empleado_id from ONELEITO.Empleado e where e.empleado_dni = m.EMPLEADO_DNI ), 
(select tipo_comprobante_id from ONELEITO.Tipo_comprobante tc where tc.tipo_comprobante_nombre = m.TICKET_TIPO_COMPROBANTE),
	TICKET_SUBTOTAL_PRODUCTOS,
	sum(ISNULL(PROMO_APLICADA_DESCUENTO,0)),
	TICKET_TOTAL_DESCUENTO_APLICADO_MP,
	TICKET_TOTAL_TICKET,TICKET_NUMERO 
	from gd_esquema.Maestra m WHERE TICKET_FECHA_HORA IS NOT NULL and SUCURSAL_NOMBRE IS NOT NULL AND EMPLEADO_DNI is not null and TICKET_NUMERO is not null
	GROUP BY TICKET_FECHA_HORA,SUCURSAL_NOMBRE,CAJA_NUMERO,EMPLEADO_DNI,TICKET_TIPO_COMPROBANTE,TICKET_SUBTOTAL_PRODUCTOS,TICKET_TOTAL_DESCUENTO_APLICADO_MP,TICKET_TOTAL_TICKET,TICKET_NUMERO
	order by TICKET_NUMERO

	END
GO

CREATE PROCEDURE ONELEITO.Insertar_Pago
as
	BEGIN
	INSERT INTO ONELEITO.Pago(pago_fecha_hora,pago_medio_pago,pago_detalle,pago_ticket,pago_importe,pago_descuento)
	SELECT DISTINCT 
	    m.PAGO_FECHA,
	    mp.medio_pago_id,
	    dp.detalle_pago_id,
	    t.ticket_id,
	    m.PAGO_IMPORTE,
	    m.PAGO_DESCUENTO_APLICADO
	FROM (
	    SELECT
	        TICKET_NUMERO,
	        MAX(PAGO_FECHA) AS PAGO_FECHA,
	        MAX(PAGO_MEDIO_PAGO) AS PAGO_MEDIO_PAGO,
	        MAX(PAGO_TARJETA_NRO) AS PAGO_TARJETA_NRO,
	        MAX(PAGO_TARJETA_CUOTAS) AS PAGO_TARJETA_CUOTAS,
	        MAX(TICKET_FECHA_HORA) AS TICKET_FECHA_HORA,
	        MAX(PAGO_IMPORTE) AS PAGO_IMPORTE,
	        MAX(PAGO_DESCUENTO_APLICADO) AS PAGO_DESCUENTO_APLICADO,
	        MAX(CLIENTE_DNI) AS CLIENTE_DNI
	    FROM gd_esquema.Maestra
	    WHERE TICKET_NUMERO IS NOT NULL
	    GROUP BY TICKET_NUMERO
	) m
	JOIN ONELEITO.Medio_Pago mp ON mp.medio_pago_descripcion = m.PAGO_MEDIO_PAGO
	LEFT JOIN ONELEITO.Detalle_Pago dp ON dp.detalle_pago_nro_tarjeta = m.PAGO_TARJETA_NRO 
	                                  AND dp.detalle_pago_coutas = m.PAGO_TARJETA_CUOTAS
	                                  AND dp.detalle_pago_cliente = (
	                                      SELECT c.cliente_id FROM ONELEITO.Cliente c WHERE c.cliente_dni = m.CLIENTE_DNI
	                                  )
	JOIN ONELEITO.Ticket t ON t.ticket_numero = m.TICKET_NUMERO 
	                      AND t.ticket_fecha_hora = m.TICKET_FECHA_HORA
	WHERE m.PAGO_FECHA IS NOT NULL 
	  AND m.PAGO_MEDIO_PAGO IS NOT NULL 
	  AND m.TICKET_NUMERO IS NOT NULL
  END
GO

CREATE PROCEDURE ONELEITO.Insertar_ProductosXTicket
as
	BEGIN
	INSERT INTO ONELEITO.Productos_X_Tickets(producto_id,ticket_id,producto_ticket_cantidad_vendida,producto_ticket_precio_detalle,producto_ticket_importe_total)
	select  distinct
	(SELECT p.producto_id from ONELEITO.Producto p where p.producto_nombre = m.PRODUCTO_NOMBRE and p.producto_subcategoria = (select s.subcategoria_id from ONELEITO.Subcategoria s where s.subcategoria_nombre = m.PRODUCTO_SUB_CATEGORIA and s.subcategoria_categoria = (select categoria_id from ONELEITO.Categoria where categoria_nombre= PRODUCTO_CATEGORIA) )) ,
	(select ticket_id from ONELEITO.Ticket t where t.ticket_numero = m.TICKET_NUMERO and t.ticket_fecha_hora = m.TICKET_FECHA_HORA),
	TICKET_DET_CANTIDAD,TICKET_DET_PRECIO,TICKET_DET_TOTAL 
	from gd_esquema.Maestra m where TICKET_NUMERO is not null and PRODUCTO_NOMBRE is not null
	END
GO
CREATE PROCEDURE ONELEITO.Insertar_ProductoTicketXPromocion 
as
	BEGIN
	INSERT INTO ONELEITO.Producto_Ticket_X_Promocion(producto_ticket_id,promocion_id,producto_ticket_x_promocion_descuento)
SELECT  
    pxt.producto_ticket_id,
	pr.promocion_id,
    m.PROMO_APLICADA_DESCUENTO
FROM gd_esquema.Maestra m
JOIN ONELEITO.Producto p ON p.producto_nombre = m.PRODUCTO_NOMBRE /*AND p.producto_subcategoria = s.subcategoria_id*/ and p.producto_marca = m.PRODUCTO_MARCA
JOIN ONELEITO.Ticket t ON t.ticket_numero = m.TICKET_NUMERO
JOIN ONELEITO.Productos_X_Tickets pxt ON pxt.producto_id = p.producto_id and pxt.ticket_id = t.ticket_id
JOIN ONELEITO.Promocion pr ON pr.promocion_codigo = m.PROMO_CODIGO
WHERE m.PROMO_CODIGO IS NOT NULL
  AND m.TICKET_NUMERO IS NOT NULL
  AND m.PRODUCTO_NOMBRE IS NOT NULL
  --AND (m.PROMO_APLICADA_DESCUENTO IS NOT NULL AND m.PROMO_APLICADA_DESCUENTO != 0.00); --TODO CORRECCIONES (HABIA 179.000 con el distinct y esta linea)
  order by pxt.producto_ticket_id
	END
GO
CREATE PROCEDURE ONELEITO.Insertar_Envio
as
	BEGIN
	INSERT INTO ONELEITO.Envio(envio_ticket,envio_fecha_programada,envio_hora_inicio,envio_hora_fin,envio_cliente,envio_costo,envio_estado,envio_sucursal,envio_fecha_hora_entregado)
	select distinct 
	(select ticket_id from ONELEITO.Ticket t where t.ticket_numero = m.TICKET_NUMERO AND T.ticket_fecha_hora = M.TICKET_FECHA_HORA),
	ENVIO_FECHA_PROGRAMADA,ENVIO_HORA_INICIO,ENVIO_HORA_FIN,
	(select c.cliente_id from ONELEITO.Cliente c where c.cliente_dni = m.CLIENTE_DNI),
	ENVIO_COSTO,
	(select tipo_estado_id from ONELEITO.Tipo_estado where tipo_estado_descripcion= ENVIO_ESTADO),
	(select s.sucursal_id from ONELEITO.Sucursal s where s.sucursal_nombre = m.SUCURSAL_NOMBRE),
	ENVIO_FECHA_ENTREGA
	from gd_esquema.Maestra m where TICKET_NUMERO is not null and ENVIO_COSTO is not null and CLIENTE_DNI is not null
	END
GO
-------INDECES------------------------------
print 'SPs creados'
print 'Creando Indices'
GO
CREATE INDEX IX_Sucursal_Localidad ON ONELEITO.Sucursal(sucursal_localidad);
CREATE INDEX IX_Sucursal_Provincia ON ONELEITO.Sucursal(sucursal_provincia);
CREATE INDEX IX_Sucursal_Supermercado ON ONELEITO.Sucursal(sucursal_supermercado);
CREATE INDEX IX_Ticket_Sucursal ON ONELEITO.Ticket(ticket_sucursal);
CREATE INDEX IX_Ticket_Caja ON ONELEITO.Ticket(ticket_caja);
CREATE INDEX IX_Ticket_Empleado ON ONELEITO.Ticket(ticket_empleado);
CREATE INDEX IX_Ticket_Tipo_Comprobante ON ONELEITO.Ticket(ticket_tipo_comprobante);
CREATE INDEX IX_Empleado_Sucursal ON ONELEITO.Empleado(empleado_sucursal);
CREATE INDEX IX_Envio_Ticket ON ONELEITO.Envio(envio_ticket);
CREATE INDEX IX_Envio_Cliente ON ONELEITO.Envio(envio_cliente);
CREATE INDEX IX_Envio_Sucursal ON ONELEITO.Envio(envio_sucursal);
CREATE INDEX IX_Envio_Tipo_Estado ON ONELEITO.Envio(envio_estado);
CREATE INDEX IX_Caja_Tipo_Caja ON ONELEITO.Caja(caja_tipo_caja);
CREATE INDEX IX_Caja_Sucursal ON ONELEITO.Caja(caja_sucursal);
CREATE INDEX IX_Pago_Medio_Pago ON ONELEITO.Pago(pago_medio_pago);
CREATE INDEX IX_Pago_Detalle_Pago ON ONELEITO.Pago(pago_detalle);
CREATE INDEX IX_Pago_Ticket ON ONELEITO.Pago(pago_ticket);
CREATE INDEX IX_Medio_Pago_Tipo_Medio_Pago ON ONELEITO.Medio_Pago(medio_pago_tipo);
CREATE INDEX IX_Descuentos_X_Medio_de_Pago_Descuento ON ONELEITO.Descuentos_X_Medio_de_Pago(descuento_id);
CREATE INDEX IX_Descuentos_X_Medio_de_Pago_Medio_Pago ON ONELEITO.Descuentos_X_Medio_de_Pago(medio_pago_id);
CREATE INDEX IX_Detalle_pago_Cliente ON ONELEITO.Detalle_pago(detalle_pago_cliente);
CREATE INDEX IX_Productos_X_Tickets_Producto ON ONELEITO.Productos_X_Tickets(producto_id);
CREATE INDEX IX_Productos_X_Tickets_Ticket ON ONELEITO.Productos_X_Tickets(ticket_id);
CREATE INDEX IX_Producto_Subcategoria ON ONELEITO.Producto(producto_subcategoria);
CREATE INDEX IX_Subcategoria_Categoria ON ONELEITO.Subcategoria(subcategoria_categoria);
CREATE INDEX IX_Productos_X_Promocion_Producto ON ONELEITO.Productos_X_Promocion(producto_id);
CREATE INDEX IX_Productos_X_Promocion_Promocion ON ONELEITO.Productos_X_Promocion(promocion_id);
CREATE INDEX IX_Promocion_Regla ON ONELEITO.Promocion(promocion_regla);
CREATE INDEX IX_Producto_Ticket_X_Promocion_Prod_Tkt ON ONELEITO.Producto_Ticket_X_Promocion(producto_ticket_id);
CREATE INDEX IX_Producto_Ticket_X_Promocion_Promo ON ONELEITO.Producto_Ticket_X_Promocion(promocion_id);
CREATE INDEX IX_Cliente_Localidad ON ONELEITO.Cliente(cliente_localidad);
CREATE INDEX IX_Cliente_Provincia ON ONELEITO.Cliente(cliente_provincia);


-------Ejecucion de Store Procedure-------------------
GO
PRINT 'MIGRANDO DATOS'
EXEC ONELEITO.Insertar_Supermercados
EXEC ONELEITO.Insertar_Provincia
EXEC ONELEITO.Insertar_Localidad
EXEC ONELEITO.Insertar_TipoCaja
EXEC ONELEITO.Insertar_TipoComprobante
EXEC ONELEITO.Insertar_Categoria
EXEC ONELEITO.Insertar_TipoMedioPago
EXEC ONELEITO.Insertar_TipoEstado
EXEC ONELEITO.Insertar_Clientes
EXEC ONELEITO.Insertar_Sucursal
EXEC ONELEITO.Insertar_Caja
EXEC ONELEITO.Insertar_Regla
EXEC ONELEITO.Insertar_Descuento
EXEC ONELEITO.Insertar_DetallePago
EXEC ONELEITO.Insertar_Promocion
EXEC ONELEITO.Insertar_Subcategoria
EXEC ONELEITO.Insertar_Empleados
EXEC ONELEITO.Insertar_MedioPago
EXEC ONELEITO.Insertar_Producto
EXEC ONELEITO.Insertar_DescuentoXMedioPago
EXEC ONELEITO.Insertar_ProductosXPromocion
EXEC ONELEITO.Insertar_Ticket
EXEC ONELEITO.Insertar_Pago
EXEC ONELEITO.Insertar_ProductosXTicket
EXEC ONELEITO.Insertar_ProductoTicketXPromocion
EXEC ONELEITO.Insertar_Envio
Print 'DATOS MIGRADOS'