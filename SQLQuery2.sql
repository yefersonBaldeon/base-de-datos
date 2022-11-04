alter database BancaVirtual2022a
add filegroup SECUNDARIO
GO
--CREACION DE ARCHIVO NDF
alter database BancaVirtual2022a
add file(name='BancaVirtual_Parte1',
filename='C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BancaVirtual_secundario2.ndf', size=10MB)
to filegroup SECUNDARIO
go
--consultar la bd
sp_helpdb BancaVirtual2022a
-- desvincular la bd
use master
go
sp_detach_db 'BancaVirtual2022a', 'true'
--vincular la bd
exec sp_attach_db 'BancaVirtual2022a'
,'G:\bd\BancaVirtual2022a.mdf'
,'G:\bd\BancaVirtual2022a_log.ldf'
,'G:\bd\BancaVirtual_secundario2.ndf'

--aplicando el snapshot
create database BancaVirtual_01ss on
(name =BancaVirtual2022a,filename='G:\ss\BancaVirtual_data_01ss.mdf')
,(name =BancaVirtual_Parte1,filename='G:\ss\BancaVirtual_secundario2_01ss.mdf')
as snapshot of BancaVirtual2022a;

use BancaVirtual2022a
select * from movimientos
delete movimientos

-- retornando a la bd oroginal desde el ss
use master
go
restore database BancaVirtual2022a from
database_snapshot = 'BancaVirtual_01ss';
go

--probando base de datos
--probando base de datos
