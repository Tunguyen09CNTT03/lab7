select TENNV,LUONG,YEAR(GETDATE())-YEAR(NGSINH)as 'Tuoi' from NHANVIEN

create view f_TuoiNV
as
select TENNV,LUONG,YEAR(GETDATE())-YEAR(NGSINH)as 'Tuoi' from NHANVIEN


select * from f_TuoiNV
