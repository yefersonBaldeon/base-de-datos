CREATE DATABASE BancaVirtual2022
GO

USE BancaVirtual2022
GO

CREATE TABLE clientes (
       cli_id               int IDENTITY(1,1) NOT NULL,
       cli_nombre           varchar(100) NULL,
       cli_telfijo          varchar(20) NULL,
       cli_telmovil         varchar(15) NULL,
       cli_ruc              varchar(11) NULL,
       cli_direccion        varchar(150) NULL,
       cli_claveacceso      varchar(4) NOT NULL,
       cli_clavedigital     varchar(6) NOT NULL,
       cli_email            varchar(50) NOT NULL
)
go


ALTER TABLE clientes
       ADD PRIMARY KEY (cli_id ASC)
go


CREATE TABLE cuentas (
       cta_id               int IDENTITY(1,1) NOT NULL,
	   cta_numero           char(12) NOT NULL,
       cta_codcta           char(5) NULL,
       cta_saldo            decimal(10,2) NULL,
       tcta_id              int NULL,
       tarj_id              int NULL
)
go


ALTER TABLE cuentas
       ADD PRIMARY KEY (cta_id ASC)
go


CREATE TABLE movimientos (
       mov_id               int IDENTITY(1,1) NOT NULL,
       mov_fecha            datetime NOT NULL,
       mov_salanterior      decimal(10,2) NULL,
       mov_salactual        decimal(10,2) NULL,
       mov_monto            decimal(10,2) NULL,
       tmov_id              int NOT NULL,
       cta_id               int NULL
)
go


ALTER TABLE movimientos
       ADD PRIMARY KEY (mov_id ASC)
go


CREATE TABLE tarjetas (
       tarj_id              int IDENTITY(1,1) NOT NULL,
       tarj_numero          varchar(16) NULL,
       tarj_descripcion     varchar(30) NULL,
       tarj_clave           char(4) NULL,
       cli_id               int NULL
)
go


ALTER TABLE tarjetas
       ADD PRIMARY KEY (tarj_id ASC)
go


CREATE TABLE tipo_cambio (
       tcbo_id              int IDENTITY(1,1) NOT NULL,
       tcbo_moneda          char(1) NULL,
       tcbo_compra          decimal(10,2) NULL,
       tcbo_venta           decimal(10,2) NULL
)
go


ALTER TABLE tipo_cambio
       ADD PRIMARY KEY (tcbo_id ASC)
go


CREATE TABLE tipo_cuentas (
       tcta_id              int IDENTITY(1,1) NOT NULL,
       tcta_descripcion     varchar(30) NOT NULL,
       tcta_moneda          char(1) NOT NULL
)
go


ALTER TABLE tipo_cuentas
       ADD PRIMARY KEY (tcta_id ASC)
go


CREATE TABLE tipo_movimientos (
       tmov_id              int IDENTITY(1,1) NOT NULL,
       tmov_descripcion     varchar(60) NULL
)
go


ALTER TABLE tipo_movimientos
       ADD PRIMARY KEY (tmov_id ASC)
go


CREATE TABLE usuarios (
       usu_id               int IDENTITY(1,1) NOT NULL,
       usu_nombres          varchar(50) NULL,
       usu_email            varchar(30) NULL,
       usu_clave            varchar(10) NULL,
       usu_estado           char(1) NULL
)
go


ALTER TABLE usuarios
       ADD PRIMARY KEY (usu_id ASC)
go


ALTER TABLE cuentas
       ADD FOREIGN KEY (tarj_id)
                             REFERENCES tarjetas  (tarj_id)
                             ON DELETE NO ACTION
                             ON UPDATE NO ACTION
go


ALTER TABLE cuentas
       ADD FOREIGN KEY (tcta_id)
                             REFERENCES tipo_cuentas  (tcta_id)
                             ON DELETE NO ACTION
                             ON UPDATE NO ACTION
go


ALTER TABLE movimientos
       ADD FOREIGN KEY (cta_id)
                             REFERENCES cuentas  (cta_id)
                             ON DELETE NO ACTION
                             ON UPDATE NO ACTION
go


ALTER TABLE movimientos
       ADD FOREIGN KEY (tmov_id)
                             REFERENCES tipo_movimientos  (tmov_id)
                             ON DELETE NO ACTION
                             ON UPDATE NO ACTION
go


ALTER TABLE tarjetas
       ADD FOREIGN KEY (cli_id)
                             REFERENCES clientes  (cli_id)
                             ON DELETE NO ACTION
                             ON UPDATE NO ACTION
go