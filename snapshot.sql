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
