------------------------------------------------------------------------------------------------------------------------
--- INSERCION DE DATA PARA LA BDBANCO ----------------------------------------------------------------------------------
use BancaVirtual2022
go

-- TABLA CLIENTES ------------------------------------------------------------------------------------------------------

INSERT INTO CLIENTES(cli_nombre,cli_telfijo,cli_telmovil,cli_ruc,cli_direccion,cli_claveacceso,cli_clavedigital,cli_email) 
VALUES ('LAURA MORENO LEE','3852478','','56325236234','Av. La Marina 1234','1234','123456','laura@gmail.com.pe');
INSERT INTO CLIENTES(cli_nombre,cli_telfijo,cli_telmovil,cli_ruc,cli_direccion,cli_claveacceso,cli_clavedigital,cli_email) 
VALUES ('ALEJANDRO MORENO','4819005','958364752','57896325487','Av. Pardo 456','1234','123456','alejandromoreno@gmail.com.pe');
INSERT INTO CLIENTES(cli_nombre,cli_telfijo,cli_telmovil,cli_ruc,cli_direccion,cli_claveacceso,cli_clavedigital,cli_email) 
VALUES ('CLAUDIA LEE','3578962','','10257800985','Av. Angamos 2547','1234','123456','claudia_lee@gmail.com.pe');
INSERT INTO CLIENTES(cli_nombre,cli_telfijo,cli_telmovil,cli_ruc,cli_direccion,cli_claveacceso,cli_clavedigital,cli_email) 
VALUES ('CASTAÑEDA BLAS','2578638','','10524788301','Av. España 354','1234','123456','castañeda-blas@gmail.com.pe');
INSERT INTO CLIENTES(cli_nombre,cli_telfijo,cli_telmovil,cli_ruc,cli_direccion,cli_claveacceso,cli_clavedigital,cli_email) 
VALUES ('PERCY OBANDO','5786320','','20045876582','Av. Faucett 2547','1234','123456','percyobrendo@gmail.com.pe');
INSERT INTO CLIENTES(cli_nombre,cli_telfijo,cli_telmovil,cli_ruc,cli_direccion,cli_claveacceso,cli_clavedigital,cli_email) 
VALUES ('MIGUEL NARVA','5753524','','20478534014','Jr. Callao 247','1234','123456','miguel-narva@gmail.com.pe');
INSERT INTO CLIENTES(cli_nombre,cli_telfijo,cli_telmovil,cli_ruc,cli_direccion,cli_claveacceso,cli_clavedigital,cli_email) 
VALUES ('MONICA GONZALES','3578502','','20450041785','Av. Panamá 2334','1234','123456','monica-gonza@gmail.com.pe');
INSERT INTO CLIENTES(cli_nombre,cli_telfijo,cli_telmovil,cli_ruc,cli_direccion,cli_claveacceso,cli_clavedigital,cli_email) 
VALUES ('JHON MORALES','4825735','','10250088534','Av. Tacna 2457','1234','123456','jhon-morales@gmail.com.pe');
INSERT INTO CLIENTES(cli_nombre,cli_telfijo,cli_telmovil,cli_ruc,cli_direccion,cli_claveacceso,cli_clavedigital,cli_email) 
VALUES ('MELISSA PAICO','3578465','','10258743578','Av. Arenales 1234','1234','123456','mpaico@gmail.com.pe');
INSERT INTO CLIENTES(cli_nombre,cli_telfijo,cli_telmovil,cli_ruc,cli_direccion,cli_claveacceso,cli_clavedigital,cli_email) 
VALUES ('MIGUEL RAMIREZ','3578524','','10582240535','Av. La Marina 3574','1234','123456','miguelramiro@gmail.com.pe');
go

select * from clientes
go

------------------------------------------------------------------------------------------------------------------
-- TIPO DE CUENTAS -----------------------------------------------------------------------------------------------

INSERT INTO tipo_cuentas(tcta_descripcion, tcta_moneda) VALUES('CTA AHORROS', 'S')
INSERT INTO tipo_cuentas(tcta_descripcion, tcta_moneda) VALUES('CTA AHORROS', 'D')
INSERT INTO tipo_cuentas(tcta_descripcion, tcta_moneda) VALUES('CTA CORRIENTE', 'S')
INSERT INTO tipo_cuentas(tcta_descripcion, tcta_moneda) VALUES('CTA CORRIENTE', 'D')
INSERT INTO tipo_cuentas(tcta_descripcion, tcta_moneda) VALUES('CTS', 'S')
INSERT INTO tipo_cuentas(tcta_descripcion, tcta_moneda) VALUES('CTS', 'D')
INSERT INTO tipo_cuentas(tcta_descripcion, tcta_moneda) VALUES('DEPOSITO A PLAZO FIJO', 'S')
INSERT INTO tipo_cuentas(tcta_descripcion, tcta_moneda) VALUES('DEPOSITO A PLAZO FIJO', 'D')
GO

SELECT * FROM TIPO_CUENTAS
GO

------------------------------------------------------------------------------------------------------------------
-- INSERTAR TARJETAS

