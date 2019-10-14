/*
 Script SQL modelado en base a MER de prueba en el proyecto del grupo 3 (CONFINUT) de ingenieria de software 2019-2.
 Scripter : Jose Astudillo Hernandez
*/




/* Tablas sin FK */


CREATE TABLE `cfncategoria` 
( `ID_Categoria` INT NOT NULL AUTO_INCREMENT , 
`Nombre` VARCHAR(20) NOT NULL , 
PRIMARY KEY (`ID_Categoria`)) ENGINE = InnoDB;

CREATE TABLE `cfntipoenvase` 
( `ID_TipoEnvase` INT NOT NULL AUTO_INCREMENT , 
`Tipo` VARCHAR(20) NOT NULL , 
PRIMARY KEY (`ID_TipoEnvase`)) ENGINE = InnoDB;

CREATE TABLE `cfntipousuario` 
( `ID_TipoUsuario` INT NOT NULL AUTO_INCREMENT , 
`NombreTipo` VARCHAR(20) NOT NULL , 
`Descripcion` VARCHAR(300) NULL, 
PRIMARY KEY (`ID_TipoUsuario`)) ENGINE = InnoDB;

CREATE TABLE `cfntipodespacho` 
( `ID_TipoDespacho` INT NOT NULL AUTO_INCREMENT , 
`NombreTipo` VARCHAR(20) NOT NULL , 
`Descripcion` VARCHAR(300) NULL , 
PRIMARY KEY (`ID_TipoDespacho`)) ENGINE = InnoDB;

/* Tablas con dependencia directa */


CREATE TABLE `cfndespacho` 
( `ID_Despacho` INT NOT NULL AUTO_INCREMENT , 
`Direccion` VARCHAR(300) NOT NULL ,
 FK_tipodespacho INT NOT NULL,
    CONSTRAINT fk_tipodespacho
    FOREIGN KEY (fk_tipodespacho) 
        REFERENCES CFNTipoDespacho(ID_Tipodespacho),
PRIMARY KEY (`ID_Despacho`)) ENGINE = InnoDB;

CREATE TABLE `cfnusuario` 
( `RUT` VARCHAR(13) NOT NULL , 
`Nombres` VARCHAR(30) NOT NULL , 
`Apellidos` VARCHAR(30) NOT NULL , 
`Telefono` VARCHAR(30) NULL , 
`Email` VARCHAR(254) NOT NULL , /* mails de max. largo 254 caracteres por norma ISO */
 FK_tipousuario INT NOT NULL,
    CONSTRAINT fk_tipousuario
    FOREIGN KEY (fk_tipousuario) 
        REFERENCES CFNTipoUsuario(ID_TipoUsuario),
PRIMARY KEY (`RUT`)) ENGINE = InnoDB;


/* Tablas con dependencia compleja */


CREATE TABLE `cfnproducto` 
( `ID_Producto` INT(13) NOT NULL AUTO_INCREMENT , 
`Nombre` VARCHAR(60) NOT NULL , `PrecioNeto` INT NOT NULL , 
`PrecioFormato` INT NULL ,
`Cantidad` INT NOT NULL ,
`PrecioMinorista` INT NULL , 
`PrecioMayorista` INT NULL ,
`Disponibilidad` VARCHAR(3) DEFAULT 'SI' , 
 FK_categoria INT NOT NULL,
    CONSTRAINT fk_categoria
    FOREIGN KEY (fk_categoria) 
        REFERENCES CFNCategoria(ID_Categoria),
 FK_tipoenvase INT NOT NULL,
    CONSTRAINT fk_tipoenvase
    FOREIGN KEY (fk_tipoenvase) 
        REFERENCES CFNTipoEnvase(ID_TipoEnvase),
PRIMARY KEY (`ID_Producto`)) ENGINE = InnoDB;


CREATE TABLE `cfnpedido` 
( `ID_Pedido` INT NOT NULL AUTO_INCREMENT , 
`Subtotal` INT NOT NULL , 
`Comentario` VARCHAR(300) NULL , 
`Fecha` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
FK_despacho INT NOT NULL,
    CONSTRAINT fk_despacho
    FOREIGN KEY (fk_despacho) 
        REFERENCES CFNDespacho(ID_despacho),
PRIMARY KEY (`ID_Pedido`)) ENGINE = InnoDB;

CREATE TABLE `cfncarritocompras` 
( `ID_CarritoCompras` INT NOT NULL AUTO_INCREMENT , 
`Detalle` VARCHAR(300) NULL ,
FK_Rut INT NOT NULL,
    CONSTRAINT fk_Rut
    FOREIGN KEY (fk_Rut) 
        REFERENCES CFNUsuario(RUT),
FK_Pedido INT NULL,
    CONSTRAINT fk_pedido
    FOREIGN KEY (fk_pedido) 
        REFERENCES CFNPedido(ID_Pedido),
PRIMARY KEY (`ID_CarritoCompras`)) ENGINE = InnoDB;


/* Tablas de relacion */


CREATE TABLE `cfncontiene`
(
FK_CarritoCompras INT NOT NULL,
    CONSTRAINT fk_CarritoCompras
    FOREIGN KEY (fk_CarritoCompras) 
        REFERENCES CFNCarritoCompras(ID_CarritoCompras),
FK_Producto INT NOT NULL,
    CONSTRAINT fk_producto
    FOREIGN KEY (fk_producto) 
        REFERENCES CFNProducto(ID_Producto),
PRIMARY KEY (FK_CarritoCompras, FK_Producto)
) ENGINE = InnoDB;