INSERT INTO tarjetas(tarj_numero, tarj_descripcion, tarj_clave, cli_id)
VALUES('5248540105056382', 'CREDIMAS', '753', 1 )
INSERT INTO tarjetas(tarj_numero, tarj_descripcion, tarj_clave, cli_id)
VALUES('4213550355687431', 'DEBITO', '0315', 2 )
INSERT INTO tarjetas(tarj_numero, tarj_descripcion, tarj_clave, cli_id)
VALUES('4213550377896452', 'CREDIMAS', '8954', 3 )
INSERT INTO tarjetas(tarj_numero, tarj_descripcion, tarj_clave, cli_id)
VALUES('4752378933254774', 'DEBITO', '1234', 4 )
INSERT INTO tarjetas(tarj_numero, tarj_descripcion, tarj_clave, cli_id)
VALUES('2558744322566654', 'CREDIMAS', '4321', 5 )
INSERT INTO tarjetas(tarj_numero, tarj_descripcion, tarj_clave, cli_id)
VALUES('1475226854746332', 'DEBITO', '9512', 6 )
INSERT INTO tarjetas(tarj_numero, tarj_descripcion, tarj_clave, cli_id)
VALUES('2547896325412547', 'CREDIMAS', '9632', 7 )
INSERT INTO tarjetas(tarj_numero, tarj_descripcion, tarj_clave, cli_id)
VALUES('3742145874569852', 'DEBITO', '7412', 8 )
INSERT INTO tarjetas(tarj_numero, tarj_descripcion, tarj_clave, cli_id)
VALUES('5897462448553321', 'CREDIMAS', '7896', 9 )
INSERT INTO tarjetas(tarj_numero, tarj_descripcion, tarj_clave, cli_id)
VALUES('4520252102541189', 'DEBITO', '9874', 10 )
go

select * from tarjetas
go
------------------------------------------------------------------------------------------------------------------
-- INSERTAR CUENTAS ----------------------------------------------------------------------------------------------

INSERT INTO cuentas(cta_numero, cta_codCTA, cta_saldo, tcta_id, tarj_id) 
VALUES('191-10521-19', '12345', 1000, 1, 1)
INSERT INTO cuentas(cta_numero, cta_codCTA, cta_saldo, tcta_id, tarj_id) 
VALUES('191-12507-09', '98741', 1200, 2, 2)
INSERT INTO cuentas(cta_numero, cta_codCTA, cta_saldo, tcta_id, tarj_id) 
VALUES('191-18912-08', '96321', 350, 3, 3)
INSERT INTO cuentas(cta_numero, cta_codCTA, cta_saldo, tcta_id, tarj_id) 
VALUES('191-19395-02', '98753', 250, 4, 4)
INSERT INTO cuentas(cta_numero, cta_codCTA, cta_saldo, tcta_id, tarj_id) 
VALUES('192-13054-00', '35784', 370, 5, 5)
go

select * from cuentas

-------------------------------------------------------------------------------------------------------------------
-- INSERTAR TIPO_CAMBIO -------------------------------------------------------------------------------------------

INSERT INTO tipo_cambio(tcbo_moneda, tcbo_compra, tcbo_venta) VALUES('D', 3.74, 3.85)
GO

SELECT * FROM TIPO_CAMBIO

-------------------------------------------------------------------------------------------------------------------
-- INSERTAR USUARIOS ----------------------------------------------------------------------------------------------
INSERT INTO usuarios (usu_nombres, usu_email, usu_clave, usu_estado) VALUES('administrador', 'admin@bancavirtual.com', '12345', '1')
GO

SELECT * FROM USUARIOS
GO
--------------------------------------
--tipo movimiento
----------------------------------
insert into tipo_movimientos values('RETIRO POR CAJERO')
insert into tipo_movimientos values('INGRESO GANADO')
insert into tipo_movimientos values('COM. SALDO MINIMO')
insert into tipo_movimientos values('RETIRO POR CAJA OTRO BANCO')
insert into tipo_movimientos values('IMPUESTO ITF')
insert into tipo_movimientos values('TRANSLADO OTRA CUENTA')
insert into tipo_movimientos values('DEPOSITO POR VENTANILLA')
insert into tipo_movimientos values('TRANSFERENCIA BANCARIA (RETIRO)')
insert into tipo_movimientos values('TRANSFERENCIA BANCARIA (DEPOSITO)')

go
--------------------------------------
--movimientos
----------------------------------
insert into movimientos values('2020/04/01',2000,1500,500,1,1)
insert into movimientos values('2020/04/06',1500,1400,100,1,1)
insert into movimientos values('2020/04/08',1400,1310,90,1,1)
insert into movimientos values('2020/04/12',1310,1200,110,1,1)
insert into movimientos values('2010/04/04',1200,1000,200,1,1)
go
insert into movimientos values('2020/02/02',2000,1500,500,1,2)
insert into movimientos values('2020/03/07',1500,1400,100,1,2)
insert into movimientos values('2020/04/09',1400,1200,200,1,2)
go
insert into movimientos values('2020/04/01',1000,500,500,1,3)
insert into movimientos values('2020/04/06',500,400,100,1,3)
insert into movimientos values('2020/04/08',400,350,50,1,3)
go

insert into movimientos values('2020/03/01',1000,600,400,1,4)
insert into movimientos values('2020/04/06',600,300,300,1,4)
insert into movimientos values('2020/04/08',300,250,50,1,4)
go
insert into movimientos values('2020/03/01',1000,800,200,1,5)
insert into movimientos values('2020/04/06',800,600,200,1,5)
insert into movimientos values('2020/04/08',400,370,30,1,5)
select * from cuentas
go

--------------------------------------------------------------------------------------------------------------------
-- INSERTAR MOVIMIENTOS --------------------------------------------------------------------------------------------
--INSERT INTO MOVIMIENTOS (mov_fecha,mov_salanterior,mov_salactual,mov_monto, tmov_id, cta_id)
--VALUES ('1999-01-01',)

